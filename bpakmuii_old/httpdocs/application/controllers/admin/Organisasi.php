<?php
  defined('BASEPATH') OR exit('No direct script access allowed');

  class Organisasi extends CI_Controller {
      public function index(){

		$site      = $this->mConfig->list_config();
		$organisasi  = $this->mOrganisasi->listOrganisasi();

		$data = array(	'title'			=> 'Management Organisasi - '.$site['namaweb'],
						'organisasi'		=> $organisasi,
						'site'			=> $site,
						'isi'			=> 'admin/organisasi/list');
		$this->load->view('admin/layout/wrapper',$data);
	}

	// Create Gallery
	public function create() {

		$site = $this->mConfig->list_config();

		$v = $this->form_validation;
		$v->set_rules('nama','jabatan','required');

		if($v->run()) {

			$config['upload_path'] 		= './assets/upload/image/';
			$config['allowed_types'] 	= 'gif|jpeg|jpg|png';
			$config['max_size']			= '500000'; // KB
			$this->load->library('upload', $config);
			if(! $this->upload->do_upload('image')) {

		$data = array(	'title'			=> 'Create organisasi - '.$site['namaweb'],
						'site'			=> $site,
						'error'			=> $this->upload->display_errors(),
						'isi'			=> 'admin/organisasi/create');
		$this->load->view('admin/layout/wrapper',$data);
		}else{
				$upload_data				= array('uploads' =>$this->upload->data());
				$config['image_library']	= 'gd2';
				$config['source_image'] 	= './assets/upload/image/'.$upload_data['uploads']['file_name'];
				$config['new_image'] 		= './assets/upload/image/thumbs/';
				$config['create_thumb'] 	= TRUE;
				$config['maintain_ratio'] 	= TRUE;
				$config['thumb_marker'] 	= '';
				$this->load->library('image_lib', $config);
				$this->image_lib->resize();

				$i = $this->input;
				$slugOrganisasi = url_title($this->input->post('nama'), 'dash', TRUE);
				$data = array(	'slug_organisasi'	=> $slugOrganisasi,
								'nama'			=> $i->post('nama'),
								'jabatan' 		=> $i->post('jabatan'),
                'pesan' 		=> $i->post('pesan'),
								'image'			=> $upload_data['uploads']['file_name']
				 			 );
				$this->mOrganisasi->createOrganisasi($data);
				$this->session->set_flashdata('sukses','Success');
				redirect(base_url('admin/organisasi'));
		}}
		// Default page
		$data = array(	'title'		=> 'Create Organisasi - '.$site['namaweb'],
						'site'		=> $site,
						'isi'		=> 'admin/organisasi/create');
		$this->load->view('admin/layout/wrapper',$data);
	}

	// Edit Organisasi
	public function edit($id_organisasi) {

		$organisasi		= $this->mOrganisasi->detailOrganisasi($id_organisasi);
		$endOrganisasi	= $this->mOrganisasi->endOrganisasi();

		// Validation
		$v = $this->form_validation;
		$v->set_rules('nama','jabatan','required');

		if($v->run()) {
			if(!empty($_FILES['image']['name'])) {
			$config['upload_path'] 		= './assets/upload/image/';
			$config['allowed_types'] 	= 'gif|jpeg|jpg|png|svg';
			$config['max_size']			= '500000'; // KB
			$this->load->library('upload', $config);
			if(! $this->upload->do_upload('image')) {

		$data = array(	'title'				=> 'Edit Galeri - '.$organisasi['nama'],
						'organisasi'			=> $organisasi,
						'error'				=> $this->upload->display_errors(),
						'isi'				=> 'admin/organisasi/edit');
		$this->load->view('admin/layout/wrapper', $data);
		}else{
				$upload_data				= array('uploads' =>$this->upload->data());
				$config['image_library']	= 'gd2';
				$config['source_image'] 	= './assets/upload/image/'.$upload_data['uploads']['file_name'];
				$config['new_image'] 		= './assets/upload/image/thumbs/';
				$config['create_thumb'] 	= TRUE;
				$config['quality'] 			= "100%";
				$config['maintain_ratio'] 	= FALSE;
				$config['x_axis'] 			= 0;
				$config['y_axis'] 			= 0;
				$config['thumb_marker'] 	= '';
				$this->load->library('image_lib', $config);
				$this->image_lib->resize();

			$i = $this->input;

			unlink('./assets/upload/image/'.$organisasi['image']);

			$slugOrganisasi = $endOrganisasi['id_organisasi'].'-'.url_title($i->post('nama'),'dash', TRUE);
			$data = array(	'id_organisasi'		=> $organisasi['id_organisasi'],
							'slug_organisasi'		=> $slugOrganisasi,
							'nama'				=> $i->post('nama'),
							'jabatan'			=> $i->post('jabatan'),
              'pesan' 		=> $i->post('pesan'),
							'image'				=> $upload_data['uploads']['file_name']
							);
			$this->mOrganisasi->editOrganisasi($data);
			$this->session->set_flashdata('sukses','Success');
			redirect(base_url('admin/organisasi'));
		}}else{
			$i = $this->input;
			$slugOrganisasi = $endOrganisasi['id_organisasi'].'-'.url_title($i->post('nama'),'dash', TRUE);
			$data = array(	'id_organisasi'		=> $organisasi['id_organisasi'],
							'slug_organisasi'		=> $slugOrganisasi,
							'nama'				=> $i->post('nama'),
							'jabatan'			=> $i->post('jabatan'),
              'pesan' 		=> $i->post('pesan'),
							);
			$this->mOrganisasi->editOrganisasi($data);
			$this->session->set_flashdata('sukses','Success');
			redirect(base_url('admin/organisasi'));
		}}

		$data = array(	'title'			=> 'Edit Organisasi- '.$organisasi['nama'],
		'id_organisasi'		=> $organisasi['id_organisasi'],
						'organisasi'		=> $organisasi,
						'isi'			=> 'admin/organisasi/edit');
		$this->load->view('admin/layout/wrapper', $data);
	}

	// Delete Gallery
	public function delete($id_organisasi) {
		$data = array('id_organisasi'	=> $id_organisasi);
		$this->mOrganisasi->deleteOrganisasi($data);
		$this->session->set_flashdata('sukses','Success');
		redirect(base_url('admin/organisasi'));
	}
}
