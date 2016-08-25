<?php
// important * untuk application base dari halaman ini
require_once( APPPATH.'controllers/base/build.layout.class.php' );

class Menu extends ApplicationBase {

    private $id_group;

    function  __construct() {
        // load application base
        parent::ApplicationBase();
        // init variable global
        $this->id_group = $this->uri->segment(4, 0);
    }

    public function index() {
        // template content
        $this->smarty->assign("template_content", "web/build/menu-list");
        // assign variable
        // url
        $this->smarty->assign("url_add", site_url("build/menu/add"));
        $this->smarty->assign("url_list", site_url("build/menu"));
        // data
        $data = $this->buildsystem->get_portal_menu_data();
        $this->smarty->assign("data", $data);
        // notification

        // display document
        $this->smarty->view( 'web/base/document.html');
    }

    public function add() {
        // template content
        $this->smarty->assign("template_content", "web/build/menu-add");
        // load
        $this->layout->load_javascript('js/jquery/jquery-1.4.2.min.js');
        $this->layout->load_javascript('js/jquery.treeview/jquery.treeview.min.js');
        $this->layout->load_style('styles/jquery-treeview-style/jquery.treeview.css');
        // assign variable
        // url
        $this->smarty->assign("url_add", site_url("build/menu/add/".$this->id_group));
        $this->smarty->assign("url_portal", site_url("build/menu"));
        $this->smarty->assign("url_process", site_url("build/menu/process_add"));
        // --
        $this->smarty->assign("active_add", 'class="tab-nav-active"');
        // data
        // detail groups
        $group = $this->buildsystem->get_portal_by_id($this->id_group);
        if(isset($group[0])) {
            $this->smarty->assign("judul_site", $group[0]->judul_site);
            $this->smarty->assign("id_group", $group[0]->id_group);
        }
        // add

        // list menu
        $this->_display_menu(0);
        // notification

        // display document
        $this->smarty->view( 'web/base/document.html');
    }

    private function _display_menu($selected_id) {
        $html = "";
        // get data
        $list_data = $this->buildsystem->get_menu_data_by_group($this->id_group, 0);
        if($list_data) {
            // list menu
            foreach($list_data as $data) {
                // selected
                if($selected_id == $data->id_nav)
                    $selected = 'checked="checked"';
                else
                    $selected = '';
                // string html
                $html .= "<li>";
                $html .= "<label>";
                $html .= '<input type="radio" name="id_parent" value="'.$data->id_nav.'" '.$selected.' /> ';
                $html .= $data->title;
                $html .= '</label> ';
                $html .= '[ <a href="'.site_url('build/menu/edit/'.$this->id_group.'/'.$data->id_nav).'">Edit</a> - ';
                $html .= '<a href="'.site_url('build/menu/hapus/'.$this->id_group.'/'.$data->id_nav).'">Hapus</a> ]';
                // child display
                $html .= $this->_display_sub_menu($data->id_nav, $selected_id);
                $html .= "</li>";
            }
        }
        $this->smarty->assign("list_menu_data", $html);
    }

    private function _display_sub_menu($id_parent, $selected_id) {
        $html = "";
        // get data
        $list_data = $this->buildsystem->get_menu_data_by_group($this->id_group, $id_parent);
        if($list_data) {
            $html .= "<ul>";
            // list menu
            foreach($list_data as $data) {
                // selected
                if($selected_id == $data->id_nav)
                    $selected = 'checked="checked"';
                else
                    $selected = '';
                // string html
                $html .= "<li>";
                $html .= "<label>";
                $html .= '<input type="radio" name="id_parent" value="'.$data->id_nav.'" '.$selected.' /> ';
                $html .= $data->title;
                $html .= '</label> ';
                $html .= '[ <a href="'.site_url('build/menu/edit/'.$this->id_group.'/'.$data->id_nav).'">Edit</a> - ';
                $html .= '<a href="'.site_url('build/menu/hapus/'.$this->id_group.'/'.$data->id_nav).'">Hapus</a> ]';
                // child display
                $html .= $this->_display_sub_menu($data->id_nav, $selected_id);
                $html .= "</li>";
            }
            $html .= "</ul>";
        }
        return $html;
    }

