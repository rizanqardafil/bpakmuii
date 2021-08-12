<?php

namespace App\Controllers\Admin\Produk_Kami;

use App\Controllers\BaseController;

class Pesanan extends BaseController
{
    public function index()
    {
        $data = [
            'title' =>  'Pesanan Produk - Badan Pengelola Aset KM UII'
        ];

        return view('admin/dashboard/produk_kami/pesanan/index', $data);
    }

    public function tambah()
    {
        $data = [
            'title' => 'Tambah Pesanan - Badan Pengelola Aset KM UII'
        ];

        return view('admin/dashboard/produk_kami/pesanan/tambah_pesanan', $data);
    }

    public function edit()
    {

        $data = [
            'title' => 'Edit Pesanan - ',
        ];

        return view('admin/dashboard/produk_kami/pesanan/edit_pesanan', $data);
    }

}
