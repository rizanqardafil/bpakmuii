<?php

namespace App\Models;

use CodeIgniter\Model;
use App\Models\ConfigModel;
use NumberFormatter;

class ProdukModel extends Model
{
    protected $table = 'produk';
    protected $primaryKey = "id_produk";
    protected $useTimestamps = true;
    protected $allowedFields = ['nama_produk', 'slug_produk', 'detail_produk', 'path_gambar_cover'];
    protected $status = "TERSEDIA";


    public function getAllProduct($product_name = '', $slug_product = '', $order_by = '', $type_order = 'ASC', $limit = 0, $offset = 0)
    {
        $formatter = new NumberFormatter('id_ID',  NumberFormatter::CURRENCY);

        $builder = $this->db->table($this->table);
        $builder->select('produk.id_produk, nama_produk, slug_produk, detail_produk, path_gambar_cover');
        $builder->selectMin('paket.harga', 'harga_terendah');
        $builder->join('paket', 'produk.id_produk = paket.id_produk', 'left');
        $builder->groupBy('produk.id_produk');

        if ($order_by) {
            $builder->orderBy($order_by, $type_order);
        }

        if ($product_name) {
            $builder->like('produk.nama_produk', $product_name);
        }

        if ($slug_product) {
            $builder->where('produk.slug_produk', $slug_product);
        }

        $results = $builder->get($limit, $offset)->getResult();

        foreach ($results as $result) {
            $result->status = $this->status;

            $currency = $formatter->formatCurrency($result->harga_terendah, 'IDR');
            $currency = substr($currency, 0, strrpos($currency, ','));

            $result->harga_terendah = $currency;
        }

        return $results;
    }

    public function getPeminjaman($rent_date = null, $return_date = null)
    {
        if (!$rent_date) {
            $rent_date = date('Y-m-d');
            $return_date = date('Y-m-d');
        }

        $rent_date = date('Y-m-d', strtotime($rent_date));
        $return_date = date('Y-m-d', strtotime($return_date));

        $builder_pesanan = $this->db->table('pesanan');
        $builder_pesanan->select('pesanan.id_produk');
        $builder_pesanan->where('tanggal_pinjam <=', $rent_date);
        $builder_pesanan->where('tanggal_kembali >=', $rent_date);
        $builder_pesanan->groupBy('pesanan.id_produk');

        $pesanan = $builder_pesanan->get()->getResultArray();

        $id_produk = [];

        foreach ($pesanan as $pesanan) {
            $id_produk[] = $pesanan['id_produk'];
        }

        return $id_produk;
    }

    public function searchProduct($product_name = '', $rent_date = null, $return_date = null, $limit = 0, $offset = 0)
    {
        $id_produk_rent = $this->getPeminjaman($rent_date, $return_date);

        $products = $this->getAllProduct($product_name, '', '', 'ASC', $limit, $offset);

        foreach ($products as $product) {
            $product->status = $this->status;

            if (in_array($product->id_produk, $id_produk_rent)) {
                $product->status = "TIDAK TERSEDIA";
            }
        }

        return $products;
    }

    public function getPackage($slug_product = '')
    {
        $builder = $this->db->table($this->table);
        $builder->select('produk.id_produk, produk.slug_produk, paket.id_paket, paket.nama_paket, paket.slug_paket, paket.harga');
        $builder->join('paket', 'produk.id_produk = paket.id_produk', 'right');

        if ($slug_product) {
            $builder->where('produk.slug_produk', $slug_product);
        }

        $results = $builder->get()->getResult();

        return $results;
    }

    public function getAllImage($slug_product = '')
    {
        $builder = $this->db->table($this->table);
        $builder->select('produk.id_produk, produk.slug_produk, gambar_produk.id_gambar, 
                        gambar_produk.nama_gambar, gambar_produk.slug_gambar, gambar_produk.path_gambar');
        $builder->join('gambar_produk', 'produk.id_produk = gambar_produk.id_produk', 'right');

        if ($slug_product) {
            $builder->where('produk.slug_produk', $slug_product);
        }

        $results = $builder->get()->getResult();

        return $results;
    }

    public function getDetailProduct($slug_product = '')
    {
        $product = $this->getAllProduct('', $slug_product);
        $packages = $this->getPackage($slug_product);
        $product_images = $this->getAllImage($slug_product);

        // Get phone number from config
        $config = new ConfigModel();
        $config_result = $config->getConfig();
        $phone = $config_result[0]['telepon'];

        $ina_id = '62';

        if ($phone[0] === '0') {
            $phone = ltrim($phone, '0');
            $phone = $ina_id . $phone;
        }

        $all_detail_data = [
            'product'   => $product,
            'packages'  => $packages,
            'images'    => $product_images,
            'phone'     => $phone
        ];

        return $all_detail_data;
    }
}
