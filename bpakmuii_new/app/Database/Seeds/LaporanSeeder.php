<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class LaporanSeeder extends Seeder
{
	public function run()
	{
		$data = [
			[
				'id_laporan'	=> 1,
				'nama_laporan' => 'Laporan Triwulan 1',
				'slug_laporan'    => url_title('Laporan Triwulan 1', '-', true),
				'path_laporan'    => 'Laporan triwulan 2_1630284812_88cd6c7d1a6feca4295b.pdf',
				'path_nama_laporan'    => 'Laporan triwulan 2.pdf',
				'created_at'	=> 	date('Y-m-d'),
				'updated_at'	=> 	date('Y-m-d')
			],
			[
				'id_laporan'	=> 2,
				'nama_laporan' => 'Laporan Triwulan 2',
				'slug_laporan'    => url_title('Laporan Triwulan 2', '-', true),
				'path_laporan'    => 'triwulan4.pdf',
				'path_nama_laporan'    => 'triwulan4.pdf',
				'created_at'	=> 	date('Y-m-d'),
				'updated_at'	=> 	date('Y-m-d')
			],
			[
				'id_laporan'	=> 3,
				'nama_laporan' => 'Laporan Triwulan 3',
				'slug_laporan'    => url_title('Laporan Triwulan 3', '-', true),
				'path_laporan'    => 'triwulan3_1629418412_e8f23c33ebd6d3aaf564.pdf',
				'path_nama_laporan'    => 'triwulan3.pdf',
				'created_at'	=> 	date('Y-m-d'),
				'updated_at'	=> 	date('Y-m-d')
			],
			[
				'id_laporan'	=> 4,
				'nama_laporan' => 'Laporan Triwulan 4',
				'slug_laporan'    => url_title('Laporan Triwulan 4', '-', true),
				'path_laporan'    => 'triwulan3_1629418412_e8f23c33ebd6d3aaf564.pdf',
				'path_nama_laporan'    => 'triwulan3.pdf',
				'created_at'	=> 	date('Y-m-d'),
				'updated_at'	=> 	date('Y-m-d')
			],
		];

		// Using Query Builder
		$this->db->table('laporan')->insertBatch($data);
	}
}
