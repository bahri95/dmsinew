<?php
class accountmodel extends CI_Model {

    function  __construct() {
        // Call the Model constructor
        parent::__construct();
    }

    // get data

    function get_administrator_details($id_user) {
        $sql = "SELECT DISTINCT a.id_user, a.jabatan, a.jenis_kelamin, a.photo,a.admin_name, no_telp, c.id_auth,  user_status, user_mail, auth_name, login_date, a.id_asosiasi, f.nama_asosiasi, f.id_kota, k.nama_kota, g.id_propinsi, g.nama_propinsi FROM administrator_m a
                INNER JOIN sys_user_m b ON a.id_user = b.id_user
                INNER JOIN sys_user_authority_t c ON b.id_user = c.id_user
                INNER JOIN sys_authority_m d ON c.id_auth = d.id_auth
                LEFT JOIN (SELECT * FROM sys_user_login_t ORDER BY login_date DESC) e ON b.id_user = e.id_user
                LEFT JOIN asosiasi_m f ON a.id_asosiasi = f.id_asosiasi 
				LEFT JOIN spt_kota_m k ON f.id_kota = k.id_kota 
                LEFT JOIN spt_propinsi_m g ON k.id_propinsi = g.id_propinsi
                WHERE a.id_user = ?";
        $query = $this->db->query($sql, array($id_user));
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return $result;
        }else {
            return false;
        }
    }

    function get_administrator_data($id_user) {
        $sql = "SELECT DISTINCT a.id_user,  admin_name, no_telp, user_name,
                user_pass, user_key, user_status, user_mail
                FROM administrator_m a
                INNER JOIN sys_user_m b ON a.id_user = b.id_user
                WHERE a.id_user = ?";
        $query = $this->db->query($sql, array($id_user));
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            return $result;
        }else {
            return false;
        }
    }

    function is_exists_username($username) {
        $sql = "SELECT COUNT(*)'total' FROM sys_user_m WHERE LOWER(user_name) = ?";
        $query = $this->db->query($sql, array($username));
        $result = $query->row_array();
        $query->free_result();
        if (isset($result['total']) AND !empty($result['total'])) {
            return true;
        }else {
            return false;
        }
    }
    
    function is_exists_email($email) {
        $sql = "SELECT COUNT(*)'total' FROM sys_user_m WHERE LOWER(user_mail) = ?";
        $query = $this->db->query($sql, array($email));
        $result = $query->row_array();
        $query->free_result();
        if (isset($result['total']) AND !empty($result['total'])) {
            return true;
        }else {
            return false;
        }
    }

    function is_exist_password($id_user, $password) {
        // load
        $this->load->library('Cryptosimple');
        // get key
        $user_key = "";
        $sql = "SELECT user_key FROM sys_user_m WHERE id_user = ?";
        $query = $this->db->query($sql, array($id_user));
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            $user_key = $result['user_key'];
        }else {
            return false;
        }
        // encrypt
        $password = $this->cryptosimple->do_encryption($password, $user_key);
        // processing
        $sql = "SELECT COUNT(*)'total' FROM sys_user_m WHERE user_pass = ?";
        $query = $this->db->query($sql, array($password));
        $result = $query->row_array();
        $query->free_result();
        if (isset($result['total']) AND !empty($result['total'])) {
            return true;
        }else {
            return false;
        }
    }

    // process update email

    function process_update_email($id_user, $email) {
        $data = array('user_mail' => $email);
        $this->db->where('id_user', $id_user);
        return $this->db->update('sys_user_m', $data);
    }

    //process update profile 
	function process_update_profile($params_data, $id_user) {
        $this->db->where('id_user', $id_user);
        return $this->db->update('administrator_m', $params_data);
    }
	
	// process update username

    function process_update_username($id_user, $user_name) {
        $data = array('user_name' => $user_name);
        $this->db->where('id_user', $id_user);
        return $this->db->update('sys_user_m', $data);
    }

    // process update password

    function process_update_password($id_user, $password) {
        // load
        $this->load->library('Cryptosimple');
        // get key
        $user_key = "";
        $sql = "SELECT user_key FROM sys_user_m WHERE id_user = ?";
        $query = $this->db->query($sql, array($id_user));
        if ($query->num_rows() > 0) {
            $result = $query->row_array();
            $query->free_result();
            $user_key = $result['user_key'];
        }else {
            return false;
        }
        // encrypt password
        $password = $this->cryptosimple->do_encryption($password, $user_key);
        // process
        $data = array('user_pass' => $password);
        $this->db->where('id_user', $id_user);
        return $this->db->update('sys_user_m', $data);
    }
}