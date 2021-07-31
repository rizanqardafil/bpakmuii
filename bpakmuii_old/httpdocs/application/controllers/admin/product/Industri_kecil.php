<?php
  defined('BASEPATH') OR exit('No direct script access allowed');

  class Industri_kecil extends CI_Controller {
      public function index(){

		$site      = $this->mConfig->list_config();
		$IndustriKecil = $this->mProduk->listIndustriKecil();

		$data = array(	'title'			=> 'Produk - Industri Kecil - '.$site['namaweb'],
						'idustri_kecil'	=> $IndustriKecil,
						'site'			=> $site,
						'isi'			=> 'admin/product/industrikecil/list');
		$this->load->view('admin/layout/wrapper',$data);
	}

	// Create Product
	public function create() {

		$site = $this->mConfig->list_config();

		$v = $this->form_validation;
		$v->set_rules('judul','deskripsi','required');

		if($v->run()) {

			$config['upload_path'] 		= './assets/upload/image/';
			$config['allowed_types'] 	= 'gif|jpg|png';
			$config['max_size']			= '10240'; // KB
			$this->load->library('upload', $config);
			if(! $this->upload->do_upload('image')) {

		$data = array(	'title'			=> 'Create Product - '.$site['namaweb'],
						'site'			=> $site,
						'error'			=> $this->upload->display_errors(),
						'isi'			=> 'admin/product/industrikecil/create');
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
				$slugIndustriKecil = url_title($this->input->post('judul'), 'dash', TRUE);
				$data = array(	'slug_industri_kecil'	=> $slugIndustriKecil,
								'judul'			=> $i->post('judul'),
								'deskripsi' 	=> $i->post('deskripsi'),
								'image'			=> $upload_data['uploads']['file_name']
				 			 );
				$this->mProduk->createIndustriKecil($data);
				$this->session->set_flashdata('sukses','Success');
				redirect(base_url('admin/product/industri_kecil'));
		}}
		// Default page
		$data = array(	'title'		=> 'Create Gallery - '.$site['namaweb'],
						'site'		=> $site,
						'isi'		=> 'admin/product/industrikecil/create');
		$this->load->view('admin/layout/wrapper',$data);
	}

	// Edit Gallery
	public function edit($id_industri_kecil) {

		$IndustriKecil		= $this->mProduk->detailIndustriKecil($id_industri_kecil);
		$endIndustriKecil	= $this->mProduk->endIndustriKecil();

		// Validation
		$v = $this->form_validation;
		$v->set_rules('judul','Product Name','required');

		if($v->run()) {
			if(!empty($_FILES['image']['name'])) {
			$config['upload_path'] 		= './assets/upload/image/';
			$config['allowed_types'] 	= 'gif|jpg|png|svg';
			$config['max_size']			= '10240'; // KB
			$this->load->library('upload', $config);
			if(! $this->upload->do_upload('image')) {

		$data = array(	'title'				=> 'Edit Product - '.$IndustriKecil['judul'],
						'industri_kecil'	=> $IndustriKecil,
						'error'				=> $this->upload->display_errors(),
						'isi'				=> 'admin/product/industrikecil/edit');
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

			unlink('./assets/upload/image/'.$IndustriKecil['image']);
			unlink('./assets/upload/image/thumbs/'.$IndustriKecil['image']);

			$slugIndustriKecil = $endIndustriKecil['id_industri_kecil'].'-'.url_title($i->post('judul'),'dash', TRUE);
			$data = array(	'id_industri_kecil'		=> $IndustriKecil['id_industri_kecil'],
							'slug_industri_kecil'	=> $slugIndustriKecil,
							'judul'					=> $i->post('judul'),
							'deskripsi' 			=> $i->post('deskripsi'),
							'image'					=> $upload_data['uploads']['file_name']
							);
			$this->mProduk->editIndustriKecil($data);
			$this->session->set_flashdata('sukses','Success');
			redirect(base_url('admin/product/industri_kecil'));
		}}else{
			$i = $this->input;
			$slugIndustriKecil = $endIndustriKecil['id_industri_kecil'].'-'.url_title($i->post('judul'),'dash', TRUE);
			$data = array(	'id_industri_kecil'		=> $IndustriKecil['id_industri_kecil'],
							'slug_industri_kecil'	=> $slugIndustriKecil,
							'judul'					=> $i->post('judul'),
							'deskripsi' 			=> $i->post('deskripsi'),
							);
			$this->mProduk->editIndustriKecil($data);
			$this->session->set_flashdata('sukses','Success');
			redirect(base_url('admin/product/industri_kecil'));
		}}

		$data = array(	'title'				=> 'Edit Product - '.$IndustriKecil['judul'],
						'industri_kecil'	=> $IndustriKecil,
						'isi'				=> 'admin/product/industrikecil/edit');
		$this->load->view('admin/layout/wrapper', $data);
	}

	// Delete Gallery
	public function delete($id_industri_kecil) {
		$data = array('id_industri_kecil'	=> $id_industri_kecil);
		$this->mProduk->deleteIndustriKecil($data);
		$this->session->set_flashdata('sukses','Success');
		redirect(base_url('admin/product/industri_kecil'));
	}
}
