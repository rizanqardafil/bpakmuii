<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    class TentangKami_model extends CI_Model {

        public function __construct() {
            $this->load->database();
        }

        // Listing SekilasPerusahaan
        public function listSekilasPerusahaan() {
            $this->db->select('*');
            $this->db->from('sekilas_perusahaan');
            $this->db->order_by('id_sekilas_perusahaan','ASC');
            $query = $this->db->get();
            return $query->row_array();
        }

        // Edit SekilasPerusahaan
        public function editSekilasPerusahaan($data) {
            $this->db->where('id_sekilas_perusahaan',$data['id_sekilas_perusahaan']);
            $this->db->update('sekilas_perusahaan',$data);
        }

        //////////////////////////////////////

        public function listPesanDirektur() {
            $this->db->select('*');
            $this->db->from('pesan_direktur');
            $this->db->order_by('id_pesan_direktur','ASC');
            $query = $this->db->get();
            return $query->row_array();
        }


        // Edit PesanDirektur
        public function editPesanDirektur($data) {
            $this->db->where('id_pesan_direktur',$data['id_pesan_direktur']);
            $this->db->update('pesan_direktur',$data);
        }

        //////////////////////////////////////

        public function listVisiMisi() {
            $this->db->select('*');
            $this->db->from('visi_misi');
            $this->db->order_by('id_visi_misi','ASC');
            $query = $this->db->get();
            return $query->row_array();
        }

        // Edit VisiMisi
        public function editVisiMisi($data) {
            $this->db->where('id_visi_misi',$data['id_visi_misi']);
            $this->db->update('visi_misi',$data);
        }

    }
