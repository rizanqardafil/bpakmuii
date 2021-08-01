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
		return view('pages/produk/detail');
	}
}
