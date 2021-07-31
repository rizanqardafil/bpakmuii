<?php
  defined('BASEPATH') OR exit('No direct script access allowed');

  class Sekilas_perusahaan extends CI_Controller {

	public function  __construct()
	  {
	     parent::__construct();
	     $this->load->library('form_validation');
	     $this->load->helper('form');
	  }

  	// Main Page
	public function index() {

		$site = $this->mConfig->list_config();
		$sekilasperusahaan = $this->mTentangKami->listSekilasPerusahaan();

		$v = $this->form_validation;
		$v->set_rules('deskripsi','deskripsi','required');

		if($v->run()) {
			if(!empty($_FILES['image']['name'])) {
			$config['upload_path'] 		= './assets/upload/image/';
			$config['allowed_types'] 	= 'gif|jpg|png|svg';
			$config['max_size']			= '10000'; // KB
			$this->load->library('upload', $config);
			if(! $this->upload->do_upload('image')) {

			$data = array(	'title'				=> 'Edit Sekilas Profil - '.$site['namaweb'],
							'sekilasperusahaan'	=> $sekilasperusahaan,
							'error'				=> $this->upload->display_errors(),
							'isi'				=> 'admin/about/sekilas_perusahaan');
			$this->load->view('admin/layout/wrapper', $data);
			}else{
					$upload_data				= array('uploads' =>$this->upload->data());
					$config['image_library']	= 'gd2';
					$config['source_image'] 	= './assets/upload/image/'.$upload_data['uploads']['file_name'];
					$config['new_image'] 		= './assets/upload/image/thumbs/';
					$config['create_thumb'] 	= TRUE;
					$config['quality'] 			= "100%";
					$config['maintain_ratio'] 	= FALSE;
					$config['width'] 			= 360; // Pixel
					$config['height'] 			= 200; // Pixel
					$config['x_axis'] 			= 0;
					$config['y_axis'] 			= 0;
					$config['thumb_marker'] 	= '';
					$this->load->library('image_lib', $config);
					$this->image_lib->resize();

				$i = $this->input;

				unlink('./assets/upload/image/'.$sekilasperusahaan['image']);
				unlink('./assets/upload/image/thumbs/'.$sekilasperusahaan['image']);

				$slugSekilasPerusahaan = 'sekilas-perusahaan';
				$data = array(	'id_sekilas_perusahaan'		=> $sekilasperusahaan['id_sekilas_perusahaan'],
								'slug_sekilas_perusahaan'	=> $slugSekilasPerusahaan,
								'image'						=> $upload_data['uploads']['file_name'],
								'deskripsi'					=> $i->post('deskripsi'),
								);
				$this->mTentangKami->editSekilasPerusahaan($data);
				$this->session->set_flashdata('sukses','Success');
				redirect(base_url('admin/about/sekilas_perusahaan'));
		}}else{
			$i = $this->input;
			$slugSekilasPerusahaan = 'sekilas-perusahaan';
			$data = array(		'id_sekilas_perusahaan'		=> $sekilasperusahaan['id_sekilas_perusahaan'],
								'slug_sekilas_perusahaan'	=> $slugSekilasPerusahaan,
								'deskripsi'					=> $i->post('deskripsi'),
								);
			$this->mTentangKami->editSekilasPerusahaan($data);
			$this->session->set_flashdata('sukses','Success');
			redirect(base_url('admin/about/sekilas_perusahaan'));
		}}

		$data = array(	'title'				=> 'Edit Sekilas Profil - '.$site['namaweb'],
						'sekilasperusahaan'	=> $sekilasperusahaan,
						'isi'				=> 'admin/about/sekilas_perusahaan');
		$this->load->view('admin/layout/wrapper', $data);
	}

  }
?>
