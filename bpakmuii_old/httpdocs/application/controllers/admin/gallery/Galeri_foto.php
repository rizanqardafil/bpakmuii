<?php
  defined('BASEPATH') OR exit('No direct script access allowed');

  class Galeri_foto extends CI_Controller {
      public function index(){

		$site      = $this->mConfig->list_config();
		$GaleriFoto = $this->mGaleri->listGaleriFoto();

		$data = array(	'title'			=> 'Management Galeri Foto - '.$site['namaweb'],
						'galeri_foto'	=> $GaleriFoto,
						'site'			=> $site,
						'isi'			=> 'admin/gallery/foto/list');
		$this->load->view('admin/layout/wrapper',$data);
	}

	// Create Gallery
	public function create() {

		$site = $this->mConfig->list_config();

		$v = $this->form_validation;
		$v->set_rules('judul','Galeri Name','required');

		if($v->run()) {

			$config['upload_path'] 		= './assets/upload/image/';
			$config['allowed_types'] 	= 'gif|jpg|png';
			$config['max_size']			= '10240'; // KB
			$this->load->library('upload', $config);
			if(! $this->upload->do_upload('image')) {

		$data = array(	'title'			=> 'Create Galeri Foto - '.$site['namaweb'],
						'site'			=> $site,
						'error'			=> $this->upload->display_errors(),
						'isi'			=> 'admin/gallery/foto/create');
		$this->load->view('admin/layout/wrapper',$data);
		}else{
				$upload_data				= array('uploads' =>$this->upload->data());
				$config['image_library']	= 'gd2';
				$config['source_image'] 	= './assets/upload/image/'.$upload_data['uploads']['file_name'];
				$config['new_image'] 		= './assets/upload/image/thumbs/';
				$config['create_thumb'] 	= TRUE;
				$config['maintain_ratio'] 	= TRUE;
				$config['width'] 			= 150; // Pixel
				$config['height'] 			= 150; // Pixel
				$config['thumb_marker'] 	= '';
				$this->load->library('image_lib', $config);
				$this->image_lib->resize();

				$i = $this->input;
				$slugGaleriFoto = url_title($this->input->post('judul'), 'dash', TRUE);
				$data = array(	'slug_galeri_foto'	=> $slugGaleriFoto,
								'judul'				=> $i->post('judul'),
								'image'				=> $upload_data['uploads']['file_name'],
								'kategori'			=> $i->post('kategori')
				 			 );
				$this->mGaleri->createGaleriFoto($data);
				$this->session->set_flashdata('sukses','Success');
				redirect(base_url('admin/gallery/Galeri_foto'));
		}}
		// Default page
		$data = array(	'title'		=> 'Create Gallery - '.$site['namaweb'],
						'site'		=> $site,
						'isi'		=> 'admin/gallery/foto/create');
		$this->load->view('admin/layout/wrapper',$data);
	}

	// Edit Gallery
	public function edit($id_galeri_foto) {

		$GaleriFoto		= $this->mGaleri->detailGaleriFoto($id_galeri_foto);
		$endGaleriFoto	= $this->mGaleri->endGaleriFoto();

		// Validation
		$v = $this->form_validation;
		$v->set_rules('judul','Galeri Name','required');

		if($v->run()) {
			if(!empty($_FILES['image']['name'])) {
			$config['upload_path'] 		= './assets/upload/image/';
			$config['allowed_types'] 	= 'gif|jpg|png|svg';
			$config['max_size']			= '1000'; // KB
			$this->load->library('upload', $config);
			if(! $this->upload->do_upload('image')) {

		$data = array(	'title'				=> 'Edit Galeri - '.$GaleriFoto['judul'],
						'Galeri_foto'	=> $GaleriFoto,
						'error'				=> $this->upload->display_errors(),
						'isi'				=> 'admin/gallery/foto/edit');
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

			unlink('./assets/upload/image/'.$GaleriFoto['image']);
			unlink('./assets/upload/image/thumbs/'.$GaleriFoto['image']);

			$slugGaleriFoto = $endGaleriFoto['id_galeri_foto'].'-'.url_title($i->post('judul'),'dash', TRUE);
			$data = array(	'id_galeri_foto'		=> $GaleriFoto['id_galeri_foto'],
							'slug_galeri_foto'		=> $slugGaleriFoto,
							'judul'					=> $i->post('judul'),
							'image'					=> $upload_data['uploads']['file_name'],
							'kategori'			    => $i->post('kategori')
							);
			$this->mGaleri->editGaleriFoto($data);
			$this->session->set_flashdata('sukses','Success');
			redirect(base_url('admin/gallery/galeri_foto'));
		}}else{
			$i = $this->input;
			$slugGaleriFoto = $endGaleriFoto['id_galeri_foto'].'-'.url_title($i->post('judul'),'dash', TRUE);
			$data = array(	'id_galeri_foto'		=> $GaleriFoto['id_galeri_foto'],
							'slug_galeri_foto'		=> $slugGaleriFoto,
							'judul'					=> $i->post('judul'),
							'kategori'				=> $i->post('kategori')
							);
			$this->mGaleri->editGaleriFoto($data);
			$this->session->set_flashdata('sukses','Success');
			redirect(base_url('admin/gallery/Galeri_foto'));
		}}

		$data = array(	'title'				=> 'Edit Galeri Foto- '.$GaleriFoto['judul'],
						'GaleriFoto'		=> $GaleriFoto,
						'isi'				=> 'admin/gallery/foto/edit');
		$this->load->view('admin/layout/wrapper', $data);
	}

	// Delete Gallery
	public function delete($id_galeri_foto) {
		$data = array('id_galeri_foto'	=> $id_galeri_foto);
		$this->mGaleri->deleteGaleriFoto($data);
		$this->session->set_flashdata('sukses','Success');
		redirect(base_url('admin/gallery/Galeri_foto'));
	}
}
