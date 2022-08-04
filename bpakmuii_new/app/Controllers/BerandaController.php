<?php

namespace App\Controllers;

use App\Controllers\Admin\Produk_Kami\Slider;
use App\Models\Admin\KegiatanModel;
use App\Models\ArtikelModel;
use App\Models\ProdukModel;
use App\Models\TentangModel;
use App\Models\Admin\SliderModel;

class BerandaController extends BaseController
{
	protected $tentang_model;
	protected $kegiatan_model;
	protected $produk_model;
	protected $artikel_model;
	protected $slider_model;

	public function __construct()
	{
		$this->tentang_model = new TentangModel();
		$this->produk_model = new ProdukModel();
		$this->artikel_model = new ArtikelModel();
		$this->kegiatan_model = new KegiatanModel();
		$this->slider_model = new SliderModel();
	}

	public function index()
	{
		$about = $this->tentang_model->getSejarah();
		$products = $this->produk_model->getAllProduct('', '', 'produk.nama_produk', 'ASC', 3);
		$articles = $this->artikel_model->getAllArtikel('', '', 6);
		$events = $this->kegiatan_model->getActivity();
		$sliders = $this->slider_model->getSlider();
		

		$data = [
			'titles' => 'Beranda | BPA KM UII',
			'config'	=> $this->config->getConfig(),
			'about'	=>	$about,
			'products'	=> $products,
			'articles'	=> $articles,
			'events'	=> $events,
			'sliders' => $sliders
		];

		return view('pages/beranda/index', $data);
	}
}