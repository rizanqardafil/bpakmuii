<?php

namespace App\Models\Admin;

use CodeIgniter\Model;

class PesananModel extends Model
{
    protected $table = 'pesanan';
    protected $primaryKey = "id_pesanan";
    protected $useTimestamps = true;
    protected $allowedFields = ['tanggal_pinjam', 'tanggal_kembali', 'id_produk'];

    public function getOrders($id_pesanan = 0)
    {
        if ($id_pesanan) {
            $order = $this->where('id_pesanan', $id_pesanan)
                ->orderBy('created_at', 'DESC')
                ->first();

            return $order;
        }

        $orders = $this->orderBy('created_at', 'DESC')
            ->findAll();

        return $orders;
    }
}
