<?php

namespace App\Controllers\Admin\Kegiatan_Kami;

use App\Controllers\BaseController;

class Kegiatan extends BaseController
{

    public function index()
    {
        $data = [
            'title' =>  'Management Kegiatan - Badan Pengelola Aset KM UII'
        ];

        return view('admin/dashboard/kegiatan_kami/kegiatan/index', $data);
    }


    public function tambah()
    {
        $data = [
            'title' => 'Tambah Kegiatan - Badan Pengelola Aset KM UII'
        ];

        return view('admin/dashboard/kegiatan_kami/kegiatan/tambah_kegiatan', $data);
    }
    

    public function edit()
    {
        $data = [
            'title' => "Edit Kegiatan - "
        ];

        return view('admin/dashboard/kegiatan_kami/kegiatan/edit_kegiatan', $data);
    }

    
}
