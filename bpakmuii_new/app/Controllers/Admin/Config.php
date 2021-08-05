<?php

namespace App\Controllers\Admin;

use App\Controllers\BaseController;

class Config extends BaseController
{
    public function index()
    {
        $data = [
            'title' =>  'General Settings - Badan Pengelola Aset KM UII'
        ];

        return view('admin/dashboard/settings/config', $data);
    }

    public function icon_config()
    {
        $data = [
            'title' =>  'Config Icon'
        ];
        return view('admin/dashboard/settings/icon-config', $data);
    }

    public function logo_config()
    {
        $data = [
            'title' =>  'Logo Icon'
        ];
        return view('admin/dashboard/settings/logo-config', $data);
    }
}
