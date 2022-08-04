<?php

namespace App\Controllers\Admin\Produk_Kami;

use App\Controllers\BaseController;
use App\Models\Admin\SliderModel;


class Slider extends BaseController
{
    protected $slider_model;


    public function __construct()
    {
        $this->slider_model = new SliderModel();

    }

    public function index()
    {
        $org_slider = $this->slider_model->getSlider();
        $data = [
            'title' =>  'Slider - Badan Pengelola Aset KM UII',
            'validation'    => \Config\Services::validation(),
            'org_slider'  => $org_slider,
            'config'    => $this->config->getConfig()
        ];

         return view('admin/dashboard/produk_kami/slider/index', $data);
    }

    public function tambah()
    {
       
        $data = [
            'title' => 'Tambah Slider - Badan Pengelola Aset KM UII',
            'validation'    => \Config\Services::validation(),
            'config'    => $this->config->getConfig()
        ];

        return view('admin/dashboard/produk_kami/slider/tambah', $data);
    }

    public function save()
    {
       if (!$this->request->getVar('csrf_test_name')) {
            session()->setFlashdata('message', 'File gambar kegiatan kami terlalu besar dan melebihi kapasitas server. Silahkan upload file < 8 MB');
            return redirect()->back()->withInput();
        }

        $rules = [
            'nama' => [
                'rules'     =>  'required|min_length[3]|max_length[255]',
                'errors'    =>  $this->error_message
            ],
            'link' => [
                'rules' =>  'required|regex_match[/https:\/\//]',
                'errors'    => $this->error_message
            ],
            'image' => [
                'rules' =>  'uploaded[image]|max_size[image,8024]|is_image[image]|mime_in[image,image/jpg,image/jpeg,image/png]',
                'errors'    => $this->error_message
            ]
        ];

        if (!$this->validate($rules)) return redirect()->to(base_url('/admin/slider/tambah'))->withInput();
        

        $nama = $this->request->getPost('nama');
        $slug_slider = url_title($nama, '-', true);
        $link = $this->request->getPost('link');
        
        $files = $this->request->getFile('image');
        $image_name = substr($files->getName(), 0, strrpos($files->getName(), '.'));
        $image = $image_name . '_' . $files->getRandomName();

        if ($files->getSize() > 1000000) {
            $this->image_compression($files, 'uploaded/images/', $image);
        } else {
            $files->move('uploaded/images/', $image);
        }

        $data = [
            'nama' => $nama,
            'slug_slider' => $slug_slider,
            'link' => $link,
            'image' => $image
        ];

        $this->slider_model->save($data);
        session()->setFlashdata('success', 'Berhasil Menambahkan Team Baru');
        return redirect()->to(base_url('admin/slider'));
    }

    public function update()
    {
        $slug_slider = $this->request->getPost('slug_slider');
        $nama = $this->request->getPost('nama');
        $activity_slider = $this->slider_model->getSlider($slug_slider);

        $nama_rules = 'required|min_length[3]|max_length[255]';

        ($nama !== $activity_slider['nama']) ? $nama_rules .= '|is_unique[slider.nama]' :  '';

        $rules = [

            'nama'   =>  [
                'rules' =>  $nama_rules,
                'errors'    =>  $this->error_message
            ],
            'link' =>  [
                'rules' =>  'required|regex_match[/https:\/\//]',
                'errors'    => $this->error_message
            ],
            'image' =>  [
                'rules' =>  'max_size[image,8024]|is_image[image]|mime_in[image,image/jpg,image/jpeg,image/png]',
                'errors'    => $this->error_message
            ]
        ];

        if (!$this->validate($rules)) return redirect()->to(base_url('/admin/slider/edit/' . $slug_slider))->withInput();


        $nama = $this->request->getPost('nama');
        $slug_slider = url_title($nama, '-', true);
        $link = $this->request->getPost('link');

        $files = $this->request->getFile('image');
        $image_old = $this->request->getPost('image');
        $image = $activity_slider['image'];

        if ($files->getError() !== 4) {
            $image_name = substr($files->getName(), 0, strrpos($files->getName(), '.'));
            $image = $image_name . '_' . $files->getRandomName();

            if ($files->getSize() > 1000000) {
                $this->image_compression($files, 'uploaded/images/', $image);
            } else {
                $files->move('uploaded/images/', $image);
            }

            // $files->move('uploaded/images/', $image);

            (is_file('uploaded/images/' . $image_old) && $image_old !== 'default.png') ? unlink('uploaded/images/' . $image_old) : '';
        }

        $data = [
            'nama'     => $nama,
            'slug_slider' => $slug_slider,
            'link'    => $link,
            'image' => $image
        ];

        $this->slider_model->update($activity_slider['id_slider'], $data);

        session()->setFlashdata('success', 'Berhasil Mengubah Kegiatan');

        return redirect()->to(base_url('admin/slider'));
    }

    public function edit($slug_slider)
    {
        $activity_slider = $this->slider_model->getSlider($slug_slider);

        $data = [
            'title' => "Edit Slider - " . $activity_slider['nama'],
            'activity_slider'  => $activity_slider,
            'config'    => $this->config->getConfig(),
            'validation'    => \Config\Services::validation()
        ];

         return view('admin/dashboard/produk_kami/slider/edit', $data);
    }

    public function delete($id_slider)
    {
        $activity_slider = $this->slider_model->find($id_slider);

        
         try {
            $this->slider_model->delete($id_slider);
        } catch (\Exception $e) {
            $message = 'Data berkaitan dengan <b>' . $activity_slider['nama'];
            session()->setFlashdata('message', $message);

            return redirect()->to(base_url('admin/slider'));
        }

        if (is_file('uploaded/images/' . $activity_slider['image']) && $activity_slider['image'] !== 'default.png') {
            unlink('uploaded/images/' . $activity_slider['image']);
        }

        session()->setFlashdata('success', 'Berhasil Menghapus Produk');

        return redirect()->to(base_url('admin/slider'));
        
    }
}
?>