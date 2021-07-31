<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Contact extends CI_Controller {

	public function index()
	{
        $site  		= $this->mConfig->list_config();
		$data = array( 'title'	=> 'Home',
                      'active' => 'kontak',
                    'site'   => $site,
				       'isi'	=> 'front/contact/contact');
		$this->load->view('front/layout/wrapper',$data);
	}
	
	public function sendmessage() {

		// Validasi
		$valid = $this->form_validation;
		$valid->set_rules('name','Name','required');
		$valid->set_rules('email','Email','required');
		$valid->set_rules('subject','Subject','required');
		$valid->set_rules('message','Message','required');

		if($valid->run() === FALSE) {

		$this->load->view('front/contact/contact',$data);
		}else{

			$i = $this->input;

			$data = array(	'name'=> $i->post('name'),
							'email'	=> $i->post('email'),
							'subject'=> $i->post('subject'),
							'message'=> $i->post('message'),
						);
			$this->mContact->sendmmesage($data);
			$this->session->set_flashdata('sukses','pesan telah dikirim');
			redirect(base_url('contact'));
		}
	}
}
?>
