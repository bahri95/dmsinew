<?php

class Profil extends MY_Controller {

    function  __construct() {
        // load application base
       parent::__construct();
	   $this->PrivateAppBase();
    }

    public function index() {
        // template content
        $this->smarty->assign("template_content", "private/profil/list");
        // load
        $this->load->model('profilmodel');
        $this->load->library('notification');
         $this->layout->load_javascript("js/admin/plugins/datatables/jquery.dataTables.js");
        $this->layout->load_javascript("js/admin/plugins/datatables/dataTables.bootstrap.js");
        // get data
        $data = $this->profilmodel->get_list_profil();
        $this->smarty->assign("data", $data);
        $this->smarty->assign("no", 1);
        // parse url
        $this->smarty->assign('url_add', site_url('private/profil/add'));
        $this->smarty->assign('url_list', site_url('private/profil/index'));
		$this->smarty->assign('url_edit', site_url('private/profil/edit'));
		$this->smarty->assign('url_delete', site_url('private/profil/hapus'));
        // notification
        $arr_notify = $this->notification->get_notification();
        // notification
        $this->smarty->assign("notification_msg", $arr_notify['message']);
        $this->smarty->assign("notification_status", (empty($arr_notify['message_status'])?'red':'green'));
        // display document
        $this->parser->parse( 'private/base-layout/document.html');
    }

    // switcher

    public function process($action) {
        switch($action) {
            case 'add':
                $this->process_add();
                break;
            case 'edit':
                $this->process_edit();
                break;
            case 'hapus':
                $this->process_hapus();
                break;
            default :
            // default redirect
                redirect('private/profil/add');
                break;
        }
    }

    public function add() {
        // template content
        $this->smarty->assign("template_content", "private/profil/add");
        //load
        $this->load->library('notification');
        //$this->layout->load_javascript("js/tinymce/tiny_mce.js");
		$this->layout->load_style("admin/css/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css");
        // url
        $this->smarty->assign("url_add", site_url("private/profil/add"));
        $this->smarty->assign("url_list", site_url("private/profil"));
        $this->smarty->assign("url_process", site_url("private/profil/process/add"));
        // notification
        $arr_notify = $this->notification->get_notification();
        if(!empty($arr_notify['post'])) {
            $this->smarty->assign("data", $arr_notify['post']);
        }
        // notification
        $this->smarty->assign("notification_msg", $arr_notify['message']);
        $this->smarty->assign("notification_status", (empty($arr_notify['message_status'])?'red':'green'));
        // display document
        $this->parser->parse( 'private/base-layout/document.html');
    }

    public function process_add() {
        // load library
        $this->load->model('profilmodel');
        $this->load->library('notification');
        // set rules
        $this->notification->check_post('judul', 'Judul', 'required');
        //$this->notification->check_post('content', 'Konten', 'required');
        $this->notification->check_post('order_num', 'Urutan', 'required');
        // run
        if ($this->notification->valid_input()) {
            // params
            $params = array(
                    'judul' => $this->input->post('judul'),
                    'content' => $this->input->post('content'),
                    'order_num' => $this->input->post('order_num'),
                    'judul_english' => $this->input->post('judul_english'),
                    'content_english' => $this->input->post('content_english'));
            // execute
            if($this->profilmodel->process_profil_add($params)) {
                $this->notification->clear_post();
                $this->notification->set_message("Data berhasil disimpan");
                $this->notification->sent_notification(true);
            }else {
                $this->notification->set_message("Data gagal disimpan");
                $this->notification->sent_notification(false);
            }
        }else {
            $this->notification->sent_notification(false);
        }
        // default redirect
        redirect('private/profil/add');
    }

