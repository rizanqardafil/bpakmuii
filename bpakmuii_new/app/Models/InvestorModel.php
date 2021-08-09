<?php

namespace App\Models;

use CodeIgniter\Model;

class InvestorModel extends Model
{
    protected $table = 'laporan';
    protected $primaryKey = "id_laporan";
    protected $useTimestamps = true;
    protected $allowedFields = ['nama_laporan', 'slug_laporan', 'path_laporan'];

    public function getOrganisasi()
    {
        $builder = $this->db->table('organisasi');
        $builder->select('id_organisasi, nama, slug_organisasi, keterangan, image');
        $builder->orderBy('id_organisasi', 'ASC');

        $result = $builder->get(1)->getResult();

        return $result;
    }
}
