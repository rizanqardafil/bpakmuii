<?php

namespace App\Controllers\Admin\Artikel;

use App\Controllers\BaseController;

class Penulis extends BaseController
{
    public function index()
    {
        $data = [
            'title' =>  'Management Penulis Artikel - Badan Pengelola Aset KM UII'
        ];

        return view('admin/dashboard/artikel/penulis/index', $data);
    }

    public function tambah()
    {
        $data = [
            'title' => 'Tambah Penulis Artikel - Badan Pengelola Aset KM UII'
        ];

        return view('admin/dashboard/artikel/penulis/tambah_penulis', $data);
    }

    public function edit()
    {

        $data = [
            'title' => 'Edit Penulis Artikel - ',
        ];

        return view('admin/dashboard/artikel/penulis/edit_penulis', $data);
    }
}
