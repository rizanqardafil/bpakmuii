<?php

namespace App\Controllers;

class InvestorController extends BaseController
{
	public function index()
	{
		$data = [
			'titles' => 'Investor | BPA KM UII'
		];

		return view('pages/investor/index',$data);

	}
}
