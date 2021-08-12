<?php

namespace App\Controllers\Admin\Investor;

use App\Controllers\BaseController;

class Laporan extends BaseController
{
    public function index()
    {
        $data = [
            'title' =>  'Management Laporan Pertanggung Jawaban - Badan Pengelola Aset KM UII'
        ];

        return view('admin/dashboard/investor/laporan/index', $data);
    }

    public function tambah()
    {
        $data = [
            'title' => 'Tambah Laporan Pertanggung Jawaban - Badan Pengelola Aset KM UII'
        ];

        return view('admin/dashboard/investor/laporan/tambah_laporan', $data);
    }

    public function edit()
    {

        $data = [
            'title' => 'Edit Laporan Pertanggung Jawaban - ',
        ];

        return view('admin/dashboard/investor/laporan/edit_laporan', $data);
    }
}
