<?php

namespace App\Models\Admin;

use CodeIgniter\Model;

class GambarLaporanModel extends Model
{
    protected $table = 'gambar_laporan';
    protected $primaryKey = "id_gambar";
    protected $useTimestamps = true;
    protected $allowedFields = ['nama_gambar', 'slug_gambar', 'path_gambar', 'id_laporan'];

    public function getImages($slug_gambar = '')
    {
        if ($slug_gambar) {
            $report_image = $this->where('slug_gambar', $slug_gambar)
                ->orderBy('created_at', 'DESC')
                ->first();

            return $report_image;
        }

        $report_images = $this->orderBy('created_at', 'DESC')
            ->findAll();

        return $report_images;
    }
}
