<?php
  defined('BASEPATH') OR exit('No direct script access allowed');

  class Visi_misi extends CI_Controller {

	public function  __construct()
	  {
	     parent::__construct();
	     $this->load->library('form_validation');
	     $this->load->helper('form');
	  }

  	// Main Page
	public function index() {

		$site = $this->mConfig->list_config();
		$visimisi = $this->mTentangKami->listvisimisi();

		$v = $this->form_validation;
		$v->set_rules('deskripsi','deskripsi','required');

		if($v->run()) {
			if(!empty($_FILES['image']['name'])) {
			$config['upload_path'] 		= './assets/upload/image/';
			$config['allowed_types'] 	= 'gif|jpg|jpeg|png|svg';
			$config['max_size']			= '20480'; // KB
			$this->load->library('upload', $config);
			if(! $this->upload->do_upload('image')) {

			$data = array(	'title'		=> 'Edit Visi Misi - '.$site['namaweb'],
						'visimisi'	=> $visimisi,
						'error'		=> $this->upload->display_errors(),
						'isi'		=> 'admin/about/visi_misi');
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

				unlink('./assets/upload/image/'.$visimisi['image']);
				unlink('./assets/upload/image/thumbs/'.$visimisi['image']);

				$slugvisimisi = 'visi-misi';
				$data = array(	'id_visi_misi'		=> $visimisi['id_visi_misi'],
								'slug_visi_misi'	=> $slugvisimisi,
								'image'					=> $upload_data['uploads']['file_name'],
								'deskripsi'				=> $i->post('deskripsi'),
								);
				$this->mTentangKami->editvisimisi($data);
				$this->session->set_flashdata('sukses','Success');
				redirect(base_url('admin/about/visi_misi'));
		}}else{
			$i = $this->input;
			$slugvisimisi = 'visi-misi';
			$data = array(		'id_visi_misi'		=> $visimisi['id_visi_misi'],
								'slug_visi_misi'	=> $slugvisimisi,
								'deskripsi'			=> $i->post('deskripsi'),
								);
			$this->mTentangKami->editvisimisi($data);
			$this->session->set_flashdata('sukses','Success');
			redirect(base_url('admin/about/visi_misi'));
		}}

		$data = array(	'title'		=> 'Edit Visi Misi - '.$site['namaweb'],
						'visimisi'	=> $visimisi,
						'isi'		=> 'admin/about/visi_misi');
		$this->load->view('admin/layout/wrapper', $data);
	}

  }
?>
