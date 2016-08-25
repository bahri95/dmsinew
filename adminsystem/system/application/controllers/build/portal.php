<?php
// important * untuk application base dari halaman ini
require_once( APPPATH.'controllers/base/build.layout.class.php' );

class Portal extends ApplicationBase {

    function  __construct() {
        // load application base
        parent::ApplicationBase();
    }

    public function index() {
        // template content
        $this->smarty->assign("template_content", "web/build/portal-list");
        // assign variable
        // url
        $this->smarty->assign("url_add", site_url("build/portal/add"));
        $this->smarty->assign("url_list", site_url("build/portal"));
        // data
        $data = $this->buildsystem->get_portal_data();
        $this->smarty->assign("data", $data);
        // notification

        // display document
        $this->smarty->view( 'web/base/document.html');
    }

    public function add() {
        // template content
        $this->smarty->assign("template_content", "web/build/portal-add");
        // assign variable
        // url
        $this->smarty->assign("url_add", site_url("build/portal/add"));
        $this->smarty->assign("url_list", site_url("build/portal"));
        $this->smarty->assign("url_process", site_url("build/portal/process_add"));
        // --
        $this->smarty->assign("active_add", 'class="tab-nav-active"');
        // data

        // notification

        // display document
        $this->smarty->view( 'web/base/document.html');
    }

    public function edit() {
        // template content
        $this->smarty->assign("template_content", "web/build/portal-add");
        // assign variable
        // url
        $this->smarty->assign("url_add", site_url("build/portal/add"));
        $this->smarty->assign("url_list", site_url("build/portal"));
        $this->smarty->assign("url_process", site_url("build/portal/process_edit"));
        // --
        $this->smarty->assign("active_edit", '<li><a href="#" class="tab-nav-active">Edit</a></li>');
        // data
        $id_group = $this->uri->segment(4);
        $data = $this->buildsystem->get_portal_by_id($id_group);
        $this->smarty->assign("data", $data[0]);
        // notification

        // display document
        $this->smarty->view( 'web/base/document.html');
    }

    public function hapus() {
        // template content
        $this->smarty->assign("template_content", "web/build/portal-hapus");
        // assign variable
        // url
        $this->smarty->assign("url_add", site_url("build/portal/add"));
        $this->smarty->assign("url_list", site_url("build/portal"));
        $this->smarty->assign("url_process", site_url("build/portal/process_hapus"));
        // data
        $id_group = $this->uri->segment(4);
        $data = $this->buildsystem->get_portal_by_id($id_group);
        $this->smarty->assign("data", $data[0]);
        // notification

        // display document
        $this->smarty->view( 'web/base/document.html');
    }

    // processing

    public function process_add() {
        // load library
        $this->load->library('form_validation');
        // set rules
        $this->form_validation->set_rules('nama', 'Nama', 'required');
        $this->form_validation->set_rules('deskripsi', 'Deskripsi', 'required');
        $this->form_validation->set_rules('judul_site', 'Judul', 'required');
        $this->form_validation->set_rules('meta_desc', 'Meta Description', 'required');
        $this->form_validation->set_rules('meta_key', 'Meta Keyword', 'required');
        // run
        if ($this->form_validation->run()) {
            if(!$this->buildsystem->process_portal_add()) {
                $this->form_validation->set_message("Data gagal disimpan");
            }
        }
        // default redirect
        redirect('build/portal/add');
    }

    public function process_edit() {
        // load library
        $this->load->library('form_validation');
        // set rules
        $this->form_validation->set_rules('nama', 'Nama', 'required');
        $this->form_validation->set_rules('deskripsi', 'Deskripsi', 'required');
        $this->form_validation->set_rules('judul_site', 'Judul', 'required');
        $this->form_validation->set_rules('meta_desc', 'Meta Description', 'required');
        $this->form_validation->set_rules('meta_key', 'Meta Keyword', 'required');
        // run
        if ($this->form_validation->run()) {
            if(!$this->buildsystem->process_portal_edit()) {
                $this->form_validation->set_message("Data gagal disimpan");
            }
        }
        // default redirect
        redirect('build/portal/edit/'.$this->input->post('id_group'));
    }

    public function process_hapus() {
        // load library
        $this->load->library('form_validation');
        // set rules
        $this->form_validation->set_rules('id_group', 'Group', 'required');
        // run
        if ($this->form_validation->run()) {
            if(!$this->buildsystem->process_portal_delete()) {
                $this->form_validation->set_message("Data gagal dihapus");
                // redirect
                redirect('build/portal/hapus/'.$this->input->post('id_group'));
            }
        }
        // default redirect
        redirect('build/portal');
    }
}
?>