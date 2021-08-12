<?php

namespace App\Controllers\Admin\Produk_Kami;

use App\Controllers\BaseController;

class Produk extends BaseController
{
    public function index()
    {
        $data = [
            'title' =>  'Management Produk - Badan Pengelola Aset KM UII'
        ];

        return view('admin/dashboard/produk_kami/produk/index', $data);
    }

    public function tambah()
    {
        $data = [
            'title' => 'Tambah Produk - Badan Pengelola Aset KM UII'
        ];

        return view('admin/dashboard/produk_kami/produk/tambah_produk', $data);
    }

    public function edit()
    {

        $data = [
            'title' => 'Edit Produk - ',
        ];

        return view('admin/dashboard/produk_kami/produk/edit_produk', $data);
    }
}
