<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    class Kontak_model extends CI_Model {

        public function __construct() {
            $this->load->database();
        }

        // Listing kontak
        public function listkontak() {
            $this->db->select('*');
            $this->db->from('kontak');
            $this->db->order_by('id_kontak','ASC');
            $query = $this->db->get();
            return $query->result_array();
        }

        // Create kontak
        public function createkontak($data) {
            $this->db->insert('kontak',$data);
        }

        // Detail kontak
        public function detailkontak($id_kontak) {
            $this->db->select('*');
            $this->db->from('kontak');
            $this->db->where('id_kontak',$id_kontak);
            $this->db->order_by('id_kontak','DESC');
            $query = $this->db->get();
            return $query->row_array();
        }

        // Edit kontak
        public function editkontak($data) {
            $this->db->where('id_kontak',$data['id_kontak']);
            $this->db->update('kontak',$data);
        }

        // Delete kontak
        public function deletekontak($data) {
            $this->db->where('id_kontak',$data['id_kontak']);
            $this->db->delete('kontak',$data);
        }

        // End kontak
        public function endkontak() {
            $this->db->select('*');
            $this->db->from('kontak');
            $this->db->order_by('id_kontak','DESC');
            $query = $this->db->get();
            return $query->row_array();
        }
    }
?>
