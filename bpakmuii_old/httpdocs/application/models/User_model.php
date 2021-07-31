<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    class User_model extends CI_Model {

        public function __construct() {
            $this->load->database();
        }

        // Listing Admins
        public function listUser() {
            $this->db->select('*');
            $this->db->from('user');
            $this->db->order_by('id_user','ASC');
            $query = $this->db->get();
            return $query->result_array();
        }

        // Create Admin
        public function createUser($data) {
            $this->db->insert('user',$data);
        }

        // Detail Admin
        public function detailUser($id_user) {
            $this->db->select('*');
            $this->db->from('user');
            $this->db->where('id_user',$id_user);
            $this->db->order_by('id_user','DESC');
            $query = $this->db->get();
            return $query->row_array();
        }

        // Edit Admin
        public function editUser($data) {
            $this->db->where('id_user',$data['id_user']);
            $this->db->update('user',$data);
        }

        // Delete Admin
        public function deleteUser($data) {
            $this->db->where('id_user',$data['id_user']);
            $this->db->delete('user',$data);
        }

    }
