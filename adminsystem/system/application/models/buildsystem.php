<?php
class buildsystem extends Model {

    var $title   = '';
    var $content = '';
    var $date    = '';

    function buildsystem() {
        // Call the Model constructor
        parent::Model();
    }

    // site

    function get_current_page($params) {
        $sql = "SELECT * FROM sys_build_menu_m a
                WHERE a.group = ? AND a.module = ? AND a.page = ?
                ORDER BY id_nav DESC LIMIT 0,1";
        $query = $this->db->query($sql, $params);
        // echo $this->db->last_query();
        if ($query->num_rows() > 0) {
            return $query->result();
        }else {
            return false;
        }
    }

    function get_parent_group_by_Id_nav($params, $limit) {
        $sql = "SELECT a.id_nav, a.id_parent FROM sys_build_menu_m a
                WHERE a.id_nav = ? LIMIT 0,1";
        $query = $this->db->query($sql, $params);
        if ($query->num_rows() > 0) {
            $result = $query->result();
            if($result[0]->id_parent == $limit) {
                return $result[0]->id_nav;
            }else {
                $params = array($result[0]->id_parent);
                return $this->get_parent_group_by_Id_nav($params, $limit);
            }
        }else {
            return $params[0];
        }
    }

    function get_navigation_by_parent($params) {
        $sql = "SELECT * FROM sys_build_menu_m a
                WHERE a.id_parent = ? AND displayed = 'yes'
                ORDER BY a.id_nav";
        $query = $this->db->query($sql, $params);
        if ($query->num_rows() > 0) {
            return $query->result();
        }else {
            return false;
        }
    }

    // end of site
    // aplikasi

    function get_aplikasi_data() {
        $query = $this->db->get('sys_settings_m');
        if ($query->num_rows() > 0) {
            return $query->result();
        }else {
            return false;
        }
    }

    // portal

    function get_portal_data() {
        $this->db->order_by('id_group', 'ASC');
        $query = $this->db->get('sys_group_m');
        if ($query->num_rows() > 0) {
            return $query->result();
        }else {
            return false;
        }
    }

    function get_portal_by_id($id) {
        $this->db->where('id_group', $id);
        $query = $this->db->get('sys_group_m');
        if ($query->num_rows() > 0) {
            return $query->result();
        }else {
            return false;
        }
    }

    // authority

    function get_authority_data() {
        $query = $this->db->query("SELECT a.*, b.nama'site_portal' FROM sys_authority_m a
                INNER JOIN sys_group_m b ON a.id_group = b.id_group
                ORDER BY id_group ASC, auth_name ASC");
        if ($query->num_rows() > 0) {
            return $query->result();
        }else {
            return false;
        }
    }

    function get_authority_by_id($id) {
        $this->db->where('id_auth', $id);
        $query = $this->db->get('sys_authority_m');
        if ($query->num_rows() > 0) {
            return $query->result();
        }else {
            return false;
        }
    }

    function get_detail_auth_by_id($id) {
        $sql = "SELECT a.id_auth, auth_name, b.id_group, b.nama
                FROM sys_authority_m a
                INNER JOIN sys_group_m b ON a.id_group = b.id_group
                WHERE a.id_auth = ?";
        $query = $this->db->query($sql, array($id));
        if ($query->num_rows() > 0) {
            return $query->result();
        }else {
            return false;
        }
    }

    function get_selected_menu_by_auth($id) {
        $this->db->where('id_auth', $id);
        $query = $this->db->get('sys_menu_authority_t');
        if ($query->num_rows() > 0) {
            return $query->result();
        }else {
            return false;
        }
    }

    function get_selected_auth_by_admin($id) {
        $this->db->where('id_user', $id);
        $query = $this->db->get('sys_user_authority_t');
        if ($query->num_rows() > 0) {
            return $query->result();
        }else {
            return false;
        }
    }

    // menu

    function get_portal_menu_data() {
        $sql = "SELECT a.*, COUNT(b.id_nav)'menu' FROM sys_group_m a
                LEFT JOIN sys_menu_m b ON a.id_group = b.id_group
                GROUP BY a.id_group
                ORDER BY a.id_group";
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0) {
            return $query->result();
        }else {
            return false;
        }
    }

    function get_menu_data_by_group($group, $parent) {
        $this->db->where('id_group', $group);
        $this->db->where('id_parent', $parent);
        $this->db->order_by('order_num', 'ASC');
        $query = $this->db->get('sys_menu_m');
        if ($query->num_rows() > 0) {
            return $query->result();
        }else {
            return false;
        }
    }

    function get_menu_by_id($id_nav) {
        $this->db->where('id_nav', $id_nav);
        $query = $this->db->get('sys_menu_m');
        if ($query->num_rows() > 0) {
            return $query->result();
        }else {
            return false;
        }
    }

    // processing

    function process_aplikasi_update() {
        $this->load->helper('date');
        $data = array(
                'site_name' => $this->input->post('site_name'),
                'site_description' => $this->input->post('site_description'),
                'site_url' => $this->input->post('site_url'),
                'site_email' => $this->input->post('site_email'),
                'smtp_host' => $this->input->post('smtp_host'),
                'smtp_port' => $this->input->post('smtp_port'),
                'smtp_username' => $this->input->post('smtp_username'),
                'smtp_password' => $this->input->post('smtp_password'),
                'maintenance' => $this->input->post('maintenance'),
                'maintenance_message' => $this->input->post('maintenance_message'),
                'version' => $this->input->post('version'),
                'mdd' => unix_to_human(time(), TRUE, 'er')
        );
        return $this->db->update('sys_settings_m', $data);
    }

