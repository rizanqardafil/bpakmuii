<?php

namespace App\Controllers\Admin\Tentang;

use App\Controllers\BaseController;

class VisiMisi extends BaseController
{
    public function index()
    {
        $data = [
            'title' =>  'Visi Misi - Badan Pengelola Aset KM UII'
        ];

        return view('admin/dashboard/tentang/visi_misi/index', $data);
    }

    public function tambah()
    {
        $data = [
            'title' => 'Tambah Visi Misi - Badan Pengelola Aset KM UII'
        ];

        return view('admin/dashboard/tentang/visi_misi/tambah_visi_misi', $data);
    }

    public function edit()
    {

        $data = [
            'title' => 'Edit Visi Misi - Badan Pengelola Aset KM UII',
        ];

        return view('admin/dashboard/tentang/visi_misi/edit_visi_misi', $data);
    }
}
