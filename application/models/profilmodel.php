<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class profilmodel extends CI_Model {

    function  __construct() {
        // Call the Model constructor
        parent::__construct();
    }

    function get_total_profil() {
        $sql = "SELECT COUNT(*)'total' FROM profil_m";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return $result["total"];
        } else {
            return 0;
        }
    }

    function get_list_profil_limit($params) {
        $sql = "SELECT * FROM profil_m
            ORDER BY order_num ASC LIMIT ?, ?";
        $query = $this->db->query($sql, $params);
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $query->free_result();
            return $result;
        } else {
            return false;
        }
    }

    function get_list_profil() {
        $sql = "SELECT * FROM profil_m
            ORDER BY order_num ASC";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $query->free_result();
            return $result;
        } else {
            return false;
        }
    }

    function get_profil_by_id($id) {
        $this->db->where('id_info', $id);
        $query = $this->db->get('profil_m');
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return $result;
        }else {
            return false;
        }
    }

    function process_profil_add($params) {
        $sql = "INSERT INTO profil_m (judul,  content, order_num, judul_english, content_english)
                VALUES (?, ?, ?, ?, ?)";
        return $this->db->query($sql, $params);
    }

    function process_profil_edit($params) {
        $sql = "UPDATE profil_m SET judul = ?,  content = ?, order_num = ?, judul_english = ?, content_english = ?
                WHERE id_info = ?";
        return $this->db->query($sql, $params);
    }

    function process_profil_delete() {
        $this->db->where('id_info', $this->input->post('id_info'));
        return $this->db->delete('profil_m');
    }
}