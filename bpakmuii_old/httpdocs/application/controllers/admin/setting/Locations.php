<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Locations extends CI_Controller {

  // Main Page
  public function index() {
      $data = array(	'title'	=> 'General Settings',
      'isi'	=> 'admin/setting/locations');

      $this->load->view('admin/layout/wrapper',$data);
    }
  }
