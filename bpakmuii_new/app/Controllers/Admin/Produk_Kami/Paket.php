<?php

namespace App\Controllers\Admin\Produk_Kami;

use App\Controllers\BaseController;

class Paket extends BaseController
{
    public function index()
    {
        $data = [
            'title' =>  'Paket Produk - Badan Pengelola Aset KM UII'
        ];

        return view('admin/dashboard/produk_kami/paket/index', $data);
    }

    public function tambah()
    {
        $data = [
            'title' => 'Tambah Paket - Badan Pengelola Aset KM UII'
        ];

        return view('admin/dashboard/produk_kami/paket/tambah_paket', $data);
    }

    public function edit()
    {

        $data = [
            'title' => 'Edit Paket - ',
        ];

        return view('admin/dashboard/produk_kami/paket/edit_paket', $data);
    }
}
