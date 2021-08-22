<?php

namespace App\Controllers\Admin\Artikel;

use App\Controllers\BaseController;
use App\Models\ArtikelModel;

class Artikel extends BaseController
{
    protected $artikel_model;

    public function __construct()
    {
        $this->artikel_model = new ArtikelModel();
    }

    public function index()
    {
        $data = [
            'title' =>  'Management Artikel - Badan Pengelola Aset KM UII',
            'articles'  => $this->artikel_model->getAllArtikel(),
        ];

        return view('admin/dashboard/artikel/artikel/index', $data);
    }

    public function tambah()
    {
        $data = [
            'title' => 'Tambah Artikel - Badan Pengelola Aset KM UII'
        ];

        return view('admin/dashboard/artikel/artikel/tambah_artikel', $data);
    }

    public function edit()
    {

        $data = [
            'title' => 'Edit Artikel - ',
        ];

        return view('admin/dashboard/artikel/artikel/edit_artikel', $data);
    }
}
