<?php

namespace App\Controllers\Admin\Produk_Kami;

use App\Controllers\BaseController;
use App\Models\ProdukModel;

class Produk extends BaseController
{
    protected $produk_model;

    public function __construct()
    {
        $this->produk_model = new ProdukModel();
    }

    public function index()
    {
        $current_page = $this->request->getGet('page') ? $this->request->getGet('page') : 1;
        $per_page = 3;
        $offset = ($per_page * ($current_page - 1));

        $pager = service('pager');

        $prducts = $this->produk_model->getAllProduct('', '', 'produk.created_at', 'DESC', $per_page, $offset);
        $total = sizeof($this->produk_model->getAllProduct('', '', 'produk.created_at', 'DESC'));

        $data = [
            'title' =>  'Management Produk - Badan Pengelola Aset KM UII',
            'products'  => $prducts,
            'current_page'  => $current_page,
            'per_page'  => $per_page,
            'total' => $total,
            'pager' => $pager
        ];

        return view('admin/dashboard/produk_kami/produk/index', $data);
    }

    public function tambah()
    {
        $data = [
            'title' => 'Tambah Produk - Badan Pengelola Aset KM UII',
            'validation'    =>  \Config\Services::validation()
        ];

        return view('admin/dashboard/produk_kami/produk/tambah_produk', $data);
    }

    public function save()
    {
        $rules = [
            'nama_produk'   =>  [
                'rules' =>  'required|is_unique[produk.nama_produk]|min_length[3]|max_length[255]',
                'errors'    =>  $this->error_message
            ],
            'detail_produk' =>  [
                'rules' =>  'required|min_length[10]',
                'errors'    =>  $this->error_message
            ],
            'path_gambar_cover' =>  [
                'rules' =>  'uploaded[path_gambar_cover]|max_size[path_gambar_cover,1024]|is_image[path_gambar_cover]|mime_in[path_gambar_cover,image/jpg,image/jpeg,image/png]',
                'errors'    => $this->error_message
            ]
        ];

        if (!$this->validate($rules)) return redirect()->to(base_url('/admin/produk/tambah'))->withInput();

        $nama_produk = $this->request->getPost('nama_produk');
        $slug_produk = url_title($nama_produk, '-', true);
        $detail_produk = $this->request->getPost('detail_produk');
    }

    public function edit()
    {

        $data = [
            'title' => 'Edit Produk - ',
        ];

        return view('admin/dashboard/produk_kami/produk/edit_produk', $data);
    }
}
