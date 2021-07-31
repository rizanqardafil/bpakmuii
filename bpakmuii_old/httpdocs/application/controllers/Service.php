<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Service extends CI_Controller {

	public function index()
	{
		$data = array( 'title'	=> 'Service',
										'isi'	 => 'front/service/service');
		$this->load->view('front/layout/wrapper',$data);
	}
}
?>
