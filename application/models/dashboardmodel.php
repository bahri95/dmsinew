<?php
class dashboardmodel extends CI_Model {

    function  __construct() {
        // Call the Model constructor
       parent::__construct();
    }

    // get data
	function get_total_asosiasi_terdaftar() {
        $sql = "SELECT COUNT(*)'total_asosiasi' FROM asosiasi_m ";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return intval($result['total_asosiasi']);
        } else {
            return 0;
        }
    }

    function get_total_album() {
        $sql = "SELECT COUNT(*)'total_album' FROM album_m ";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return intval($result['total_album']);
        } else {
            return 0;
        }
    }

    function get_total_foto() {
        $sql = "SELECT COUNT(*)'total_foto' FROM foto_m ";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return intval($result['total_foto']);
        } else {
            return 0;
        }
    }

    function get_total_video() {
        $sql = "SELECT COUNT(*)'total_video' FROM video_m ";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return intval($result['total_video']);
        } else {
            return 0;
        }
    }

    function get_total_informasi() {
        $sql = "SELECT COUNT(*)'total_informasi' FROM informasi_m ";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return intval($result['total_informasi']);
        } else {
            return 0;
        }
    }

    function get_total_opini() {
        $sql = "SELECT COUNT(*)'total_opini' FROM opini_m ";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return intval($result['total_opini']);
        } else {
            return 0;
        }
    }

    function get_total_sesebi() {
        $sql = "SELECT COUNT(*)'total_sesebi' FROM serbaserbi_m ";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return intval($result['total_sesebi']);
        } else {
            return 0;
        }
    }

    function get_harga_domestik() {
        $sql = "SELECT MAX(id_bulan) as bulan, MAX(tahun) as tahun, harga_rupiah, harga_dolar FROM `harga_m` WHERE id_katharga = 1";

        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return intval($result['harga_rupiah']);
        } else {
            return 0;
        }
    }

    function get_harga_ekspor() {
        $sql = "SELECT MAX(id_bulan) as bulan, MAX(tahun) as tahun, harga_rupiah, harga_dolar FROM `harga_m` WHERE id_katharga = 2";

        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return intval($result['harga_rupiah']);
        } else {
            return 0;
        }
    }

    function get_total_berita() {
        $sql = "SELECT COUNT(*)'total_berita' FROM berita_m";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return intval($result['total_berita']);
        } else {
            return 0;
        }
    }

    function get_total_event() {
        $sql = "SELECT COUNT(*)'total_event' FROM agenda_m";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return intval($result['total_event']);
        } else {
            return 0;
        }
    }

    function get_total_aspirasi_baru() {
        $sql = "SELECT COUNT(*)'total_aspirasi_baru' FROM aspirasi_m where id_asosiasi = 100 AND publish = 'tidak' AND status_jawab = 'tidak'";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return intval($result['total_aspirasi_baru']);
        } else {
            return 0;
        }
    }

    function get_total_aspirasi_ver() {
        $sql = "SELECT COUNT(*)'total_aspirasi_ver' FROM aspirasi_m where id_asosiasi = 100 AND publish = 'ya' AND status_jawab = 'tidak'";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return intval($result['total_aspirasi_ver']);
        } else {
            return 0;
        }
    }

    function get_total_aspirasi_jaw() {
        $sql = "SELECT COUNT(*)'total_aspirasi_jaw' FROM aspirasi_m where id_asosiasi = 100 AND publish = 'ya' AND status_jawab = 'ya'";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return intval($result['total_aspirasi_jaw']);
        } else {
            return 0;
        }
    }
}
	
	