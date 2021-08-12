<?php

namespace App\Controllers\Admin\Investor;

use App\Controllers\BaseController;

class Gambar extends BaseController
{
    public function index()
    {
        $data = [
            'title' =>  'Management Gambar Laporan - Badan Pengelola Aset KM UII'
        ];

        return view('admin/dashboard/investor/gambar_laporan/index', $data);
    }

    public function tambah()
    {
        $data = [
            'title' => 'Tambah Gambar Laporan - Badan Pengelola Aset KM UII'
        ];

        return view('admin/dashboard/investor/gambar_laporan/tambah_gambar', $data);
    }

    public function edit()
    {

        $data = [
            'title' => 'Edit Gambar Laporan - ',
        ];

        return view('admin/dashboard/investor/gambar_laporan/edit_gambar', $data);
    }
}
