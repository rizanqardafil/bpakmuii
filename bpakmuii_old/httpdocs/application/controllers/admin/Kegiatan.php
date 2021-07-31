<?php
  defined('BASEPATH') OR exit('No direct script access allowed');

  class Kegiatan extends CI_Controller {
      public function index(){

		$site     = $this->mConfig->list_config();
		$kegiatan = $this->mKegiatan->listKegiatan();

		$data = array(	'title'			=> 'Management Kegiatan - '.$site['namaweb'],
						'kegiatan'		=> $kegiatan,
						'site'			=> $site,
						'isi'			=> 'admin/kegiatan/list');
		$this->load->view('admin/layout/wrapper',$data);
	}

	// Create Kegiatan
	public function create() {

		$site = $this->mConfig->list_config();

		$v = $this->form_validation;
		$v->set_rules('judul','kegiatan name','required');

		if($v->run()) {

			$config['upload_path'] 		= './assets/upload/image/';
			$config['allowed_types'] 	= 'gif|jpg|jpeg|png';
			$config['max_size']			= '20480'; // KB
			$this->load->library('upload', $config);
			if(! $this->upload->do_upload('image')) {

		$data = array(	'title'			=> 'Create Kegiatan - '.$site['namaweb'],
						'site'			=> $site,
						'error'			=> $this->upload->display_errors(),
						'isi'			=> 'admin/kegiatan/create');
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
				$slugKegiatan = url_title($this->input->post('judul'), 'dash', TRUE);
				$data = array(	'slug_kegiatan'	=> $slugKegiatan,
								'judul'			=> $i->post('judul'),
								'sub_judul' 	=> $i->post('sub_judul'),
								'image'			=> $upload_data['uploads']['file_name']
				 			 );
				$this->mKegiatan->createKegiatan($data);
				$this->session->set_flashdata('sukses','Success');
				redirect(base_url('admin/Kegiatan'));
		}}
		// Default page
		$data = array(	'title'		=> 'Create Kegiatan- '.$site['namaweb'],
						'site'		=> $site,
						'isi'		=> 'admin/kegiatan/create');
		$this->load->view('admin/layout/wrapper',$data);
	}

	// Edit Kegiatan
	public function edit($id_Kegiatan) {

		$Kegiatan		= $this->mKegiatan->detailKegiatan($id_Kegiatan);
		$endKegiatan	= $this->mKegiatan->endKegiatan();

		// Validation
		$v = $this->form_validation;
		$v->set_rules('judul','Kegiatan Name','required');

		if($v->run()) {
			if(!empty($_FILES['image']['name'])) {
			$config['upload_path'] 		= './assets/upload/image/';
			$config['allowed_types'] 	= 'gif|jpg|jpeg|png|svg';
			$config['max_size']			= '20480'; // KB
			$this->load->library('upload', $config);
			if(! $this->upload->do_upload('image')) {

		$data = array(	'title'				=> 'Edit Kegiatan - '.$Kegiatan['judul'],
						'kegiatan'			=> $Kegiatan,
						'error'				=> $this->upload->display_errors(),
						'isi'				=> 'admin/Kegiatan/edit');
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

			unlink('./assets/upload/image/'.$Kegiatan['image']);
			unlink('./assets/upload/image/thumbs/'.$Kegiatan['image']);

			$slugKegiatan = $endKegiatan['id_kegiatan'].'-'.url_title($i->post('judul'),'dash', TRUE);
			$data = array(	'id_kegiatan'		=> $Kegiatan['id_kegiatan'],
							'slug_kegiatan'	=> $slugKegiatan,
							'judul'			=> $i->post('judul'),
							'sub_judul' 	=> $i->post('sub_judul'),
							'image'			=> $upload_data['uploads']['file_name']
							);
			$this->mKegiatan->editKegiatan($data);
			$this->session->set_flashdata('sukses','Success');
			redirect(base_url('admin/kegiatan'));
		}}else{
			$i = $this->input;
			$slugKegiatan = $endKegiatan['id_kegiatan'].'-'.url_title($i->post('judul'),'dash', TRUE);
			$data = array(	'id_kegiatan'	=> $Kegiatan['id_kegiatan'],
							'slug_kegiatan'	=> $slugKegiatan,
							'judul'			=> $i->post('judul'),
							'sub_judul' 	=> $i->post('sub_judul'),
							);
			$this->mKegiatan->editKegiatan($data);
			$this->session->set_flashdata('sukses','Success');
			redirect(base_url('admin/kegiatan'));
		}}

		$data = array(	'title'			=> 'Edit Kegiatan- '.$Kegiatan['judul'],
						'kegiatan'		=> $Kegiatan,
						'isi'			=> 'admin/kegiatan/edit');
		$this->load->view('admin/layout/wrapper', $data);
	}

	// Delete Kegiatan
	public function delete($id_kegiatan) {
		$data = array('id_kegiatan'	=> $id_kegiatan);
		$this->mKegiatan->deleteKegiatan($data);
		$this->session->set_flashdata('sukses','Success');
		redirect(base_url('admin/kegiatan'));
	}
}
