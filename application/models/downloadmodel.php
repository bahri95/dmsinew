<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class downloadmodel extends CI_Model {

    function  __construct() {
        // Call the Model constructor
       parent::__construct();
    }

    function get_total_download() {
        $sql = "SELECT COUNT(*)'total' FROM download_m";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return $result["total"];
        } else {
            return 0;
        }
    }

    function get_list_download_limit() {
        $sql = "SELECT * FROM download_m 
            ORDER BY id_download DESC ";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $query->free_result();
            return $result;
        } else {
            return false;
        }
    }

    function get_list_download() {
        $sql = "SELECT *  FROM download_m 
            ORDER BY id_download DESC";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $query->free_result();
            return $result;
        } else {
            return false;
        }
    }

    function get_download_by_id($id) {
        $this->db->where('id_download', $id);
        $query = $this->db->get('download_m');
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return $result;
        }else {
            return false;
        }
    }

    function process_download_add($params) {
        $sql = "INSERT INTO download_m (judul, judul_english)
                VALUES (?, ?)";
        return $this->db->query($sql, $params);
    }

    function process_download_edit($params) {
        $sql = "UPDATE download_m SET judul = ?, judul_english = ? 
				 WHERE id_download = ? ";
        return $this->db->query($sql, $params);
    }

    function process_download_delete($id) {
        $this->db->where('id_download', $id);
        return $this->db->delete('download_m');
    }
	
	
	
}