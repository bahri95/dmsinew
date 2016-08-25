<?php
class ApplicationBase extends Controller {

    // init object

    // init variable
    private $basethemes = "default/style.css";
    private $int_nav;
    private $int_parent;
    private $int_parent_selected;

    public function  ApplicationBase() {
        // load basic controller
        parent::Controller();
        // load smarty
        $this->base_load_smarty();
        // load application base
        $this->base_load_app();
        // load base library
        $this->base_load_class();
        // load authority
        $this->base_load_authority();
        // load base view
        $this->base_load_view();
        // load other

    }

    final function base_load_smarty() {
        $this->smarty->template_dir = BASEPATH . "application/views";
        $this->smarty->compile_dir = BASEPATH . "application/views_c";
    }

    protected function base_load_app() {
        // set global variable
        define("BASEURL", $this->config->item('base_url'));
        $this->smarty->assign("BASEURL", BASEURL);
        // load layout
        $this->load->library('Layout');
        $this->layout->set_smarty($this->smarty);
        // load themes
        $this->basethemes = "themes/" . $this->basethemes;
        if(is_file($this->basethemes)) {
            $this->smarty->assign("themespath", $this->config->item('base_url') . $this->basethemes);
        }
    }

    protected function base_load_class() {
        // load site model
        $this->load->model("buildsystem");
    }

    protected function base_load_authority() {
        // authority
        $session_login = $this->session->userdata('build_system_login');
        if(!$session_login) {
            redirect('build/login');
        }
    }

    protected function base_load_view() {
        // app link
        $this->display_base_link();
        // site
        $this->display_site_item();
        // navigation
        $this->display_navigation();
    }

    // private function

    private function display_base_link() {
        // url
        $this->smarty->assign('url_home', site_url('build/welcome'));
        $this->smarty->assign("url_logout", site_url("build/login/process_logout"));
    }

    private function display_site_item() {
        $params = array($this->uri->segment(1), $this->uri->segment(2), $this->uri->segment(3, 'index'));
        $result = $this->buildsystem->get_current_page($params);
        if($result) {
            $this->smarty->assign('page_title', $result[0]->judul);
            $this->int_nav 	= $result[0]->id_nav;
            $this->int_parent 	= $result[0]->id_parent;
        }else {
            $this->smarty->assign('page_title', "Welcome");
        }
    }

    private function display_navigation() {
        // get parent group
        $this->int_parent_selected = $this->buildsystem->get_parent_group_by_Id_nav(array($this->int_parent), 0);
        if(empty($this->int_parent_selected)) {
            $this->int_parent_selected = $this->int_nav;
        }
        // parse menu
        $result = $this->buildsystem->get_navigation_by_parent(array(0));
        $html = "";
        if($result) {
            $html = "<ul>";
            foreach($result as $data) {
                // selected
                if($this->int_parent_selected == $data->id_nav)
                    $selected = 'class="side-active"';
                else
                    $selected = '';
                // string html
                $html .= "<li>";
                $html .= '<a href="'.site_url($data->group.'/'.$data->module.'/'.$data->page).'" '.$selected.' >';
                $html .= $data->judul;
                $html .= '</a>';
                $html .= "</li>";
                // child display
                $html .= $this->display_sub_navigation($data->id_nav);
            }
            $html .= "</ul>";
        }
        $this->smarty->assign('list_navigation', $html);
    }

    private function display_sub_navigation($parent) {
        $int_parent_active = $this->buildsystem->get_parent_group_by_Id_nav(array($this->int_nav), $this->int_parent_selected);
        // parse menu
        $result = $this->buildsystem->get_navigation_by_parent(array(0));
        $html = "";
        // parse menu
        $result = $this->buildsystem->get_navigation_by_parent(array($parent));
        $html = "";
        if($result) {
            $html = "<ul>";
            foreach($result as $data) {
                // selected
                if($this->int_parent_selected == $data->id_nav)
                    $selected = 'class="side-active"';
                else
                    $selected = '';
                // string html
                $html .= "<li>";
                $html .= '<a href="'.site_url($data->group.'/'.$data->module.'/'.$data->page).'" $selected>';
                $html .= $data->judul;
                $html .= '</a>';
                $html .= "</li>";
                // child display
                $sub_html = $this->display_sub_navigation($data->id_nav);
                $html .= $str_child;
            }
            $html .= "</ul>";
        }
        return $html;
    }
}
?>