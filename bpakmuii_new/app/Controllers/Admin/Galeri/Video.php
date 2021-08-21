<?php

namespace App\Controllers\Admin\Galeri;

use App\Controllers\BaseController;

class Video extends BaseController
{
    public function index()
    {
        $data = [
            'title' =>  'Management Galeri Video - Badan Pengelola Aset KM UII'
        ];

        return view('admin/dashboard/galeri/video/index', $data);
    }

    public function tambah()
    {
        $data = [
            'title' => 'Tambah Galeri Video - Badan Pengelola Aset KM UII'
        ];

        return view('admin/dashboard/galeri/video/tambah_video', $data);
    }

    public function edit()
    {

        $data = [
            'title' => 'Edit Galeri Video - ',
        ];

        return view('admin/dashboard/galeri/foto/edit_video', $data);
    }
}
