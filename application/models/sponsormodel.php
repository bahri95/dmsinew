<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Sponsormodel extends CI_Model {

    function  __construct() {
        // Call the Model constructor
       parent::__construct();
    }
	
	function get_list_sponsor() {
        $sql = "SELECT * FROM sponsor_m";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $query->free_result();
            return $result;
        } else {
            return 0;
        }
    }

    

    function get_album_by_id($id) {
        $this->db->where('id_album', $id);
        $query = $this->db->get('album_m');
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return $result;
        }else {
            return false;
        }
    }

    function get_sponsor_by_id($id) {
        $this->db->where('id_sponsor', $id);
        $query = $this->db->get('sponsor_m');
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return $result;
        }else {
            return false;
        }
    }

     
	

    function process_sponsor_add($params) {
        $sql = "INSERT INTO sponsor_m (nama_sponsor)
                VALUES (?)";
        return $this->db->query($sql, $params);
    }

   

    function process_sponsor_edit($params) {
        $sql = "UPDATE sponsor_m SET nama_sponsor = ?  
				 WHERE id_sponsor = ? ";
        return $this->db->query($sql, $params);
    }

   

    function process_sponsor_delete($id) {
        $this->db->where('id_sponsor', $id);
        return $this->db->delete('sponsor_m');
    }


	
}