    public function edit() {
        // template content
        $this->smarty->assign("template_content", "private/profil/edit");
        // load
        $this->load->model('profilmodel');
        $this->load->library('notification');
        $this->layout->load_javascript("js/tinymce/tiny_mce.js");
        // parse url
        $this->smarty->assign("url_add", site_url("private/profil/add"));
        $this->smarty->assign("url_list", site_url("private/profil"));
        $this->smarty->assign("url_process", site_url("private/profil/process/edit"));
        // data
        $id_info = $this->uri->segment(4, 0);
        $data = $this->profilmodel->get_profil_by_id($id_info);
        $this->smarty->assign("data", $data);
        // notification
        $arr_notify = $this->notification->get_notification();
        if(!empty($arr_notify['post'])) {
            $this->smarty->assign("data", $arr_notify['post']);
        }
        // notification
        $this->smarty->assign("notification_msg", $arr_notify['message']);
        $this->smarty->assign("notification_status", (empty($arr_notify['message_status'])?'red':'green'));
        // display document
        $this->parser->parse( 'private/base-layout/document.html');
    }
    public function process_edit() {
        // load library
        $this->load->model('profilmodel');
        $this->load->library('notification');
        // set rules
        $this->notification->check_post('id_info', 'Id Info', 'required');
        $this->notification->check_post('judul', 'Judul', 'required');
        $this->notification->check_post('judul_english', 'Judul English', 'required');
        $this->notification->check_post('content_english', 'Content English', 'required');
        //$this->notification->check_post('content', 'Content', 'required');
        $this->notification->check_post('order_num', 'Order Num', 'required');
        // run
        if ($this->notification->valid_input()) {
            // params
            $params = array(
                    'judul' => $this->input->post('judul'),
                    'content' => $this->input->post('content'),
                    'order_num' => $this->input->post('order_num'),
                    'judul_english' => $this->input->post('judul_english'),
                    'content_english' => $this->input->post('content_english'),
                    'id_info' => $this->input->post('id_info'));
            // execute
            if($this->profilmodel->process_profil_edit($params)) {
                $this->notification->clear_post();
                $this->notification->set_message("Data berhasil disimpan");
                $this->notification->sent_notification(true);
            }else {
                $this->notification->set_message("Data gagal disimpan");
                $this->notification->sent_notification(false);
            }
        }else {
            $this->notification->sent_notification(false);
        }
        // default redirect
        redirect('private/profil/edit/'.$this->input->post('id_info'));
    }


    public function hapus() {
        // template content
        $this->smarty->assign("template_content", "private/profil/hapus");
        // load
        $this->load->model('profilmodel');
        $this->load->library('notification');
        // parse url
        $this->smarty->assign("url_add", site_url("private/profil/add"));
        $this->smarty->assign("url_list", site_url("private/profil"));
        $this->smarty->assign("url_process", site_url("private/profil/process/hapus"));
        // data
        $id_info = $this->uri->segment(4, 0);
        $data = $this->profilmodel->get_profil_by_id($id_info);
        $this->smarty->assign("data", $data);
        // notification
        $arr_notify = $this->notification->get_notification();
        $this->smarty->assign("notification_msg", $arr_notify['message']);
        $this->smarty->assign("notification_status", (empty($arr_notify['message_status'])?'red':'green'));
        // display document
        $this->parser->parse( 'private/base-layout/document.html');
    }

    public function process_hapus() {
        // load library
        $this->load->library('notification');
        $this->load->model('profilmodel');
        // set rules
        $this->notification->check_post('id_info', 'Group', 'required');
        // run
        if ($this->notification->valid_input()) {
            // params
            $params = $this->input->post('id_info');
            // execute
            if($this->profilmodel->process_profil_delete($params)) {
                $this->notification->clear_post();
                $this->notification->set_message("Data berhasil dihapus");
                $this->notification->sent_notification(true);
                // redirect
                redirect('private/profil');
            }else {
                $this->notification->set_message("Data gagal dihapus");
                $this->notification->sent_notification(false);
            }
        }
        // default redirect
        redirect('private/profil/hapus/'.$this->input->post('id_info'));
    }
}