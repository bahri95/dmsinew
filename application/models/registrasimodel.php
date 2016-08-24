<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Registrasimodel extends CI_Model {

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

    function get_list_anggota_baru() {
        $sql = "SELECT a.*, b.id_asosiasi, b.nama_asosiasi from registrasi_m a LEFT JOIN asosiasi_m b on a.id_asosiasi = b.id_asosiasi where a.disetujui = 'tidak' ORDER BY a.nama";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $query->free_result();
            return $result;
        } else {
            return 0;
        }
    }
    
     function get_jumlah_anggota_baru(){
        $sql = "SELECT a.*, count(*)'jumlah', b.id_asosiasi, b.nama_asosiasi from registrasi_m a LEFT JOIN asosiasi_m b on a.id_asosiasi = b.id_asosiasi where a.disetujui = 'tidak'";
        $query = $this->db->query($sql);
        if($query->num_rows() > 0){
            $result = $query->result_array();
            $query->free_result();
            return $result;
        }else{
            return 0;
        }
    }

    function get_jumlah_anggota_disetujui(){
        $sql = "SELECT a.*, count(*)'jumlah', b.id_asosiasi, b.nama_asosiasi from registrasi_m a LEFT JOIN asosiasi_m b on a.id_asosiasi = b.id_asosiasi where a.disetujui = 'ya'";
        $query = $this->db->query($sql);
        if($query->num_rows() > 0){
            $result = $query->result_array();
            $query->free_result();
            return $result;
        }else{
            return 0;
        }
    }

    function get_list_kota() {
        $sql = "SELECT * FROM spt_kota_m";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $query->free_result();
            return $result;
        } else {
            return 0;
        }
    }

    

     function get_list_negara() {
        $sql = "SELECT * FROM spt_negara_m";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $query->free_result();
            return $result;
        } else {
            return 0;
        }
    }

    function get_id_registrasi() {
        $cekdata = $this->db->query("SELECT * FROM registrasi_m");
        if($cekdata->num_rows() > 0 ){
        $sql = "SELECT (max(id_registrasi)+1) 'registrasi' FROM registrasi_m";
        }else{
        $sql = "SELECT  (COUNT(*)+1)'registrasi' FROM registrasi_m";
        }
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $query->free_result();
            return $result;
        } else {
            return 0;
        }
    }


	
    

    function process_registrasi_daftar($params) {
        $sql = "INSERT INTO registrasi_m (nama, pekerjaan, id_asosiasi, email, username, password, perusahaan, alamat, web, id_kota, kode_pos, id_negara, telepon, fax, no_ktp, user_key, user_status) VALUES ( ? , ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        return $this->db->query($sql, $params);
        print_r($sql);
    }

    
    function get_data_registrasi_by_id($params){
         $sql = "SELECT a.*, b.id_asosiasi, b.nama_asosiasi from registrasi_m a LEFT JOIN asosiasi_m b on a.id_asosiasi = b.id_asosiasi where a.id_registrasi = ?";
        $query = $this->db->query($sql,$params);
        if($query->num_rows() > 0){
            $result = $query->result_array();
            $query->free_result();
            return $result;
        }else{
            return 0;
        }
    }

}