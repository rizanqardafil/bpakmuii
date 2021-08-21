<?php

namespace App\Controllers\Admin\Tentang;

use App\Controllers\BaseController;
use App\Models\Admin\VisiMisiModel;

class VisiMisi extends BaseController
{
    protected $visi_misi_model;

    public function __construct()
    {
        $this->visi_misi_model = new VisiMisiModel();
    }

    public function index()
    {
        $data = [
            'title' =>  'Visi Misi - Badan Pengelola Aset KM UII',
            'visi_misi'   => $this->visi_misi_model->getVisiMisi(),
            'validation'    => \Config\Services::validation()
        ];

        return view('admin/dashboard/tentang/visi_misi/index', $data);
    }

    public function save()
    {
        $slug_visi_misi = $this->request->getPost('slug_visi_misi');
        $visi_misi = $this->visi_misi_model->getVisiMisi($slug_visi_misi);

        $rules = [
            'isi_visi' =>  [
                'rules' =>  'required|min_length[10]',
                'errors'    =>  $this->error_message
            ],
            'isi_misi' =>  [
                'rules' =>  'required|min_length[10]',
                'errors'    =>  $this->error_message
            ],
            'path_gambar_visi' =>  [
                'rules' =>  'max_size[path_gambar_visi,1024]|is_image[path_gambar_visi]|mime_in[path_gambar_visi,image/jpg,image/jpeg,image/png]',
                'errors'    => $this->error_message
            ],
            'path_gambar_misi' =>  [
                'rules' =>  'max_size[path_gambar_misi,1024]|is_image[path_gambar_misi]|mime_in[path_gambar_misi,image/jpg,image/jpeg,image/png]',
                'errors'    => $this->error_message
            ]
        ];

        if (!$this->validate($rules)) return redirect()->to(base_url('admin/tentang-kami'))->withInput();

        $isi_visi = $this->request->getPost('isi_visi');
        $isi_misi = $this->request->getPost('isi_misi');

        $files_visi = $this->request->getFile('path_gambar_visi');
        $image_old_visi = $this->request->getPost('path_gambar_visi');
        $path_gambar_visi = $visi_misi['path_gambar_visi'];

        if ($files_visi->getError() !== 4) {
            $image_name = substr($files_visi->getName(), 0, strrpos($files_visi->getName(), '.'));
            $path_gambar_visi = $image_name . '_' . $files_visi->getRandomName();

            $files_visi->move('uploaded/images/', $path_gambar_visi);

            (is_file('uploaded/images/' . $image_old_visi) && $image_old_visi !== 'default.png') ? unlink('uploaded/images/' . $image_old_visi) : '';
        }

        $files_misi = $this->request->getFile('path_gambar_misi');
        $image_old_misi = $this->request->getPost('path_gambar_misi');
        $path_gambar_misi = $visi_misi['path_gambar_misi'];

        if ($files_misi->getError() !== 4) {
            $image_name = substr($files_misi->getName(), 0, strrpos($files_misi->getName(), '.'));
            $path_gambar_misi = $image_name . '_' . $files_misi->getRandomName();

            $files_misi->move('uploaded/images/', $path_gambar_misi);

            (is_file('uploaded/images/' . $image_old_misi) && $image_old_misi !== 'default.png') ? unlink('uploaded/images/' . $image_old_misi) : '';
        }

        $data = [
            'isi_visi'     => $isi_visi,
            'isi_misi'     => $isi_misi,
            'path_gambar_visi' => $path_gambar_visi,
            'path_gambar_misi' => $path_gambar_misi,
        ];

        $this->visi_misi_model->update($visi_misi['id_visi_misi'], $data);

        session()->setFlashdata('success', 'Berhasil Mengubah Visi Misi');

        return redirect()->to(base_url('admin/tentang-kami'));
    }
}
