<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class About extends CI_Controller {

	public function index()
	{
        $site  		= $this->mConfig->list_config();
        $sekilasperusahaan = $this->mTentangKami->listSekilasPerusahaan();
        $visimisi = $this->mTentangKami->listVisiMisi();
        $pesandirektur = $this->mTentangKami->listPesanDirektur();
				$organisasi = $this->mOrganisasi->listOrganisasi();

		$data = array(  'title'	 => 'About',
                        'active' => 'about',
                        'site'   => $site,
                        'sekilasperusahaan' => $sekilasperusahaan,
                        'visimisi' => $visimisi,
                        'pesandirektur' => $pesandirektur,
												'organisasi' => $organisasi,
                        'isi'	 => 'front/about/about');
		$this->load->view('front/layout/wrapper',$data);
	}
}
?>
