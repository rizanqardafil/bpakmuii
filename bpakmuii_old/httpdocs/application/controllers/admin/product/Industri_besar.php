<?php
  defined('BASEPATH') OR exit('No direct script access allowed');

  class Industri_besar extends CI_Controller {
      public function index(){

		$site      = $this->mConfig->list_config();
		$IndustriBesar = $this->mProduk->listIndustriBesar();

		$data = array(	'title'			=> 'Produk - Industri Besar - '.$site['namaweb'],
						'idustri_besar'	=> $IndustriBesar,
						'site'			=> $site,
						'isi'			=> 'admin/product/industribesar/list');
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
						'isi'			=> 'admin/product/industribesar/create');
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
				$slugIndustriBesar = url_title($this->input->post('judul'), 'dash', TRUE);
				$data = array(	'slug_industri_besar'	=> $slugIndustriBesar,
								'judul'			=> $i->post('judul'),
								'deskripsi' 	=> $i->post('deskripsi'),
								'image'			=> $upload_data['uploads']['file_name']
				 			 );
				$this->mProduk->createIndustriBesar($data);
				$this->session->set_flashdata('sukses','Success');
				redirect(base_url('admin/product/industri_besar'));
		}}
		// Default page
		$data = array(	'title'		=> 'Create Gallery - '.$site['namaweb'],
						'site'		=> $site,
						'isi'		=> 'admin/product/industribesar/create');
		$this->load->view('admin/layout/wrapper',$data);
	}

	// Edit Gallery
	public function edit($id_industri_besar) {

		$IndustriBesar		= $this->mProduk->detailIndustriBesar($id_industri_besar);
		$endIndustriBesar	= $this->mProduk->endIndustriBesar();

		// Validation
		$v = $this->form_validation;
		$v->set_rules('judul','deskripsi','required');

		if($v->run()) {
			if(!empty($_FILES['image']['name'])) {
			$config['upload_path'] 		= './assets/upload/image/';
			$config['allowed_types'] 	= 'gif|jpg|png|svg';
			$config['max_size']			= '10240'; // KB
			$this->load->library('upload', $config);
			if(! $this->upload->do_upload('image')) {

		$data = array(	'title'				=> 'Edit Product - '.$IndustriBesar['judul'],
						'industri_besar'	=> $IndustriBesar,
						'error'				=> $this->upload->display_errors(),
						'isi'				=> 'admin/product/industribesar/edit');
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

			unlink('./assets/upload/image/'.$IndustriBesar['image']);
			unlink('./assets/upload/image/thumbs/'.$IndustriBesar['image']);

			$slugIndustriBesar = $endIndustriBesar['id_industri_besar'].'-'.url_title($i->post('judul'),'dash', TRUE);
			$data = array(	'id_industri_besar'		=> $IndustriBesar['id_industri_besar'],
							'slug_industri_besar'	=> $slugIndustriBesar,
							'judul'					=> $i->post('judul'),
							'deskripsi' 			=> $i->post('deskripsi'),
							'image'					=> $upload_data['uploads']['file_name']
							);
			$this->mProduk->editIndustriBesar($data);
			$this->session->set_flashdata('sukses','Success');
			redirect(base_url('admin/product/industri_besar'));
		}}else{
			$i = $this->input;
			$slugIndustriBesar = $endIndustriBesar['id_industri_besar'].'-'.url_title($i->post('judul'),'dash', TRUE);
			$data = array(	'id_industri_besar'		=> $IndustriBesar['id_industri_besar'],
							'slug_industri_besar'	=> $slugIndustriBesar,
							'judul'					=> $i->post('judul'),
							'deskripsi' 			=> $i->post('deskripsi'),
							);
			$this->mProduk->editIndustriBesar($data);
			$this->session->set_flashdata('sukses','Success');
			redirect(base_url('admin/product/industri_besar'));
		}}

		$data = array(	'title'				=> 'Edit Product - '.$IndustriBesar['judul'],
						'industri_besar'	=> $IndustriBesar,
						'isi'				=> 'admin/product/industribesar/edit');
		$this->load->view('admin/layout/wrapper', $data);
	}

	// Delete Gallery
	public function delete($id_industri_besar) {
		$data = array('id_industri_besar'	=> $id_industri_besar);
		$this->mProduk->deleteIndustriBesar($data);
		$this->session->set_flashdata('sukses','Success');
		redirect(base_url('admin/product/industri_besar'));
	}
}
