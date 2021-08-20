<?php

namespace App\Controllers\Admin\Galeri;

use App\Controllers\BaseController;

class Foto extends BaseController
{
    public function index()
    {
        $data = [
            'title' =>  'Management Galeri Foto - Badan Pengelola Aset KM UII'
        ];

        return view('admin/dashboard/galeri/foto/index', $data);
    }

    public function tambah()
    {
        $data = [
            'title' => 'Tambah Galeri Foto - Badan Pengelola Aset KM UII'
        ];

        return view('admin/dashboard/galeri/foto/tambah_foto', $data);
    }

    public function edit()
    {

        $data = [
            'title' => 'Edit Galeri Foto - ',
        ];

        return view('admin/dashboard/galeri/foto/edit_foto', $data);
    }
}
