<?php

namespace App\Controllers\Admin\Investor;

use App\Controllers\BaseController;

class Organisasi extends BaseController
{
    public function index()
    {
        $data = [
            'title' =>  'Management Organisasi - Badan Pengelola Aset KM UII'
        ];

        return view('admin/dashboard/investor/organisasi/index', $data);
    }

    public function tambah()
    {
        $data = [
            'title' => 'Tambah Struktur Organisasi - Badan Pengelola Aset KM UII'
        ];

        return view('admin/dashboard/investor/organisasi/tambah_organisasi', $data);
    }

    public function edit()
    {

        $data = [
            'title' => 'Edit Struktur Organisasi - ',
        ];

        return view('admin/dashboard/investor/organisasi/edit_organisasi', $data);
    }
}
