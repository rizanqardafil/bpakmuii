<?php

namespace App\Controllers\Admin\Galeri;

use App\Controllers\BaseController;

class Album extends BaseController
{
    public function index()
    {
        $data = [
            'title' =>  'Management Album - Badan Pengelola Aset KM UII'
        ];

        return view('admin/dashboard/galeri/album/index', $data);
    }

    public function tambah()
    {
        $data = [
            'title' => 'Tambah Album - Badan Pengelola Aset KM UII'
        ];

        return view('admin/dashboard/galeri/album/tambah_album', $data);
    }

    public function edit()
    {

        $data = [
            'title' => 'Edit Album - ',
        ];

        return view('admin/dashboard/galeri/foto/edit_album', $data);
    }
}
