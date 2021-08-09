<?php

namespace App\Models\Admin;

use CodeIgniter\Model;

class PesananModel extends Model
{
    protected $table = 'pesanan';
    protected $primaryKey = "id_pesanan";
    protected $useTimestamps = true;
    protected $allowedFields = ['tanggal_pinjam', 'tanggal_kembali', 'id_produk'];
}
