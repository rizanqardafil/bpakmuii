<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

  // Main Page
  public function index() {
    $data = array(	'title'		=> 'Dashboard',
    'industribesar'	=> $this->mStats->industri_besar(), 
    'industrikecil'	=> $this->mStats->industri_kecil(), 
    'galerifoto'	=> $this->mStats->galeri_foto(), 
    'galerivideo'	=> $this->mStats->galeri_video(), 
    'slider'	=> $this->mStats->slider(), 
    'user'	=> $this->mStats->user(), 
    'isi'		=> 'admin/dashboard/list');

    $this->load->view('admin/layout/wrapper',$data);
  }
}
?>
