<?php

namespace App\Models\Admin;

use CodeIgniter\Model;

class PaketModel extends Model
{
    protected $table = 'paket';
    protected $primaryKey = "id_paket";
    protected $useTimestamps = true;
    protected $allowedFields = ['nama_paket', 'slug_paket', 'harga', 'id_produk'];

    public function getAllPackage($slug_package = '')
    {
        if ($slug_package) {
            $package = $this->where('slug_paket', $slug_package)
                ->orderBy('created_at', 'DESC')
                ->first();

            return $package;
        }

        $package = $this->orderBy('created_at', 'DESC')
            ->findAll();

        return $package;
    }
}
