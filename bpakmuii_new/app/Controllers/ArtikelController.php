<?php

namespace App\Controllers;

class ArtikelController extends BaseController
{
	public function index()
	{
		$data = [
			'titles' => 'Artikel | BPA KM UII'
		];

		return view('pages/artikel/index', $data);
	}

	public function detail()
	{
		$data = [
			'titles' => 'Detail Artikel | BPA KM UII'
		];

		return view('pages/artikel/detail', $data);
	}
}
