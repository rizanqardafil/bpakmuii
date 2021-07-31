<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Video extends CI_Controller {

    public function index()
	{
        $this->load->library('pagination');

        $site  		= $this->mConfig->list_config();

            $config['base_url'] = base_url('video/');
            $config['total_rows'] = $this->mGaleri->total_rows('galeri_video');
            $config['per_page'] = 9;
            $config['full_tag_open'] = '<ul class="pagination">';
            $config['full_tag_close'] = '</ul>';
            $config['first_link'] = 'First';
            $config['last_link'] = 'Last';
            $config['first_tag_open'] = '<li>';
            $config['first_tag_close'] = '</li>';
            $config['prev_link'] = '&laquo';
            $config['prev_tag_open'] = '<li class="prev">';
            $config['prev_tag_close'] = '</li>';
            $config['next_link'] = '&raquo';
            $config['next_tag_open'] = '<li>';
            $config['next_tag_close'] = '</li>';
            $config['last_tag_open'] = '<li>';
            $config['last_tag_close'] = '</li>';
            $config['cur_tag_open'] = '<li class="active"><a href="#">';
            $config['cur_tag_close'] = '</a></li>';
            $config['num_tag_open'] = '<li>';
            $config['num_tag_close'] = '</li>';
            $this->pagination->initialize($config);

            $limit = $config['per_page'];
            $offset = (int) $this->uri->segment(2);

		$data = array( 'title'	=> 'Galeri Video',
                      'active' => 'galeri',
                       'site'   => $site,
                       'video'   => $this->mGaleri->read('galeri_video','id_galeri_video',$limit,$offset),
                       'pagination' => $this->pagination->create_links(),
                       'isi'	=> 'front/gallery/video');
		$this->load->view('front/layout/wrapper',$data);
	}
}
?>
