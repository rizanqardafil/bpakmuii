<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Logo extends CI_Controller {

	public function  __construct()
	  {
	     parent::__construct();
	     $this->load->library('form_validation');
	     $this->load->helper('form');
	  }

  // Main Page
	public function index() {
		$site = $this->mConfig->list_config();

		$v = $this->form_validation;
		$v->set_rules('id_config','ID Config','required');

		if($v->run()) {

			$config['upload_path'] 		= './assets/upload/image/';
			$config['allowed_types'] 	= 'gif|jpg|png';
			$config['max_size']			= '10000'; // KB
			$this->load->library('upload', $config);
			if(! $this->upload->do_upload('logo')) {

		$data = array(	'title'	=> 'Config Logo - '.$site['namaweb'],
						'site'	=> $site,
						'error'	=> $this->upload->display_errors(),
						'isi'	=> 'admin/setting/logo');
		$this->load->view('admin/layout/wrapper',$data);
		}else{
				$upload_data				= array('uploads' =>$this->upload->data());
				// Image Editor
				$config['image_library']	= 'gd2';
				$config['source_image'] 	= './assets/upload/image/'.$upload_data['uploads']['file_name'];
				$config['new_image'] 		= './assets/upload/image/thumbs/';
				$config['create_thumb'] 	= TRUE;
				$config['maintain_ratio'] 	= TRUE;
				$config['width'] 			= 166; // Pixel
				$config['height'] 			= 120; // Pixel
				$config['thumb_marker'] 	= '';
				$this->load->library('image_lib', $config);
				$this->image_lib->resize();
				// Hapus gambar lama
				unlink('./assets/upload/image/'.$site['logo']);
				unlink('./assets/upload/image/thumbs/'.$site['logo']);
				// End hapus gambar lama
				// Masuk ke database
				$i = $this->input;
				$data = array(	'id_config'		=> $i->post('id_config'),
								'logo'			=> $upload_data['uploads']['file_name']
							);
				$this->mConfig->edit_config($data);
				$this->session->set_flashdata('sukses','Konfigurasi Telah Diupdate');
				redirect(base_url('admin/setting/logo'));
		}}
		// Default page
		$data = array(	'title'	=> 'Config Logo',
						'site'	=> $site,
						'isi'	=> 'admin/setting/logo');
		$this->load->view('admin/layout/wrapper',$data);
	}
}
?>