    // portal

    function process_portal_add() {
        $this->load->helper('date');
        $data = array(
                'nama' => $this->input->post('nama'),
                'deskripsi' => $this->input->post('deskripsi'),
                'judul_site' => $this->input->post('judul_site'),
                'meta_desc' => $this->input->post('meta_desc'),
                'meta_key' => $this->input->post('meta_key'),
                'mdd' => unix_to_human(time(), TRUE, 'er')
        );
        return $this->db->insert('sys_group_m', $data);
    }

    function process_portal_edit() {
        $this->load->helper('date');
        $data = array(
                'nama' => $this->input->post('nama'),
                'deskripsi' => $this->input->post('deskripsi'),
                'judul_site' => $this->input->post('judul_site'),
                'meta_desc' => $this->input->post('meta_desc'),
                'meta_key' => $this->input->post('meta_key'),
                'mdd' => unix_to_human(time(), TRUE, 'er')
        );
        $this->db->where('id_group', $this->input->post('id_group'));
        return $this->db->update('sys_group_m', $data);
    }

    function process_portal_delete() {
        $this->load->helper('date');
        $this->db->where('id_group', $this->input->post('id_group'));
        return $this->db->delete('sys_group_m');
    }

    // authority

    function process_authority_add() {
        $this->load->helper('date');
        $data = array(
                'id_group' => $this->input->post('id_group'),
                'auth_name' => $this->input->post('auth_name'),
                'deskripsi' => $this->input->post('deskripsi'),
                'mdb' => 1,
                'mdd' => unix_to_human(time(), TRUE, 'er')
        );
        return $this->db->insert('sys_authority_m', $data);
    }

    function process_authority_edit() {
        $this->load->helper('date');
        $data = array(
                'id_group' => $this->input->post('id_group'),
                'auth_name' => $this->input->post('auth_name'),
                'deskripsi' => $this->input->post('deskripsi'),
                'mdd' => unix_to_human(time(), TRUE, 'er')
        );
        $this->db->where('id_auth', $this->input->post('id_auth'));
        return $this->db->update('sys_authority_m', $data);
    }

    function process_authority_delete() {
        $this->load->helper('date');
        $this->db->where('id_auth', $this->input->post('id_auth'));
        return $this->db->delete('sys_authority_m');
    }

    function process_delete_menu_auth() {
        $this->load->helper('date');
        $this->db->where('id_auth', $this->input->post('id_auth'));
        return $this->db->delete('sys_menu_authority_t');
    }

    function process_add_menu_auth($id_auth, $id_nav) {
        $data = array(
                'id_auth' => $id_auth,
                'id_nav' => $id_nav
        );
        return $this->db->insert('sys_menu_authority_t', $data);
    }

    // menu

    function process_menu_add() {
        $this->load->helper('date');
        $data = array(
                'id_group' => $this->input->post('id_group'),
                'id_parent' => $this->input->post('id_parent'),
                'title' => $this->input->post('title'),
                'description' => $this->input->post('description'),
                'app_path' => $this->input->post('app_path'),
                'module_path' => $this->input->post('module_path'),
                'page_path' => $this->input->post('page_path'),
                'uses' => $this->input->post('uses'),
                'order_num' => $this->input->post('order_num'),
                'displayed' => $this->input->post('displayed'),
                'page_type' => $this->input->post('page_type'),
                'mdb' => 1,
                'mdd' => unix_to_human(time(), TRUE, 'er')
        );
        return $this->db->insert('sys_menu_m', $data);
    }

    function process_menu_edit() {
        $this->load->helper('date');
        $data = array(
                'id_group' => $this->input->post('id_group'),
                'id_parent' => $this->input->post('id_parent'),
                'title' => $this->input->post('title'),
                'description' => $this->input->post('description'),
                'app_path' => $this->input->post('app_path'),
                'module_path' => $this->input->post('module_path'),
                'page_path' => $this->input->post('page_path'),
                'uses' => $this->input->post('uses'),
                'order_num' => $this->input->post('order_num'),
                'displayed' => $this->input->post('displayed'),
                'page_type' => $this->input->post('page_type'),
                'mdb' => 1,
                'mdd' => unix_to_human(time(), TRUE, 'er')
        );
        $this->db->where('id_nav', $this->input->post('id_nav'));
        return $this->db->update('sys_menu_m', $data);
    }

    function process_menu_delete() {
        $this->load->helper('date');
        $this->db->where('id_nav', $this->input->post('id_nav'));
        return $this->db->delete('sys_menu_m');
    }

    function process_menu_update_parent() {
        $data = array('id_parent' => $this->input->post('id_parent'));
        $this->db->where('id_parent', $this->input->post('id_nav'));
        return $this->db->update('sys_menu_m', $data);
    }
    
    // user authority
    
    function process_delete_auth_by_user() {
        $this->db->where('id_user', $this->input->post('id_user'));
        return $this->db->delete('sys_user_authority_t');
    }

    function process_add_auth_user($id_user, $id_auth) {
        $data = array(
                'id_user' => $id_user,
                'id_auth' => $id_auth
        );
        return $this->db->insert('sys_user_authority_t', $data);
    }

}
?>