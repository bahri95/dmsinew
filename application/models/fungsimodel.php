<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class fungsimodel extends CI_Model {

    function  __construct() {
        // Call the Model constructor
         parent::__construct();
    }

    function get_total_fungsi() {
        $sql = "SELECT COUNT(*)'total' FROM spt_fungsi_m";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return $result["total"];
        } else {
            return 0;
        }
    }

    function get_data_fungsi($params) {
        $sql = "SELECT a.*, admin_name FROM spt_fungsi_m a
                LEFT JOIN administrator_m b ON a.mdb = b.id_user
                ORDER BY nama_fungsi ASC LIMIT ?, ?";
        $query = $this->db->query($sql, $params);
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $query->free_result();
            return $result;
        } else {
            return false;
        }
    }
	
	function get_data_fungsi_all() {
        $sql = "SELECT a.*, admin_name FROM spt_fungsi_m a
                LEFT JOIN administrator_m b ON a.mdb = b.id_user
                ORDER BY nama_fungsi ASC ";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $query->free_result();
            return $result;
        } else {
            return false;
        }
    }

    function get_fungsi_by_id($id) {
        $this->db->where('id_fungsi', $id);
        $query = $this->db->get('spt_fungsi_m');
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return $result;
        }else {
            return false;
        }
    }


    function process_fungsi_add($params) {
        // insert into spt_fungsi_m
        $sql = "INSERT INTO spt_fungsi_m (nama_fungsi, mdb, mdd)
                VALUES (?, ?, NOW())";
        return $this->db->query($sql, $params);
    }

    function process_fungsi_edit($params) {
        // update into spt_fungsi_m
        $sql = "UPDATE spt_fungsi_m SET nama_fungsi = ?,mdb = ?, mdd = NOW()
                WHERE id_fungsi = ?";
        return $this->db->query($sql, $params);
    }
	function process_fungsi_delete_one($id) {
        if(!empty($id)) {
                $this->db->where('id_fungsi', $id);
                $this->db->delete('spt_fungsi_m');
       }
        return true;
    }
    function process_fungsi_delete($id) {
        if(!empty($id)) {
            foreach ($id as $value) {
                $this->db->where('id_fungsi', $value);
                $this->db->delete('spt_fungsi_m');
            }
        }
        return true;
    }
}