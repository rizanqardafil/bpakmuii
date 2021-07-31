<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    class Galeri_model extends CI_Model {

        public function __construct() {
            $this->load->database();
        }

        // Listing GaleriFoto
        public function listGaleriFoto() {
            $this->db->select('*');
            $this->db->from('galeri_foto');
            $this->db->order_by('id_galeri_foto','ASC');
            $query = $this->db->get();
            return $query->result_array();
        }

        // Create GaleriFoto
        public function createGaleriFoto($data) {
            $this->db->insert('galeri_foto',$data);
        }

        // Detail GaleriFoto
        public function detailGaleriFoto($id_galeri_foto) {
            $this->db->select('*');
            $this->db->from('galeri_foto');
            $this->db->where('id_galeri_foto',$id_galeri_foto);
            $this->db->order_by('id_galeri_foto','DESC');
            $query = $this->db->get();
            return $query->row_array();
        }

        // Read GaleriFoto
        public function readGaleriFoto($slugGaleriFoto) {
            $this->db->select('*');
            $this->db->from('galeri_foto');
            $this->db->where('slug_galeri_foto',$slugGaleriFoto);
            $query = $this->db->get();
            return $query->row_array();
        }

        // Edit GaleriFoto
        public function editGaleriFoto($data) {
            $this->db->where('id_galeri_foto',$data['id_galeri_foto']);
            $this->db->update('galeri_foto',$data);
        }

        // Delete GaleriFoto
        public function deleteGaleriFoto($data) {
            $this->db->where('id_galeri_foto',$data['id_galeri_foto']);
            $this->db->delete('galeri_foto',$data);
        }

        // End GaleriFoto
        public function endGaleriFoto() {
            $this->db->select('*');
            $this->db->from('galeri_foto');
            $this->db->order_by('id_galeri_foto','DESC');
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

        // Listing GaleriVideo
        public function listGaleriVideo() {
            $this->db->select('*');
            $this->db->from('galeri_video');
            $this->db->order_by('id_galeri_video','ASC');
            $query = $this->db->get();
            return $query->result_array();
        }

        // Create GaleriVideo
        public function createGaleriVideo($data) {
            $this->db->insert('galeri_video',$data);
        }

        // Detail GaleriVideo
        public function detailGaleriVideo($id_galeri_video) {
            $this->db->select('*');
            $this->db->from('galeri_video');
            $this->db->where('id_galeri_video',$id_galeri_video);
            $this->db->order_by('id_galeri_video','DESC');
            $query = $this->db->get();
            return $query->row_array();
        }

        // Read GaleriVideo
        public function readGaleriVideo($slugGaleriVideo) {
            $this->db->select('*');
            $this->db->from('galeri_video');
            $this->db->where('slug_galeri_video',$slugGaleriVideo);
            $query = $this->db->get();
            return $query->row_array();
        }

        // Edit GaleriVideo
        public function editGaleriVideo($data) {
            $this->db->where('id_galeri_video',$data['id_galeri_video']);
            $this->db->update('galeri_video',$data);
        }

        // Delete GaleriVideo
        public function deleteGaleriVideo($data) {
            $this->db->where('id_galeri_video',$data['id_galeri_video']);
            $this->db->delete('galeri_video',$data);
        }

        // End GaleriVideo
        public function endGaleriVideo() {
            $this->db->select('*');
            $this->db->from('galeri_video');
            $this->db->order_by('id_galeri_video','DESC');
            $query = $this->db->get();
            return $query->row_array();
        }


        // Listing GaleriKategori
        public function listGaleriKategori() {
            $this->db->select('*');
            $this->db->from('galeri_kategori');
            $this->db->order_by('id_galeri_kategori','ASC');
            $query = $this->db->get();
            return $query->result_array();
        }

        // Create GaleriKategori
        public function createGaleriKategori($data) {
            $this->db->insert('galeri_kategori',$data);
        }

        // Detail GaleriKategori
        public function detailGaleriKategori($id_galeri_kategori) {
            $this->db->select('*');
            $this->db->from('galeri_kategori');
            $this->db->where('id_galeri_kategori',$id_galeri_kategori);
            $this->db->order_by('id_galeri_kategori','DESC');
            $query = $this->db->get();
            return $query->row_array();
        }

        // Read GaleriKategori
        public function readGaleriKategori($slugGaleriKategori) {
            $this->db->select('*');
            $this->db->from('galeri_kategori');
            $this->db->where('slug_galeri_kategori',$slugGaleriKategori);
            $query = $this->db->get();
            return $query->row_array();
        }

        // Edit GaleriKategori
        public function editGaleriKategori($data) {
            $this->db->where('id_galeri_kategori',$data['id_galeri_kategori']);
            $this->db->update('galeri_kategori',$data);
        }

        // Delete GaleriKategori
        public function deleteGaleriKategori($data) {
            $this->db->where('id_galeri_kategori',$data['id_galeri_kategori']);
            $this->db->delete('galeri_kategori',$data);
        }

        // End GaleriKategori
        public function endGaleriKategori() {
            $this->db->select('*');
            $this->db->from('galeri_kategori');
            $this->db->order_by('id_galeri_kategori','DESC');
            $query = $this->db->get();
            return $query->row_array();
        }
    }
?>
