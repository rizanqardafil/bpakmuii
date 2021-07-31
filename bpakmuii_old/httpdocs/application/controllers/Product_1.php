<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Product_1 extends CI_Controller {

	public function index()
	{
        $this->load->library('pagination');

        $site  		= $this->mConfig->list_config();

            $config['base_url'] = base_url('product_1/');
            $config['total_rows'] = $this->mProduk->total_rows('industri_besar');
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

		$data = array( 'title'	=> 'Home',
                       'site'   => $site,
                       'produk' => $this->mProduk->read('industri_besar','id_industri_besar',$limit,$offset),
                       'pagination' => $this->pagination->create_links(),
                       'isi'	=> 'front/product/product_1');
		$this->load->view('front/layout/wrapper',$data);
	}
}
?>
