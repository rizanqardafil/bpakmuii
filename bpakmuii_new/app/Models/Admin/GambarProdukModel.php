<?php

namespace App\Models\Admin;

use CodeIgniter\Model;

class GambarProdukModel extends Model
{
    protected $table = 'gambar_produk';
    protected $primaryKey = "id_gambar";
    protected $useTimestamps = true;
    protected $allowedFields = ['nama_gambar', 'slug_gambar', 'path_gambar', 'id_produk'];
}
