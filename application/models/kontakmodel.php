<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class kontakmodel extends CI_Model {

    function  __construct() {
        // Call the Model constructor
       parent::__construct();
    }

    function get_list_asosiasi() {
        $sql = "SELECT * FROM asosiasi_m ORDER BY id_asosiasi DESC ";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $query->free_result();
            return $result;
        } else {
            return 0;
        }
    }

   
    function get_kontak_info() {
        $this->db->limit(1);
        $query = $this->db->get('kontak_m');
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return $result;
        }else {
            return false;
        }
    }

  
    function process_kontak_edit($params) {
        $sql = "UPDATE kontak_m SET email = ?, alamat = ?,telp = ? , fax = ? ,  website = ?  
				 WHERE id_kontak = ? ";
        return $this->db->query($sql, $params);
    }

  
	
}