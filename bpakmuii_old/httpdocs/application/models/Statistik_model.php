<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Statistik_model extends CI_Model {
	
	public function __construct() {
		$this->load->database();
	}

	// Stat Admins
	public function user() {
		$query = $this->db->get('user');
		return $query->num_rows();	
	}

    // Stat Slider
	public function slider() {
		$query = $this->db->get('slider');
		return $query->num_rows();	
	}

	// Stat Industri Besar
	public function industri_besar() {
		$query = $this->db->get('industri_besar');
		return $query->num_rows();	
	}

    // Stat Industri Kecil
	public function industri_kecil() {
		$query = $this->db->get('industri_kecil');
		return $query->num_rows();	
	}
	
	// Stat Galeri Foto
	public function galeri_foto() {
		$query = $this->db->get('galeri_foto');
		return $query->num_rows();	
	}
	
	// Stat Galeri video
	public function galeri_video() {
		$query = $this->db->get('galeri_video');
		return $query->num_rows();	
	}
}