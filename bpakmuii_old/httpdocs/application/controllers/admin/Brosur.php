<?php
  defined('BASEPATH') OR exit('No direct script access allowed');

  class Brosur extends CI_Controller {

  	// Main Page Users
  	public function index() {
      $data = array(	'title'		=> 'Brosur',
      'isi'		=> 'admin/brosur');

      $this->load->view('admin/layout/wrapper',$data);
    }
  }
