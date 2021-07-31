<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    class Slider_model extends CI_Model {

        public function __construct() {
            $this->load->database();
        }

        // Listing Slider
        public function listSlider() {
            $this->db->select('*');
            $this->db->from('slider');
            $this->db->order_by('id_slider','ASC');
            $query = $this->db->get();
            return $query->result_array();
        }

        // Create Slider
        public function createSlider($data) {
            $this->db->insert('slider',$data);
        }

        // Detail Slider
        public function detailSlider($id_slider) {
            $this->db->select('*');
            $this->db->from('slider');
            $this->db->where('id_slider',$id_slider);
            $this->db->order_by('id_slider','DESC');
            $query = $this->db->get();
            return $query->row_array();
        }

        // Read Slider
        public function readSlider($slugSlider) {
            $this->db->select('*');
            $this->db->from('slider');
            $this->db->where('slug_slider',$slugSlider);
            $query = $this->db->get();
            return $query->row_array();
        }

        // Edit Slider
        public function editSlider($data) {
            $this->db->where('id_slider',$data['id_slider']);
            $this->db->update('slider',$data);
        }

        // Delete Slider
        public function deleteSlider($data) {
            $this->db->where('id_slider',$data['id_slider']);
            $this->db->delete('slider',$data);
        }

        // End Slider
        public function endSlider() {
            $this->db->select('*');
            $this->db->from('slider');
            $this->db->order_by('id_slider','DESC');
            $query = $this->db->get();
            return $query->row_array();
        }
    }
?>
