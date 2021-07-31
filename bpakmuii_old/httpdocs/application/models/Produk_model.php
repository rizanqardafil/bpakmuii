<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    class Produk_model extends CI_Model {

        public function __construct() {
            $this->load->database();
        }

        // Listing IndustriBesar
        public function listIndustriBesar() {
            $this->db->select('*');
            $this->db->from('industri_besar');
            $this->db->order_by('id_industri_besar','ASC');
            $query = $this->db->get();
            return $query->result_array();
        }

        // Create IndustriBesar
        public function createIndustriBesar($data) {
            $this->db->insert('industri_besar',$data);
        }

        // Detail IndustriBesar
        public function detailIndustriBesar($id_industri_besar) {
            $this->db->select('*');
            $this->db->from('industri_besar');
            $this->db->where('id_industri_besar',$id_industri_besar);
            $this->db->order_by('id_industri_besar','DESC');
            $query = $this->db->get();
            return $query->row_array();
        }

        // Read IndustriBesar
        public function readIndustriBesar($slugIndustriBesar) {
            $this->db->select('*');
            $this->db->from('industri_besar');
            $this->db->where('slug_industri_besar',$slugIndustriBesar);
            $query = $this->db->get();
            return $query->row_array();
        }

        // Edit IndustriBesar
        public function editIndustriBesar($data) {
            $this->db->where('id_industri_besar',$data['id_industri_besar']);
            $this->db->update('industri_besar',$data);
        }

        // Delete IndustriBesar
        public function deleteIndustriBesar($data) {
            $this->db->where('id_industri_besar',$data['id_industri_besar']);
            $this->db->delete('industri_besar',$data);
        }

        // End IndustriBesar
        public function endIndustriBesar() {
            $this->db->select('*');
            $this->db->from('industri_besar');
            $this->db->order_by('id_industri_besar','DESC');
            $query = $this->db->get();
            return $query->row_array();
        }

        ///////////////////////////////////////////////

        public function total_rows($table){
            return $this->db->count_all_results($table);
	    }

        public function read($table,$order,$limit,$offset){
		// $query = $this->db->query("select * from $table order by ID DESC");

		$this->db->from($table);
		$this->db->limit($limit,$offset);
		$this->db->order_by($order, 'DESC');

		$query = $this->db->get();
		if($query->num_rows() > 0){
			foreach($query->result_array() as $row){
				$data[] = $row;
			}

			$query->free_result();
		}
		else{
			$data = NULL;
		}

		return $data;
	    }

        ///////////////////////////////////////////////

        // Listing IndustriKecil
        public function listIndustriKecil() {
            $this->db->select('*');
            $this->db->from('industri_kecil');
            $this->db->order_by('id_industri_kecil','ASC');
            $query = $this->db->get();
            return $query->result_array();
        }

        // Create IndustriKecil
        public function createIndustriKecil($data) {
            $this->db->insert('industri_kecil',$data);
        }

        // Detail IndustriKecil
        public function detailIndustriKecil($id_industri_kecil) {
            $this->db->select('*');
            $this->db->from('industri_kecil');
            $this->db->where('id_industri_kecil',$id_industri_kecil);
            $this->db->order_by('id_industri_kecil','DESC');
            $query = $this->db->get();
            return $query->row_array();
        }

        // Read IndustriKecil
        public function readIndustriKecil($slugIndustriKecil) {
            $this->db->select('*');
            $this->db->from('industri_kecil');
            $this->db->where('slug_industri_kecil',$slugIndustriKecil);
            $query = $this->db->get();
            return $query->row_array();
        }

        // Edit IndustriKecil
        public function editIndustriKecil($data) {
            $this->db->where('id_industri_kecil',$data['id_industri_kecil']);
            $this->db->update('industri_kecil',$data);
        }

        // Delete IndustriKecil
        public function deleteIndustriKecil($data) {
            $this->db->where('id_industri_kecil',$data['id_industri_kecil']);
            $this->db->delete('industri_kecil',$data);
        }

        // End IndustriKecil
        public function endIndustriKecil() {
            $this->db->select('*');
            $this->db->from('industri_kecil');
            $this->db->order_by('id_industri_kecil','DESC');
            $query = $this->db->get();
            return $query->row_array();
        }
    }
?>
