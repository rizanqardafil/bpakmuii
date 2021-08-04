<?php

namespace App\Controllers;

class TentangController extends BaseController
{
	public function index()
	{
		$data = [
			'titles' => 'Tentang Kami | BPA KM UII'
		];

		return view('pages/tentang/index', $data);
	}

}
