<?php

namespace App\Controllers;

class BerandaController extends BaseController
{
	public function index()
	{
		$data = [
			'titles' => 'Beranda | BPA KM UII',
			'config'	=> $this->config->getConfig()
		];

		return view('pages/beranda/index', $data);
	}
}
