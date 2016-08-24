<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class faqmodel extends CI_Model {

    function  __construct() {
        // Call the Model constructor
       parent::__construct();
    }

    function get_total_faq() {
        $sql = "SELECT COUNT(*)'total' FROM faq_m";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return $result["total"];
        } else {
            return 0;
        }
    }

    function get_list_faq_limit($params) {
        $sql = "SELECT * FROM faq_m 
            ORDER BY urutan ASC LIMIT ?, ?";
        $query = $this->db->query($sql, $params);
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $query->free_result();
            return $result;
        } else {
            return false;
        }
    }

    function get_list_faq() {
        $sql = "SELECT a.*, admin_name FROM faq_m a
            LEFT JOIN administrator_m b ON a.mdb = b.id_user
            ORDER BY urutan ASC";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $query->free_result();
            return $result;
        } else {
            return false;
        }
    }

    function get_faq_by_id($id) {
        $this->db->where('id_faq', $id);
        $query = $this->db->get('faq_m');
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return $result;
        }else {
            return false;
        }
    }

    function process_faq_add($params) {
        $sql = "INSERT INTO faq_m (pertanyaan, jawaban, urutan)
                VALUES (?, ?, ?)";
        return $this->db->query($sql, $params);
    }

    function process_faq_edit($params) {
        $sql = "UPDATE faq_m SET pertanyaan = ?, jawaban = ?, urutan = ?  
				 WHERE id_faq = ? ";
        return $this->db->query($sql, $params);
    }

    function process_faq_delete($id) {
        $this->db->where('id_faq', $id);
        return $this->db->delete('faq_m');
    }
	
	
	
}