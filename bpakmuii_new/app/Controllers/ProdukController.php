<?php

namespace App\Controllers;

class ProdukController extends BaseController
{
	public function index()
	{
		$data = [
			'titles' => 'Produk Kami | BPA KM UII'
		];

		return view('pages/produk/index', $data);
	}

	public function detail()
	{
		$data = [
			'titles' => 'Detail Produk | BPA KM UII'
		];

		return view('pages/produk/detail', $data);
	}
}
