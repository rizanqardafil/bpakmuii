<?php

namespace App\Controllers\Admin\Tentang;

use App\Controllers\BaseController;

class Sejarah extends BaseController
{
    public function index()
    {
        $data = [
            'title' =>  'Sejarah - Badan Pengelola Aset KM UII'
        ];

        return view('admin/dashboard/tentang/sejarah/index', $data);
    }

    
}
