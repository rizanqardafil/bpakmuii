<?php

namespace App\Controllers\Admin\Investor;

use App\Controllers\BaseController;

class Organisasi extends BaseController
{
    public function index()
    {
        $data = [
            'title' =>  'Management Organisasi - Badan Pengelola Aset KM UII'
        ];

        return view('admin/dashboard/investor/organisasi/index', $data);
    }
}
