<?php

class datamodel extends CI_Model {

    function  __construct() {
        // Call the Model constructor
         parent::__construct();
    }

    function get_data_propinsi() {
        $this->db->order_by('nama_propinsi', 'ASC');
        $query = $this->db->get('spt_propinsi_m');
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $query->free_result();
            return $result;
        } else {
            return false;
        }
    }

    function get_propinsi_by_id($id) {
        $this->db->where('id_propinsi', $id);
        $query = $this->db->get('spt_propinsi_m');
        if ($query->num_rows() > 0) {
            return $query->row_array();
        } else {
            return false;
        }
    }

    /*
     * digunakan untuk mengambil seluruh data musium perpropinsi
    */
    function get_all_musium_by_propinsi($id_propinsi) {
        $sql = "SELECT *,(SELECT count(*) as jml_koleksi  FROM museum_m as a
		INNER JOIN koleksi_m as b
		ON a.id_museum=b.id_museum
                WHERE a.id_museum=aa.id_museum)as jumlah_koleksi FROM museum_m aa INNER JOIN spt_kota_m bb
                ON (aa.id_kota=bb.id_kota)
                INNER JOIN spt_propinsi_m cc
                ON (bb.id_propinsi=cc.id_propinsi)
                WHERE cc.id_propinsi = ?";
        $query = $this->db->query($sql, $id_propinsi);
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $query->free_result();
            return $result;
        } else {
            return false;
        }
    }

    /*
     * digunakan untuk mengambil jumlah koleksi
     * dan musium dari sebuah propinsi
    */
    function get_jml_museum_koleksi_by_propinsi($id) {
        $sql = "SELECT id_propinsi as id_prop,id_negara,nama_propinsi,(SELECT count(*) as jumlah FROM koleksi_m a INNER JOIN museum_m b
	ON a.id_museum=b.id_museum
	INNER JOIN spt_kota_m c
	ON b.id_kota=c.id_kota
	where c.id_propinsi=id_prop) as jumlah_koleksi,(SELECT count(*) as jumlah FROM  museum_m b
	INNER JOIN spt_kota_m c
	ON b.id_kota=c.id_kota
	where c.id_propinsi=id_prop) as jumlah_museum FROM spt_propinsi_m
        where id_propinsi= ?";
        $query = $this->db->query($sql, $id);
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return $result;
        } else {
            return false;
        }
    }

    /*
     * digunakan untuk mengambil sluruh list propinsi beserta
     * jumlah koleksi dan banyakknya musium
    */
    function get_all_pro_mus_kol() {
        $sql = "SELECT id_propinsi as id_prop,id_negara,nama_propinsi,(SELECT count(*) as jumlah FROM koleksi_m a INNER JOIN museum_m b
	ON a.id_museum=b.id_museum
	INNER JOIN spt_kota_m c
	ON b.id_kota=c.id_kota
	where c.id_propinsi=id_prop) as jumlah_koleksi,(SELECT count(*) as jumlah FROM  museum_m b
	INNER JOIN spt_kota_m c
	ON b.id_kota=c.id_kota
	where c.id_propinsi=id_prop) as jumlah_museum FROM spt_propinsi_m ";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $query->free_result();
            return $result;
        } else {
            return false;
        }
    }

    /*
     * digunakan untuk mengambil data suatu musium dari idnya
     * 
    */
    function get_museum_by_id($id) {
        $this->db->where('id_museum', $id);
        $query = $this->db->get('museum_m');
        if ($query->num_rows() > 0) {
            return $query->row_array();
        } else {
            return false;
        }
    }

    /*
     * digunakan untuk mengambil data koleksi suatu musium
     * dengan parameter idnya
    */
    function get_all_koleksi_by_museum($id_musium) {
        $sql = "SELECT * FROM koleksi_m as a INNER JOIN
			museum_m as b on a.id_museum=b.id_museum
			WHERE b.id_museum = ?";
        $query = $this->db->query($sql, $id_musium);
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $query->free_result();
            return $result;
        } else {
            return false;
        }
    }

    function get_all_jenis_koleksi_by_museum($id_musium) {
        $sql = "SELECT *,(SELECT COUNT(*) FROM koleksi_jenis_m as a INNER JOIN
                koleksi_m as b ON(a.id_jenis=b.id_jenis)
                INNER JOIN museum_m as c 
		ON(b.id_museum=c.id_museum)
                where c.id_museum= ? and a.id_jenis=induk.id_jenis)as jumlah FROM koleksi_jenis_m as induk";
        $query = $this->db->query($sql, $id_musium);
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $query->free_result();
            return $result;
        } else {
            return false;
        }
    }
}