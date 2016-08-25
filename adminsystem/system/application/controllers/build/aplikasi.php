<?php
// important * untuk application base dari halaman ini
require_once( APPPATH.'controllers/base/build.layout.class.php' );

class Aplikasi extends ApplicationBase {

    function  __construct() {
        // load application base
        parent::ApplicationBase();
    }

    public function index() {

    }

    public function update() {
        // load library
        // 
        // template content
        $this->smarty->assign("template_content", "web/build/aplikasi-update");
        // assign variable
        // url
        $this->smarty->assign("url_process", site_url("build/aplikasi/process_update"));
        // data
        $data = $this->buildsystem->get_aplikasi_data();
        $this->smarty->assign("data", $data[0]);
        // notification
        
        // display document
        $this->smarty->view( 'web/base/document.html');
    }

    public function process_update() {
        // load library
        $this->load->library('form_validation');
        // set rules
        $this->form_validation->set_rules('site_name', 'Site Name', 'required');
        $this->form_validation->set_rules('site_description', 'Site Description', 'required');
        $this->form_validation->set_rules('site_url', 'Site Description', 'required');
        $this->form_validation->set_rules('site_email', 'Site Description', 'required');
        $this->form_validation->set_rules('smtp_host', 'Site Description', 'required');
        $this->form_validation->set_rules('smtp_port', 'Site Description', 'required');
        $this->form_validation->set_rules('smtp_username', 'Site Description', 'required');
        $this->form_validation->set_rules('smtp_password', 'Site Description', 'required');
        $this->form_validation->set_rules('maintenance', 'Site Description', 'required');
        $this->form_validation->set_rules('version', 'Versi');
        // run
        if ($this->form_validation->run()) {
            if(!$this->buildsystem->process_aplikasi_update()) {
                $this->form_validation->set_message("Data gagal disimpan");
            }
        }
        // send notification
        
        // default redirect
        redirect('build/aplikasi/update');
    }
}
?>