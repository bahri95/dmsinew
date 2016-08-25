<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class beritamodel extends CI_Model {

    function  __construct() {
        // Call the Model constructor
       parent::__construct();
    }
	
	function get_list_asosiasi() {
        $sql = "SELECT * FROM asosiasi_m ORDER BY id_asosiasi DESC";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $query->free_result();
            return $result;
        } else {
            return 0;
        }
    }
	
    function get_total_berita() {
       // $id_asosiasi = "100";
       // $this->db->where('id_asosiasi', $id_asosiasi);
        $sql = "SELECT COUNT(*)'total' FROM berita_m WHERE id_asosiasi = 100";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return $result["total"];
        } else {
            return 0;
        }
    }

    function get_list_berita_limit($params) {
        $sql = "SELECT a.*, s.nama_asosiasi FROM berita_m a
		 LEFT JOIN asosiasi_m s ON a.id_asosiasi = s.id_asosiasi  where a.id_asosiasi = 100 
            ORDER BY id_berita DESC LIMIT ?, ?";
        $query = $this->db->query($sql,$params);
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $query->free_result();
            return $result;
        } else {
            return false;
        }
    }

     function get_list_berita_private() {
        $sql = "SELECT a.*, s.nama_asosiasi FROM berita_m a
         LEFT JOIN asosiasi_m s ON a.id_asosiasi = s.id_asosiasi
            ORDER BY tanggal DESC";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $query->free_result();
            return $result;
        } else {
            return false;
        }
    }

     function get_list_berita_terkait() {
        $sql = "SELECT a.*, s.id_asosiasi, s.nama_asosiasi FROM berita_m a
         LEFT JOIN asosiasi_m s ON a.id_asosiasi = s.id_asosiasi WHERE s.id_asosiasi = 100
            ORDER BY tanggal DESC LIMIT 0,3";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $query->free_result();
            return $result;
        } else {
            return false;
        }
    }

    function get_list_berita() {
        $sql = "SELECT a.*, s.nama_asosiasi, admin_name FROM berita_m a
            LEFT JOIN administrator_m b ON a.mdb = b.id_user
			 LEFT JOIN asosiasi_m s ON a.id_asosiasi = s.id_asosiasi 
            ORDER BY tanggal DESC";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $query->free_result();
            return $result;
        } else {
            return false;
        }
    }



    function get_berita_by_id($id) {
        $this->db->where('id_berita', $id);
        $query = $this->db->get('berita_m');
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return $result;
        }else {
            return false;
        }
    }
	
	function get_berita_asosiasi_home() {
		 $this->db->select('a.*,nama_asosiasi');
        $this->db->where('a.id_asosiasi <', 100);
		$this->db->join('asosiasi_m b','a.id_asosiasi = b.id_asosiasi');
        $query = $this->db->get('berita_m a',4, 0);
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $query->free_result();
            return $result;
        }else {
            return false;
        }
    }

    function process_berita_add($params) {
        $sql = "INSERT INTO berita_m (id_asosiasi, judul, content, tanggal, keterangan_gambar,judul_english, content_english, caption_picture )
                VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        return $this->db->query($sql, $params);
    }

    function process_berita_edit($params) {
        $sql = "UPDATE berita_m SET id_asosiasi = ? , judul = ?, content = ?, tanggal = ?, keterangan_gambar = ?,  judul_english = ?, content_english = ?,  caption_picture = ?  
				 WHERE id_berita = ? ";
        return $this->db->query($sql, $params);
    }

    function process_berita_delete($id) {
        $this->db->where('id_berita', $id);
        return $this->db->delete('berita_m');
    }
	
	
	
}