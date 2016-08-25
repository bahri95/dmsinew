<?php
// important * untuk application base dari halaman ini
require_once( APPPATH.'controllers/base/login.layout.class.php' );

// page controller class
class Login extends ApplicationBase {

    function  __construct() {
        // load application base
        parent::ApplicationBase();
    }

    public function index() {
        // template content
        $this->smarty->assign("template_content", "web/build/login");
        // display document
        $this->smarty->view( 'web/base/document-login.html');
    }

    public function process_login() {
        // load library
        $this->load->library('form_validation');
        // set rules
        $this->form_validation->set_rules('username', 'Username', 'required');
        $this->form_validation->set_rules('pass', 'Password', 'required');
        // run
        if ($this->form_validation->run()) {
            if((strtolower($this->input->post('username')) == 'build') AND (strtolower($this->input->post('pass')) == 'system')) {
                // set session
                $this->session->set_userdata(array('build_system_login' => true));
                // redirect to welcome
                redirect('build/welcome');
            }
        }
        // default redirect
        redirect('build/login/index/error');
    }

    public function process_logout() {
        $this->session->sess_destroy();
        // default redirect
        redirect('build/login');
    }
}
?>