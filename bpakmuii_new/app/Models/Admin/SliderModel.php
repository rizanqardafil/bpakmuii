<?php

namespace App\Models\Admin;

use CodeIgniter\Model;

class SliderModel extends Model
{
    protected $table = 'slider';
    protected $primaryKey = "id_slider";
    protected $useTimestamps = true;
    protected $allowedFields = ['nama', 'slug_slider', 'link', 'image'];

     public function getSlider($slug_slider = '', $order_by = 'slider.updated_at', $order_type = 'DESC')
    {
        if ($slug_slider) {
            $activity_slider = $this->where('slug_slider', $slug_slider)
                ->orderBy($order_by, $order_type)
                ->first();

            return $activity_slider;
        }

        $activity_slider = $this->orderBy($order_by, $order_type)
            ->findAll();

        return $activity_slider;
    }
}