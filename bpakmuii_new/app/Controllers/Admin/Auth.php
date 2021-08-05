<?php

namespace App\Controllers\Admin;

use App\Controllers\BaseController;
use App\Models\Admin\UsersModel;

class Auth extends BaseController
{
    protected $user_model;
    protected $session;

    public function __construct()
    {
        $this->user_model = new UsersModel();
        $this->session = session();
    }

    public function index()
    {
        $data = [
            'title' => 'Login Administrator | BPA KM UII'
        ];

        return view('admin/auth/login', $data);
    }

    public function dashboard()
    {
        $data = [
            'title' => 'Dashboard'
        ];

        return view('admin/dashboard/index', $data);
    }

    public function save()
    {
        //include helper form
        helper(['form']);

        //set rules validation form
        $rules = [
            'name'          => 'required|min_length[3]|max_length[20]',
            'username'      => 'required|min_length[3]|max_length[50]|is_unique[users.username]',
            'email'         => 'required|min_length[6]|max_length[50]|valid_email|is_unique[users.email]',
            'password'      => 'required|min_length[6]|max_length[200]',
            'repeat_password'  => 'matches[password]'
        ];

        if ($this->validate($rules)) {
            $username = strtolower($this->request->getPost('username'));
            $username = str_replace(" ", "", $username);

            $user_name = $this->request->getPost('name');
            $slug = url_title($user_name, '-', true);

            $data = [
                'name'     => $user_name,
                'username' => $username,
                'email'    => $this->request->getPost('email'),
                'password' => password_hash($this->request->getPost('password'), PASSWORD_BCRYPT)
            ];
            $this->user_model->save($data);

            $data = $this->user_model->where('username', $username)->first();
            $slug = (string)$data['id_user'] . '-' . $slug;

            $this->user_model->update($data['id_user'], ["slug_user" => $slug]);

            session()->setFlashdata('success', 'Berhasil Menambahkan Admin');

            return redirect()->to(base_url('admin/users'));
        } else {
            session()->setFlashdata('message', $this->validator->listErrors());
            return redirect()->to(base_url('admin/users'));
        }
    }

    public function update($slug)
    {
        $user = $this->user_model->getUsers('', $slug);
        $email = $this->request->getPost('email');
        $password = $this->request->getPost('password');
        $repeat_password = $this->request->getPost('repeat_password');

        $rules = [
            'name'          => 'required|min_length[3]|max_length[20]',
            'email'         => 'required|min_length[6]|max_length[50]|valid_email',
        ];

        if ($email !== $user['email']) {
            $rules['email'] = $rules['email'] . '|is_unique[users.email]';
        }

        if ($password || $repeat_password) {
            $rules['password'] = 'required|min_length[6]|max_length[200]';
            $rules['repeat_password'] = 'matches[password]';
        }

        if ($this->validate($rules)) {
            $user_name = $this->request->getPost('name');

            $slug = url_title($user_name, '-', true);
            $slug = (string)$user['id_user'] . '-' . $slug;

            $data = [
                'name'     => $user_name,
                'slug_user' => $slug,
                'email'    => $this->request->getPost('email'),
            ];

            if ($password) {
                $data['password'] = password_hash($this->request->getPost('password'), PASSWORD_BCRYPT);
            }

            $this->user_model->update($user['id_user'], $data);

            session()->setFlashdata('success', 'Berhasil Mengubah Admin');

            return redirect()->to(base_url('admin/users'));
        } else {
            session()->setFlashdata('message', $this->validator->listErrors());
            return redirect()->to(base_url("admin/users/$slug"));
        }
    }

    public function delete()
    {
        $id = $this->request->getPost('id_user');

        if (!$id) {
            session()->setFlashdata('message', "Admin tidak terdaftar");
            return redirect()->to(base_url('admin/users'));
        }

        $this->user_model->delete($id);
        session()->setFlashdata('success', "Admin berhasil dihapus");
        return redirect()->to(base_url('admin/users'));
    }

    public function auth()
    {
        $username = $this->request->getPost('username');
        $password = $this->request->getPost('password');

        $data = $this->user_model->getUsers($username);

        if (!$data) {
            $this->session->setFlashdata('message', 'Username tidak ditemukan');
            return redirect()->to(base_url('/admin/login'));
        }

        $pass = $data['password'];
        $verify_pass = password_verify($password, $pass);

        if (!$verify_pass) {
            $this->session->setFlashdata('message', 'Password salah');
            return redirect()->to(base_url('/admin/login'));
        }

        $ses_data = [
            'user_id'       => $data['id_user'],
            'username'     => $data['username'],
            'user_email'    => $data['email'],
            'logged_in'     => TRUE
        ];

        $this->session->set($ses_data);
        return redirect()->to(base_url('/admin/dashboard'));
    }

    public function logout()
    {
        $this->session->destroy();
        return redirect()->to(base_url('/admin/logout'));
    }
}
