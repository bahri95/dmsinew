<?php
// important * untuk application base dari halaman ini
require_once( APPPATH.'controllers/base/build.layout.class.php' );

class Map extends ApplicationBase {

    private $id_auth;
    private $id_group;

    function  __construct() {
        // load application base
        parent::ApplicationBase();
        // init variable global
        $this->id_auth = $this->uri->segment(4, 0);
    }

    public function index() {
        // template content
        $this->smarty->assign("template_content", "web/build/map-list");
        // assign variable
        // url
        $this->smarty->assign("url_list", site_url("build/map"));
        // data
        $data = $this->buildsystem->get_authority_data();
        $this->smarty->assign("no", 1);
        $this->smarty->assign("data", $data);
        // notification

        // display document
        $this->smarty->view( 'web/base/document.html');
    }

    public function roles() {
        // template content
        $this->smarty->assign("template_content", "web/build/map-roles");
        // assign variable
        // url
        $this->smarty->assign("url_list", site_url("build/map"));
        $this->smarty->assign("url_process", site_url("build/map/process"));
        // data
        // detail groups
        $detail = $this->buildsystem->get_detail_auth_by_id($this->id_auth);
        if(isset($detail[0])) {
            $this->id_group = $detail[0]->id_group;
            $this->smarty->assign("judul_site", $detail[0]->nama);
            $this->smarty->assign("id_auth", $detail[0]->id_auth);
            $this->smarty->assign("auth_name", $detail[0]->auth_name);
        }
        // selected features
        $arr_selected = array();
        $result_selected = $this->buildsystem->get_selected_menu_by_auth($this->id_auth);
        if($result_selected) {
            foreach($result_selected as $value) {
                $arr_selected[] = $value->id_nav;
            }
        }
        // list menu
        $this->_display_menu($arr_selected);
        // notification

        // display document
        $this->smarty->view( 'web/base/document.html');
    }

    private function _display_menu($arr_selected) {
        $html = "";
        // get data
        $list_data = $this->buildsystem->get_menu_data_by_group($this->id_group, 0);
        if($list_data) {
            // list menu
            foreach($list_data as $data) {
                // selected
                if(in_array($data->id_nav, $arr_selected))
                    $selected = 'checked="checked"';
                else
                    $selected = '';
                // string html
                $html .= "<li>";
                $html .= "<label>";
                $html .= '<input type="checkbox" name="id_nav[]" value="'.$data->id_nav.'" '.$selected.' /> ';
                $html .= $data->title;
                $html .= '</label> ';
                // child display
                $html .= $this->_display_sub_menu($data->id_nav, $arr_selected);
                $html .= "</li>";
            }
        }
        $this->smarty->assign("list_menu_data", $html);
    }

    private function _display_sub_menu($id_parent, $arr_selected) {
        $html = "";
        // get data
        $list_data = $this->buildsystem->get_menu_data_by_group($this->id_group, $id_parent);
        if($list_data) {
            $html .= "<ul>";
            // list menu
            foreach($list_data as $data) {
                // selected
                if(in_array($data->id_nav, $arr_selected))
                    $selected = 'checked="checked"';
                else
                    $selected = '';
                // string html
                $html .= "<li>";
                $html .= "<label>";
                $html .= '<input type="checkbox" name="id_nav[]" value="'.$data->id_nav.'" '.$selected.' /> ';
                $html .= $data->title;
                $html .= '</label> ';
                // child display
                $html .= $this->_display_sub_menu($data->id_nav, $arr_selected);
                $html .= "</li>";
            }
            $html .= "</ul>";
        }
        return $html;
    }

    // processing

    public function process() {
        // load library
        $this->load->library('form_validation');
        // set rules
        $this->form_validation->set_rules('id_auth', 'Authority', 'required');
        // run
        if ($this->form_validation->run()) {
            // delete
            $this->buildsystem->process_delete_menu_auth($this->input->post('id_auth'));
            // insert
            $arr_nav = $this->input->post('id_nav');
            if(!empty($arr_nav)){
                foreach($arr_nav as $id_nav){
                    $this->buildsystem->process_add_menu_auth($this->input->post('id_auth'), $id_nav);
                }
            }
        }
        // default redirect
        redirect('build/map/roles/'.$this->input->post('id_auth'));
    }
}
?>