<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class fotomodel extends CI_Model {

    function  __construct() {
        // Call the Model constructor
       parent::__construct();
    }
	
	function get_list_album() {
        $sql = "SELECT * FROM album_m";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $query->free_result();
            return $result;
        } else {
            return 0;
        }
    }

    function get_nama_album($id_album) {
        $sql = "SELECT * FROM album_m where id_album = ?";
        $query = $this->db->query($sql, $id_album);
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $query->free_result();
            return $result;
        } else {
            return 0;
        }
    }

   
	
    function get_total_album() {
       // $id_asosiasi = "100";
       // $this->db->where('id_asosiasi', $id_asosiasi);
        $sql = "SELECT COUNT(*)'total' FROM album_m";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return $result["total"];
        } else {
            return 0;
        }
    }

    function get_total_foto() {
       // $id_asosiasi = "100";
       // $this->db->where('id_asosiasi', $id_asosiasi);
         $album = $this->uri->segment(4,0);
        $sql = "SELECT COUNT(*)'total' FROM foto_m where id_album = $album";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return $result["total"];
        } else {
            return 0;
        }
    }

   
    function get_list_album_limit() {
        
        $sql = "SELECT COUNT(a.id_foto)'total', a.*, s.id_album, s.nama_album, s.nama_english, s.image_album
        from foto_m a 
        RIGHT JOIN album_m s on a.id_album = s.id_album
        GROUP BY s.id_album";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $query->free_result();
            return $result;
        } else {
            return false;
        }
    }

    function get_list_album_limit_public($params) {
        
        $sql = "SELECT  a.*, s.id_album, s.nama_album, s.nama_english, s.image_album
        from foto_m a 
        LEFT JOIN album_m s on a.id_album = s.id_album
        GROUP BY s.id_album
        ORDER BY a.urutan ASC
        LIMIT ?,?";
        $query = $this->db->query($sql, $params);
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $query->free_result();
            return $result;
        } else {
            return false;
        }
    }

    function get_list_foto_limit($params) {
     
        $sql = "SELECT  a.*, s.id_album, s.nama_album, s.image_album, s.nama_english
        from foto_m a 
        LEFT JOIN album_m s on a.id_album = s.id_album
        WHERE s.id_album = ? ORDER BY a.urutan ASC";
        $query = $this->db->query($sql, $params);
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $query->free_result();
            return $result;
        } else {
            return false;
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

    function get_foto_by_id($id) {
        $this->db->where('id_foto', $id);
        $query = $this->db->get('foto_m');
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return $result;
        }else {
            return false;
        }
    }

     
	

    function process_album_add($params) {
        $sql = "INSERT INTO album_m (nama_album, nama_english)
                VALUES (?, ?)";
        return $this->db->query($sql, $params);
    }

    function process_foto_add($params) {
        $sql = "INSERT INTO foto_m (id_album, judul_foto, urutan, judul_english)
                VALUES (?, ?, ?, ?)";
        return $this->db->query($sql, $params);
    }

    function process_album_edit($params) {
        $sql = "UPDATE album_m SET nama_album = ?, nama_english = ?  
				 WHERE id_album = ? ";
        return $this->db->query($sql, $params);
    }

       function process_foto_edit($params) {
        $sql = "UPDATE foto_m SET judul_foto = ?, urutan = ?, judul_english = ?
                 WHERE id_foto = ? ";
        return $this->db->query($sql, $params);
    }

    function process_album_delete($id) {
        $this->db->where('id_album', $id);
        return $this->db->delete('album_m');
    }

     function process_foto_delete($id) {
        $this->db->where('id_foto', $id);
        return $this->db->delete('foto_m');
    }

     function process_foto_delete_album($id) {
        $this->db->where('id_album', $id);
        return $this->db->delete('foto_m');
    }
    
	

	
	
}