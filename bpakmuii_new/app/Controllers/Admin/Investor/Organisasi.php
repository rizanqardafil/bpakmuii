<?php

namespace App\Controllers\Admin\Investor;

use App\Controllers\BaseController;
use App\Models\Admin\OrganisasiModel;

class Organisasi extends BaseController
{
    protected $organisasi_model;

    public function __construct()
    {
        $this->organisasi_model = new OrganisasiModel();
    }

    public function index()
    {
        $org = $this->organisasi_model->getOrganizations();

        $data = [
            'title' =>  'Manajemen Organisasi - Badan Pengelola Aset KM UII',
            'org'   => $org,
            'config'    => $this->config->getConfig(),
            'validation'    => \Config\Services::validation()
        ];

        return view('admin/dashboard/investor/organisasi/index', $data);
    }

    public function save()
    {
        $slug_organisasi = $this->request->getPost('slug_organisasi');
        $org = $this->organisasi_model->getOrganizations($slug_organisasi);

        $rules = [
            'nama'   =>  [
                'rules' =>  'required|min_length[3]|max_length[255]',
                'errors'    =>  $this->error_message
            ],
            'keterangan' =>  [
                'rules' =>  'required|min_length[10]|max_length[1650]',
                'errors'    =>  $this->error_message
            ],
            'image' =>  [
                'rules' =>  'max_size[image,1024]|is_image[image]|mime_in[image,image/jpg,image/jpeg,image/png]',
                'errors'    => $this->error_message
            ]
        ];

        if (!$this->validate($rules)) return redirect()->to(base_url('/admin/organisasi'))->withInput();

        $nama = $this->request->getPost('nama');
        $keterangan = $this->request->getPost('keterangan');
        $slug_organisasi = url_title($nama, '-', true);

        $files = $this->request->getFile('image');
        $image_old = $this->request->getPost('image');
        $image = $org['image'];

        if ($files->getError() !== 4) {
            $image_name = substr($files->getName(), 0, strrpos($files->getName(), '.'));
            $image = $image_name . '_' . $files->getRandomName();

            $files->move('uploaded/images/', $image);

            (is_file('uploaded/images/' . $image_old) && $image_old !== 'default.png') ? unlink('uploaded/images/' . $image_old) : '';
        }

        $slug_organisasi = url_title($nama, '-', true);

        $data = [
            'nama'     => $nama,
            'slug_organisasi' => $slug_organisasi,
            'image' => $image,
            'keterangan' => $keterangan
        ];

        $this->organisasi_model->update($org['id_organisasi'], $data);

        session()->setFlashdata('success', 'Berhasil Mengubah Organisasi');

        return redirect()->to(base_url('admin/organisasi'));
    }
}
