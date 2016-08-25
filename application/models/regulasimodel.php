<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Regulasimodel extends CI_Model {

    function  __construct() {
        // Call the Model constructor
       parent::__construct();
    }

    

    function get_list_regulasi() {
        $sql = "SELECT *  FROM regulasi_m 
            ORDER BY tahun DESC";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $query->free_result();
            return $result;
        } else {
            return false;
        }
    }

    function get_regulasi_by_id($id) {
        $this->db->where('id_regulasi', $id);
        $query = $this->db->get('regulasi_m');
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return $result;
        }else {
            return false;
        }
    }

    function process_regulasi_add($params) {
        $sql = "INSERT INTO regulasi_m (judul,tahun,judul_english)
                VALUES (?,?,?)";
        return $this->db->query($sql, $params);
    }

    function process_regulasi_edit($params) {
        $sql = "UPDATE regulasi_m SET judul = ?, tahun = ?, judul_english = ?
				 WHERE id_regulasi= ? ";
        return $this->db->query($sql, $params);
    }

    function process_regulasi_delete($id) {
        $this->db->where('id_regulasi', $id);
        return $this->db->delete('regulasi_m');
    }
	
	
	
}