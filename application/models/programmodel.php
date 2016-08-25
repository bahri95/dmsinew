<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class programmodel extends CI_Model {

    function  __construct() {
        // Call the Model constructor
       parent::__construct();
    }

   
    function get_program_info() {
        $this->db->limit(1);
        $query = $this->db->get('program_m');
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return $result;
        }else {
            return false;
        }
    }

    function get_data_program() {
        $sql = "SELECT * FROM program_m";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $query->free_result();
            return $result;
        } else {
            return 0;
        }
    }


  
    function process_program_edit($params) {
        $sql = "UPDATE program_m SET judul_program = ?, tanggal = ?, judul_english = ?
				 WHERE id_program = '1' ";
        return $this->db->query($sql, $params);
    }

  
	
}