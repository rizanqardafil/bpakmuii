<?php
  defined('BASEPATH') OR exit('No direct script access allowed');

  class Galeri_kategori extends CI_Controller {
      public function index(){

		$site      = $this->mConfig->list_config();
		$GaleriKategori = $this->mGaleri->listGaleriKategori();

		$data = array(	'title'			=> 'Management Kategori Galeri- '.$site['namaweb'],
						'GaleriKategori'	=> $GaleriKategori,
						'site'			=> $site,
						'isi'			=> 'admin/gallery/kategori/list');
		$this->load->view('admin/layout/wrapper',$data);
	}

	// Create Gallery
	public function create() {

		$site = $this->mConfig->list_config();

		$v = $this->form_validation;
		$v->set_rules('nama_kategori','Nama kategori','required');

		if($v->run()) {

		$data = array(	'title'			=> 'Create Galeri kategori - '.$site['namaweb'],
						'site'			=> $site,
						'isi'			=> 'admin/gallery/kategori/create');
		$this->load->view('admin/layout/wrapper',$data);

				$i = $this->input;
				$slugGaleriKategori = url_title($this->input->post('nama_kategori'), 'dash', TRUE);
				$data = array(	'slug_galeri_kategori'	=> $slugGaleriKategori,
								'nama_kategori'			=> $i->post('nama_kategori')
				 			 );
				$this->mGaleri->createGaleriKategori($data);
				$this->session->set_flashdata('sukses','Success');
				redirect(base_url('admin/gallery/galeri_kategori'));
		}
		// Default page
		$data = array(	'title'		=> 'Create Kategori Gallery - '.$site['namaweb'],
						'site'		=> $site,
						'isi'		=> 'admin/gallery/kategori/create');
		$this->load->view('admin/layout/wrapper',$data);
	}

	// Edit Gallery
	public function edit($id_galeri_kategori) {

		$GaleriKategori		= $this->mGaleri->detailGaleriKategori($id_galeri_kategori);
		$endGaleriKategori	= $this->mGaleri->endGaleriKategori();

		// Validation
		$v = $this->form_validation;
		$v->set_rules('nama_kategori','Nama kategori','required');

		if($v->run()) {
		$data = array(	'title'				=> 'Edit Kategori Galeri - '.$GaleriKategori['nama_kategori'],
						'GaleriKategori'	=> $GaleriKategori,
						'isi'				=> 'admin/gallery/kategori/edit');
		$this->load->view('admin/layout/wrapper', $data);

			$i = $this->input;
			$slugGaleriKategori = $endGaleriKategori['id_galeri_kategori'].'-'.url_title($i->post('nama_kategori'),'dash', TRUE);
			$data = array(	'id_galeri_kategori'		=> $GaleriKategori['id_galeri_kategori'],
							'slug_galeri_kategori'		=> $slugGaleriKategori,
							'nama_kategori'				=> $i->post('nama_kategori')
							);

			$this->mGaleri->editGaleriKategori($data);
			$this->session->set_flashdata('sukses','Success');
			redirect(base_url('admin/gallery/Galeri_kategori'));
		}
		$data = array(	'title'				=> 'Edit Kategori Galeri - '.$GaleriKategori['nama_kategori'],
						'GaleriKategori'	=> $GaleriKategori,
						'isi'				=> 'admin/gallery/kategori/edit');
		$this->load->view('admin/layout/wrapper', $data);
	}

	// Delete Gallery
	public function delete($id_galeri_kategori) {
		$data = array('id_galeri_kategori'	=> $id_galeri_kategori);
		$this->mGaleri->deleteGaleriKategori($data);
		$this->session->set_flashdata('sukses','Success');
		redirect(base_url('admin/gallery/Galeri_kategori'));
	}
}
