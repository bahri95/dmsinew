<?php         if (!defined('BASEPATH')) exit('No direct script access allowed');    class videomodel extends CI_Model {                function  __construct() {            // Call the Model constructor            parent::__construct();        }                function get_total_video() {            $sql = "SELECT COUNT(*)'total' FROM video_m";            $query = $this->db->query($sql);                        if ($query->num_rows() > 0) {                $result = $query->row_array();                $query->free_result();                return $result["total"];            } else {                return 0;            }        }                function get_list_video_limit() {            $sql = "SELECT * FROM video_m             ORDER BY id_video DESC";            $query = $this->db->query($sql);                        if ($query->num_rows() > 0) {                $result = $query->result_array();                $query->free_result();                return $result;            } else {                return false;            }        }        function get_list_video_home() {            $sql = "SELECT *, MAX(id_video) 'maxidvideo' FROM video_m             ORDER BY id_video DESC";            $query = $this->db->query($sql);                        if ($query->num_rows() > 0) {                $result = $query->result_array();                $query->free_result();                return $result;            } else {                return false;            }        }                function get_list_video() {            $sql = "SELECT a.*, admin_name FROM video_m a            LEFT JOIN administrator_m b ON a.mdb = b.id_user            ORDER BY tanggal DESC";            $query = $this->db->query($sql);                        if ($query->num_rows() > 0) {                $result = $query->result_array();                $query->free_result();                return $result;            } else {                return false;            }        }                function get_video($id){            $sql = "SELECT * FROM video_m WHERE id_video = ? ";            $query = $this->db->query($sql, array($id));                        if ($query->num_rows() > 0) {                $result = $query->row_array();                $query->free_result();                return $result;            } else {                return false;            }        }                function get_video_by_id($id) {            $this->db->where('id_video', $id);            $query = $this->db->get('video_m');                        if ($query->num_rows() > 0) {                $result = $query->row_array();                $query->free_result();                return $result;            } else {                return false;            }        }                function process_video_add($params) {            $sql = "INSERT INTO video_m (judul_video, keterangan, sumber,  tipe, judul_english, keterangan_english)                VALUES (?, ?, ?, ?, ?, ?)";            return $this->db->query($sql, $params);        }                function process_video_edit($params) {            $sql = "UPDATE video_m SET judul_video = ?, keterangan = ?, sumber = ?,  tipe = ?, judul_english = ?, keterangan_english = ?                 WHERE id_video = ?";            return $this->db->query($sql, $params);        }                function process_update_embed($params) {            $sql = "UPDATE video_m SET video_embed = ?  WHERE id_video = ?";            return $this->db->query($sql, $params);        }                function process_video_delete($id) {            $this->db->where('id_video', $id);            return $this->db->delete('video_m');        }    }