<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Config extends CI_Controller {

	public function  __construct()
	  {
	     parent::__construct();
	     $this->load->library('form_validation');
	     $this->load->helper('form');
	  }

  // Main Page
	public function index() {
		$site = $this->mConfig->list_config();

		$this->form_validation->set_rules('namaweb','Nama website','required');

		if($this->form_validation->run() === FALSE) {

		$data = array(	'title'	=> 'General Settings - '.$site['namaweb'],
						'site'	=> $site,
						'isi'	=> 'admin/setting/config');
		$this->load->view('admin/layout/wrapper',$data);
		}else{
			$i = $this->input;
			$data = array(	'id_config'	=> $i->post('id_config'),
							'namaweb'	=> $i->post('namaweb'),
							'email'		=> $i->post('email'),
							'keyword'	=> $i->post('keyword'),
							'metatext'	=> $i->post('metatext'),
							'telepon'	=> $i->post('telepon'),
						);
			$this->mConfig->edit_config($data);
			$this->session->set_flashdata('sukses','Konfigurasi telah diupdate');
			redirect(base_url('admin/setting/config'));
		}
	}
}
