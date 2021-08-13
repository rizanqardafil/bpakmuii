<?php

namespace App\Controllers\Admin\Produk_Kami;

use App\Controllers\BaseController;

class Gambar extends BaseController
{
    public function index()
    {
        $data = [
            'title' =>  'Gambar Produk - Badan Pengelola Aset KM UII'
        ];

        return view('admin/dashboard/produk_kami/gambar_produk/index', $data);
    }

    public function tambah()
    {
        $data = [
            'title' => 'Tambah Gambar Produk - Badan Pengelola Aset KM UII'
        ];

        return view('admin/dashboard/produk_kami/gambar_produk/tambah_gambar', $data);
    }

    public function edit()
    {

        $data = [
            'title' => 'Edit Gambar - ',
        ];

        return view('admin/dashboard/produk_kami/gambar_produk/edit_gambar', $data);
    }

}
