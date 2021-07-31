<?php
  defined('BASEPATH') OR exit('No direct script access allowed');

  class Data_user extends CI_Controller {

  	// Main Page user
  	public function index() {
      $data = array(	'title'		=> 'Management User',
      					'isi'		=> 'admin/user/list');

      $this->load->view('admin/layout/wrapper',$data);
    }

    //create user
	public function create_user() {

		$user	= $this->mUser->listuser();
		$site	= $this->mConfig->list_config();

		// Validasi
		$valid = $this->form_validation;
		$valid->set_rules('username','Username','required');
		$valid->set_rules('email','Email','required');
		$valid->set_rules('password','Password','required');

		if($valid->run() === FALSE) {

		$data = array(	'title'	=> 'Management user - '.$site['namaweb'],
						'user'	=> $user,
						'isi'	=> 'admin/user/create');
		$this->load->view('admin/layout/wrapper',$data);
		}else{

			$i = $this->input;

			$slug = url_title($this->input->post('username'), 'dash', TRUE);
			$data = array(	'slug_user'=> $slug,
							'username'	=> $i->post('username'),
							'password'	=> sha1($i->post('password')),
							'email'		=> $i->post('email'),
						);
			$this->mUser->createUser($data);
			$this->session->set_flashdata('sukses','user telah ditambah');
			redirect(base_url('admin/Data_user'));
		}
	}


	// Edit User user
	public function edit_user($id_user) {

		$user	= $this->mUser->detailuser($id_user);
		$site	= $this->mConfig->list_config();

		// Validasi
		$valid = $this->form_validation;
		$valid->set_rules('email','Email','required');

		if($valid->run() === FALSE) {

		$data = array(	'title'	=> 'Edit user - '.$user['username'],
						'user'	=> $user,
						'isi'	=> 'admin/user/edit');
		$this->load->view('admin/layout/wrapper',$data);
		}else{

			$i = $this->input;
			if($i->post('password') == true) {
			$data = array(	'id_user'	=> $user['id_user'],
							'email'		=> $i->post('email'),
						);
			}

			$data = array(	'id_user'	=> $user['id_user'],
							'password'	=> sha1($i->post('password')),
							'email'		=> $i->post('email'),
						);
			$this->mUser->edituser($data);
			$this->session->set_flashdata('sukses','Success');
			redirect(base_url('admin/Data_user'));
		}
	}

	// Delete user
	public function delete_user($id_user) {
		$data = array('id_user' => $id_user);
		$this->mUser->deleteuser($data);
		$this->session->set_flashdata('sukses','Success');
		redirect(base_url('admin/Data_user'));
	}
  }
