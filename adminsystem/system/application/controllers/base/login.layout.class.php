<?php
class ApplicationBase extends Controller {

    // init object

    // init variable
    private $basethemes = "login/style.css";

    public function  ApplicationBase() {
        // load basic controller
        parent::Controller();
        // load smarty
        $this->base_load_smarty();
        // load base library
        $this->base_load_class();
        // load application base
        $this->base_load_app();
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
        // load themes
        $this->basethemes = "themes/" . $this->basethemes;
        if(is_file($this->basethemes)) {
            $this->smarty->assign("themespath", $this->config->item('base_url') . $this->basethemes);
        }
    }

    protected function base_load_class() {
        // load site model
        $this->load->model("buildsystem");
        // load library

    }

    protected function base_load_authority() {

    }

    protected function base_load_view() {
        // app link
        $this->display_base_link();
        // login
        $this->display_login();
    }

    /*
    // private function ------------------------------------------------------------------
    */

    private function display_base_link() {
        // url
        $this->smarty->assign("url_process", site_url("build/login/process_login"));
        $this->smarty->assign("url_logout", site_url("build/login/process_logout"));
        $this->smarty->assign("url_menu", site_url("build/welcome"));
    }

    private function display_login() {
        // login status
        $state = $this->uri->segment(4);
        $this->smarty->assign('logged_in', $state);
        // still login
        $session_login = $this->session->userdata('build_system_login');
        if($session_login) {
            $this->smarty->assign('logged_in', 'still');
        }
    }
}
?>