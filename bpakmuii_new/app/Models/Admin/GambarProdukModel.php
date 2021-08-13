<?php

namespace App\Models\Admin;

use CodeIgniter\Model;

class GambarProdukModel extends Model
{
    protected $table = 'gambar_produk';
    protected $primaryKey = "id_gambar";
    protected $useTimestamps = true;
    protected $allowedFields = ['nama_gambar', 'slug_gambar', 'path_gambar', 'id_produk'];


    public function getImages($slug_gambar = '')
    {
        if ($slug_gambar) {
            $order = $this->where('slug_gambar', $slug_gambar)
                ->orderBy('created_at', 'DESC')
                ->first();

            return $order;
        }

        $orders = $this->orderBy('created_at', 'DESC')
            ->findAll();

        return $orders;
    }
}
