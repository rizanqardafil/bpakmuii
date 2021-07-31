<?php
  defined('BASEPATH') OR exit('No direct script access allowed');

  class Slider extends CI_Controller {
      public function index(){

		$site      = $this->mConfig->list_config();
		$slider = $this->mSlider->listSlider();

		$data = array(	'title'			=> 'Management Slider - '.$site['namaweb'],
						'slider'		=> $slider,
						'site'			=> $site,
						'isi'			=> 'admin/slider/list');
		$this->load->view('admin/layout/wrapper',$data);
	}

	// Create Gallery
	public function create() {

		$site = $this->mConfig->list_config();

		$v = $this->form_validation;
		$v->set_rules('judul','Slider Name','required');

		if($v->run()) {

			$config['upload_path'] 		= './assets/upload/image/';
			$config['allowed_types'] 	= 'gif|jpg|png';
			$config['max_size']			= '10240'; // KB
			$this->load->library('upload', $config);
			if(! $this->upload->do_upload('image')) {

		$data = array(	'title'			=> 'Create Slider - '.$site['namaweb'],
						'site'			=> $site,
						'error'			=> $this->upload->display_errors(),
						'isi'			=> 'admin/slider/create');
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
				$slugSlider = url_title($this->input->post('judul'), 'dash', TRUE);
				$data = array(	'slug_slider'	=> $slugSlider,
								'judul'			=> $i->post('judul'),
								'sub_judul' 	=> $i->post('sub_judul'),
								'image'			=> $upload_data['uploads']['file_name']
				 			 );
				$this->mSlider->createSlider($data);
				$this->session->set_flashdata('sukses','Success');
				redirect(base_url('admin/Slider'));
		}}
		// Default page
		$data = array(	'title'		=> 'Create Slider- '.$site['namaweb'],
						'site'		=> $site,
						'isi'		=> 'admin/slider/create');
		$this->load->view('admin/layout/wrapper',$data);
	}

	// Edit Slider
	public function edit($id_slider) {

		$slider		= $this->mSlider->detailSlider($id_slider);
		$endSlider	= $this->mSlider->endSlider();

		// Validation
		$v = $this->form_validation;
		$v->set_rules('judul','Slider Name','required');

		if($v->run()) {
			if(!empty($_FILES['image']['name'])) {
			$config['upload_path'] 		= './assets/upload/image/';
			$config['allowed_types'] 	= 'gif|jpg|png|svg';
			$config['max_size']			= '10240'; // KB
			$this->load->library('upload', $config);
			if(! $this->upload->do_upload('image')) {

		$data = array(	'title'				=> 'Edit Slider - '.$slider['judul'],
						'Slider'	=> $slider,
						'error'				=> $this->upload->display_errors(),
						'isi'				=> 'admin/slider/edit');
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

			unlink('./assets/upload/image/'.$slider['image']);
			unlink('./assets/upload/image/thumbs/'.$slider['image']);

			$slugSlider = $endSlider['id_slider'].'-'.url_title($i->post('judul'),'dash', TRUE);
			$data = array(	'id_slider'		=> $slider['id_slider'],
							'slug_Slider'	=> $slugSlider,
							'judul'			=> $i->post('judul'),
							'sub_judul' 	=> $i->post('sub_judul'),
							'image'			=> $upload_data['uploads']['file_name']
							);
			$this->mSlider->editSlider($data);
			$this->session->set_flashdata('sukses','Success');
			redirect(base_url('admin/Slider'));
		}}else{
			$i = $this->input;
			$slugSlider = $endSlider['id_slider'].'-'.url_title($i->post('judul'),'dash', TRUE);
			$data = array(	'id_slider'		=> $slider['id_slider'],
							'slug_Slider'	=> $slugSlider,
							'judul'			=> $i->post('judul'),
							'sub_judul' 	=> $i->post('sub_judul'),
							);
			$this->mSlider->editSlider($data);
			$this->session->set_flashdata('sukses','Success');
			redirect(base_url('admin/Slider'));
		}}

		$data = array(	'title'			=> 'Edit Slider- '.$slider['judul'],
						'slider'		=> $slider,
						'isi'			=> 'admin/slider/edit');
		$this->load->view('admin/layout/wrapper', $data);
	}

	// Delete Gallery
	public function delete($id_slider) {
		$data = array('id_slider'	=> $id_slider);
		$this->mSlider->deleteSlider($data);
		$this->session->set_flashdata('sukses','Success');
		redirect(base_url('admin/Slider'));
	}
}
