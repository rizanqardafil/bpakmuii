<?php

namespace App\Models\Admin;

use CodeIgniter\Model;

class TeamModel extends Model
{
    protected $table = 'team';
    protected $primaryKey = "id_team";
    protected $useTimestamps = true;
    protected $allowedFields = ['kategori_jabatan', 'jabatan', 'slug_jabatan', 'nama', 'image'];

     public function getTeam($slug_jabatan = '', $order_by = 'team.updated_at', $order_type = 'DESC')
    {
        if ($slug_jabatan) {
            $activity_team = $this->where('slug_jabatan', $slug_jabatan)
                ->orderBy($order_by, $order_type)
                ->first();

            return $activity_team;
        }

        $activity_team = $this->orderBy($order_by, $order_type)
            ->findAll();

        return $activity_team;
    }
}