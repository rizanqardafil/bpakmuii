<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kontak extends CI_Controller {

	public function index()
	{
		$site  = $this->mConfig->list_config();
		$kontak = $this->mKontak->listKontak();
		$data = array( 'title'	=> 'Inbox - '.$site['namaweb'],
						'isi'	 => 'admin/kontak/list');
		$this->load->view('admin/layout/wrapper',$data);
	}

	// Delete Message
	public function delete($id_kontak) {
		$data = array('id_kontak'	=> $id_kontak);
		$this->mKontak->deleteMessage($data);
		$this->session->set_flashdata('sukses','Success');
		redirect(base_url('admin/kontak'));
	}
}
?>
