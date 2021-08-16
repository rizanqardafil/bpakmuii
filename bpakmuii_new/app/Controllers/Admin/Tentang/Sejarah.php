<?php

namespace App\Controllers\Admin\Tentang;

use App\Controllers\BaseController;

class Sejarah extends BaseController
{
    public function index()
    {
        $data = [
            'title' =>  'Sejarah - Badan Pengelola Aset KM UII'
        ];

        return view('admin/dashboard/tentang/sejarah/index', $data);
    }

    public function tambah()
    {
        $data = [
            'title' => 'Tambah Sejarah - Badan Pengelola Aset KM UII'
        ];

        return view('admin/dashboard/tentang/sejarah/tambah_sejarah', $data);
    }

    public function edit()
    {

        $data = [
            'title' => 'Edit Sejarah - Badan Pengelola Aset KM UII',
        ];

        return view('admin/dashboard/tentang/sejarah/edit_sejarah', $data);
    }
}
