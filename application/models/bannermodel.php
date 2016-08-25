<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class bannermodel extends CI_Model {

    function  __construct() {
        // Call the Model constructor
       parent::__construct();
    }
	
	function get_list_banner() {
        $sql = "SELECT * FROM banner_m";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $query->free_result();
            return $result;
        } else {
            return 0;
        }
    }

    function get_list_banner_public() {
    
        $sql = "SELECT *, DATEDIFF(NOW(),tanggal_mulai) as jarak, DATEDIFF(tanggal_berakhir, NOW()) as jarak_hari_ini FROM banner_m where status = 'active' and DATEDIFF(tanggal_berakhir, NOW()) > 0 and DATEDIFF(NOW(),tanggal_mulai)  > -1 ORDER BY urutan ASC";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $query->free_result();
            return $result;
        } else {
            return 0;
        }
    
    }
   

    

    function get_banner_by_id($id) {
        $this->db->where('id_banner', $id);
        $query = $this->db->get('banner_m');
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return $result;
        }else {
            return false;
        }
    }

 

     
	

    function process_banner_add($params) {
        $sql = "INSERT INTO banner_m (nama, nama_english,masa_aktif, tanggal_mulai, tanggal_berakhir, urutan, status)
                VALUES (?, ?, ?, ?, ?, ?, ?)";
        return $this->db->query($sql, $params);
    }



    function process_banner_edit($params) {
        $sql = "UPDATE banner_m SET nama = ?, nama_english  = ?, masa_aktif = ?, tanggal_mulai = ?, tanggal_berakhir = ?, urutan = ?, status = ?
				 WHERE id_banner = ? ";
        return $this->db->query($sql, $params);
    }

   

    function process_banner_delete($id) {
        $this->db->where('id_banner', $id);
        return $this->db->delete('banner_m');
    }

    
	

	
	
}