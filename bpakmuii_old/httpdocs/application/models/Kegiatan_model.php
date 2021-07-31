<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    class Kegiatan_model extends CI_Model {

        public function __construct() {
            $this->load->database();
        }

        // Listing Kegiatan
        public function listKegiatan() {
            $this->db->select('*');
            $this->db->from('kegiatan');
            $this->db->order_by('id_kegiatan','ASC');
            $query = $this->db->get();
            return $query->result_array();
        }

        // Create Kegiatan
        public function createKegiatan($data) {
            $this->db->insert('kegiatan',$data);
        }

        // Detail Kegiatan
        public function detailKegiatan($id_kegiatan) {
            $this->db->select('*');
            $this->db->from('kegiatan');
            $this->db->where('id_kegiatan',$id_kegiatan);
            $this->db->order_by('id_kegiatan','DESC');
            $query = $this->db->get();
            return $query->row_array();
        }

        // Read Kegiatan
        public function readKegiatan($slugKegiatan) {
            $this->db->select('*');
            $this->db->from('kegiatan');
            $this->db->where('slug_kegiatan',$slugKegiatan);
            $query = $this->db->get();
            return $query->row_array();
        }

        // Edit Kegiatan
        public function editKegiatan($data) {
            $this->db->where('id_kegiatan',$data['id_kegiatan']);
            $this->db->update('kegiatan',$data);
        }

        // Delete Kegiatan
        public function deleteKegiatan($data) {
            $this->db->where('id_kegiatan',$data['id_kegiatan']);
            $this->db->delete('kegiatan',$data);
        }

        // End Kegiatan
        public function endKegiatan() {
            $this->db->select('*');
            $this->db->from('kegiatan');
            $this->db->order_by('id_kegiatan','DESC');
            $query = $this->db->get();
            return $query->row_array();
        }
    }
?>
