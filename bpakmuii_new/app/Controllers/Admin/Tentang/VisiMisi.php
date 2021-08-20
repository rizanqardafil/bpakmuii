<?php

namespace App\Controllers\Admin\Tentang;

use App\Controllers\BaseController;

class VisiMisi extends BaseController
{
    public function index()
    {
        $data = [
            'title' =>  'Visi Misi - Badan Pengelola Aset KM UII'
        ];

        return view('admin/dashboard/tentang/visi_misi/index', $data);
    }

    
}