    public function edit() {
        // template content
        $this->smarty->assign("template_content", "web/build/menu-add");
        // load
        $this->layout->load_javascript('js/jquery/jquery-1.4.2.min.js');
        $this->layout->load_javascript('js/jquery.treeview/jquery.treeview.min.js');
        $this->layout->load_style('styles/jquery-treeview-style/jquery.treeview.css');
        // assign variable
        // url
        $this->smarty->assign("url_add", site_url("build/menu/add/".$this->id_group));
        $this->smarty->assign("url_portal", site_url("build/menu"));
        $this->smarty->assign("url_process", site_url("build/menu/process_edit"));
        // --
        $this->smarty->assign("active_edit", '<li><a href="#" class="tab-nav-active">Edit</a></li>');
        // data
        // detail groups
        $group = $this->buildsystem->get_portal_by_id($this->id_group);
        if(isset($group[0])) {
            $this->smarty->assign("judul_site", $group[0]->judul_site);
            $this->smarty->assign("id_group", $group[0]->id_group);
        }
        // edit
        $id_nav = $this->uri->segment(5, 0);
        $data = $this->buildsystem->get_menu_by_id($id_nav);
        if(isset($data[0])) {
            $this->smarty->assign("data", $data[0]);
            $this->smarty->assign("uses_checked", (($data[0]->uses == 1)?'checked="checked"':''));
            $this->smarty->assign("displayed_checked", (($data[0]->displayed == 1)?'checked="checked"':''));
            $this->smarty->assign("page_type_process", (($data[0]->page_type == 'process')?'selected="selected"':''));
            // list menu
            $this->_display_menu($data[0]->id_parent);
        }
        // notification

        // display document
        $this->smarty->view( 'web/base/document.html');
    }

    public function hapus() {
        // template content
        $this->smarty->assign("template_content", "web/build/menu-hapus");
        // assign variable
        // url
        $this->smarty->assign("url_add", site_url("build/menu/add/".$this->id_group));
        $this->smarty->assign("url_portal", site_url("build/menu"));
        $this->smarty->assign("url_process", site_url("build/menu/process_hapus"));
        // data
        // detail groups
        $group = $this->buildsystem->get_portal_by_id($this->id_group);
        if(isset($group[0])) {
            $this->smarty->assign("judul_site", $group[0]->judul_site);
            $this->smarty->assign("id_group", $group[0]->id_group);
        }
        // hapus
        $id_nav = $this->uri->segment(5, 0);
        $data = $this->buildsystem->get_menu_by_id($id_nav);
        if(isset($data[0])) {
            $this->smarty->assign("data", $data[0]);
        }
        // notification

        // display document
        $this->smarty->view( 'web/base/document.html');
    }

    // processing

    public function process_add() {
        // load library
        $this->load->library('form_validation');
        // set rules
        $this->form_validation->set_rules('id_group', 'Site Portal', 'required');
        $this->form_validation->set_rules('title', 'Nama', 'required');
        $this->form_validation->set_rules('description', 'Deskripsi', 'required');
        $this->form_validation->set_rules('app_path', 'Aplikasi', 'required');
        $this->form_validation->set_rules('module_path', 'Module', 'required');
        $this->form_validation->set_rules('page_path', 'Halaman', 'required');
        $this->form_validation->set_rules('uses', 'Digunakan', 'required');
        $this->form_validation->set_rules('order_num', 'Urutan', 'required');
        $this->form_validation->set_rules('displayed', 'Ditampilkan', 'required');
        $this->form_validation->set_rules('page_type', 'Jenis Halaman', 'required');
        // run
        if ($this->form_validation->run()) {
            if(!$this->buildsystem->process_menu_add()) {
                $this->form_validation->set_message("Data gagal disimpan");
            }
        }
        // default redirect
        redirect('build/menu/add/'.$this->input->post('id_group'));
    }

    public function process_edit() {
        // load library
        $this->load->library('form_validation');
        // set rules
        $this->form_validation->set_rules('id_group', 'Site Portal', 'required');
        $this->form_validation->set_rules('title', 'Nama', 'required');
        $this->form_validation->set_rules('description', 'Deskripsi', 'required');
        $this->form_validation->set_rules('app_path', 'Aplikasi', 'required');
        $this->form_validation->set_rules('module_path', 'Module', 'required');
        $this->form_validation->set_rules('page_path', 'Halaman', 'required');
        $this->form_validation->set_rules('uses', 'Digunakan', 'required');
        $this->form_validation->set_rules('order_num', 'Urutan', 'required');
        $this->form_validation->set_rules('displayed', 'Ditampilkan', 'required');
        $this->form_validation->set_rules('page_type', 'Jenis Halaman', 'required');
        // run
        if ($this->form_validation->run()) {
            if(!$this->buildsystem->process_menu_edit()) {
                $this->form_validation->set_message("Data gagal disimpan");
            }
        }
        // default redirect
        redirect('build/menu/edit/'.$this->input->post('id_group').'/'.$this->input->post('id_nav'));
    }

    public function process_hapus() {
        // load library
        $this->load->library('form_validation');
        // set rules
        $this->form_validation->set_rules('id_group', 'Aplikasi', 'required');
        $this->form_validation->set_rules('id_nav', 'Menu', 'required');
        // run
        if ($this->form_validation->run()) {
            if($this->buildsystem->process_menu_delete()) {
                // update child
                $this->buildsystem->process_menu_update_parent();
            }else{
                $this->form_validation->set_message("Data gagal dihapus");
                // redirect
                redirect('build/menu/hapus/'.$this->input->post('id_group').'/'.$this->input->post('id_nav'));
            }
        }
        // default redirect
        redirect('build/menu/add/'.$this->input->post('id_group'));
    }
}
?>