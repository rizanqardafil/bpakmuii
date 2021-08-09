<?php

namespace App\Models\Admin;

use CodeIgniter\Model;

class PaketModel extends Model
{
    protected $table = 'paket';
    protected $primaryKey = "id_paket";
    protected $useTimestamps = true;
    protected $allowedFields = ['nama_paket', 'slug_paket', 'harga', 'id_produk'];
}
