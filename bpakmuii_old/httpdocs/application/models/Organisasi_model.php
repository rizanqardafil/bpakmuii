<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    class Organisasi_model extends CI_Model {

        public function __construct() {
            $this->load->database();
        }

        // Listing Organisasi
        public function listOrganisasi() {
            $this->db->select('*');
            $this->db->from('organisasi');
            $this->db->order_by('id_organisasi','ASC');
            $query = $this->db->get();
            return $query->result_array();
        }

        // Create Organisasi
        public function createOrganisasi($data) {
            $this->db->insert('organisasi',$data);
        }

        // Detail Organisasi
        public function detailOrganisasi($id_organisasi) {
            $this->db->select('*');
            $this->db->from('organisasi');
            $this->db->where('id_organisasi',$id_organisasi);
            $this->db->order_by('id_organisasi','DESC');
            $query = $this->db->get();
            return $query->row_array();
        }

        // Read Organisasi
        public function readOrganisasi($slugOrganisasi) {
            $this->db->select('*');
            $this->db->from('organisasi');
            $this->db->where('slug_Organisasi',$slugOrganisasi);
            $query = $this->db->get();
            return $query->row_array();
        }

        // Edit Organisasi
        public function editOrganisasi($data) {
            $this->db->where('id_organisasi',$data['id_organisasi']);
            $this->db->update('organisasi',$data);
        }

        // Delete Organisasi
        public function deleteOrganisasi($data) {
            $this->db->where('id_organisasi',$data['id_organisasi']);
            $this->db->delete('organisasi',$data);
        }

        // End Organisasi
        public function endOrganisasi() {
            $this->db->select('*');
            $this->db->from('organisasi');
            $this->db->order_by('id_organisasi','DESC');
            $query = $this->db->get();
            return $query->row_array();
        }
    }
?>
