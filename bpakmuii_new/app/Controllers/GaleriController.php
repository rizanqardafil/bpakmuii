<?php

namespace App\Controllers;

class GaleriController extends BaseController
{
	public function index()
	{
		$data = [
			'titles' => 'Galeri | BPA KM UII'
		];

		return view('pages/galeri/index', $data);
	}

	public function foto()
	{
		$data = [
			'titles' => 'Foto | BPA KM UII'
		];

		return view('pages/galeri/foto', $data);
	}

    public function video()
	{
		$data = [
			'titles' => 'Video | BPA KM UII'
		];

		return view('pages/galeri/video', $data);
	}
}
