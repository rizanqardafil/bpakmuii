<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    class Config_model extends CI_Model {

        public function __construct() {
            $this->load->database();
        }

        // Listing Config
        public function list_config() {
            $this->db->select('*');
            $this->db->from('config');
            $this->db->order_by('id_config','ASC');
            $query = $this->db->get();
            return $query->row_array();
        }

        // Edit Config
        public function edit_config($data) {
            $this->db->where('id_config',$data['id_config']);
            $this->db->update('config',$data);
        }

    }
?>
