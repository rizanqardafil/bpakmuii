<?php

namespace App\Controllers\Admin;

use App\Controllers\BaseController;
use App\Models\Admin\UsersModel;

class Users extends BaseController
{
    protected $user_model;

    public function __construct()
    {
        $this->user_model = new UsersModel();
    }

    public function index()
    {
        helper('form');

        $data = [
            'title' => 'Manajemen Pengguna',
            'users' => $this->user_model->getUsers()
        ];

        return view('admin/dashboard/users/index', $data);
    }

    public function edit($slug)
    {
        $user = $this->user_model->getUsers('', $slug);

        $data = [
            'title' => 'Edit User - ' . $user['name'],
            'user' => $user
        ];

        return view('admin/dashboard/users/edit', $data);
    }
}
