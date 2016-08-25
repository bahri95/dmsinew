<?php

class Propinsi extends MY_Controller {

    function  __construct() {
        // load application base
       parent::__construct();
	   $this->PrivateAppBase();
    }

    public function index() {
        // template content
        $this->smarty->assign("template_content", "private/propinsi/list");
        // your code here
        $this->load->library('pagination');
        $this->load->model('propinsimodel');
       
        $this->load->library('notification');
		$this->layout->load_javascript("js/admin/plugins/datatables/jquery.dataTables.js");
		$this->layout->load_javascript("js/admin/plugins/datatables/dataTables.bootstrap.js");
       
        //$this->smarty->assign("negara", $datanegara);
		$data = $this->propinsimodel->get_all_propinsi();
		$this->smarty->assign("propinsi", $data);
        $this->smarty->assign("no",1);
		// notification
        $arr_notify = $this->notification->get_notification();
        $this->smarty->assign("notification_msg", $arr_notify['message']);
        $notification_status = (empty($arr_notify['message_status'])?'red':'green');
        $this->smarty->assign("notification_status", $notification_status);
        // parse url
        $this->smarty->assign('url_add', site_url('private/propinsi/add'));
        $this->smarty->assign('url_list', site_url('private/propinsi/index'));
		$this->smarty->assign('url_edit', site_url('private/propinsi/edit'));
		$this->smarty->assign('url_delete', site_url('private/propinsi/hapus'));
        $this->smarty->assign('url_process', site_url('private/propinsi/process/hapus'));
        // display document
        $this->parser->parse( 'private/base-layout/document.html');
    }

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
                redirect('private/propinsi/add');
                break;
        }
    }

    public function add() {
        // template content
        $this->smarty->assign("template_content", "private/propinsi/propinsi-add");
        //load
        $this->load->model('negaramodel');
        $this->load->library('notification');
        // url
        $this->smarty->assign("url_add", site_url("private/propinsi/add"));
        $this->smarty->assign("url_list", site_url("private/propinsi"));
        $this->smarty->assign("url_process", site_url("private/propinsi/process/add"));
        // --
        $this->smarty->assign("active_add", 'class="tab-nav-active"');
        // notification
        $datanegara = $this->negaramodel->get_all_negara();
        $arr_notify = $this->notification->get_notification();
        if(!empty($arr_notify['post'])) {
            $this->smarty->assign("data", $arr_notify['post']);
        }
        $this->smarty->assign("negara", $datanegara);
        // notification
        $this->smarty->assign("notification_msg", $arr_notify['message']);
        $this->smarty->assign("notification_status", (empty($arr_notify['message_status'])?'red':'green'));

        // display document
        $this->parser->parse( 'private/base-layout/document.html');
    }

    public function process_add() {
        // load library
        $this->load->model('propinsimodel');
        $this->load->library('notification');
        // set rules
        $this->notification->check_post('nama_propinsi', 'Nama Provinsi', 'required');
        $propinsi = $this->input->post('nama_propinsi');
        
        // run
        if ($this->notification->valid_input()) {
        if($this->propinsimodel->is_exists_propinsi(strtolower($propinsi))) {
                    $this->notification->set_message('Nama Provinsi sudah ada');
                    $this->notification->clear_post();
                }
          }
        if ($this->notification->valid_input()) {
            // params
            
             
            $params = array(360, $this->input->post('nama_propinsi'),$this->input->post('nama_singkat'), $this->id_user);
            // processing
            if($this->propinsimodel->process_propinsi_add($params)) {
					$id_data =  $this->db->insert_id();
					$note_aksi = "Tambah Data Propinsi Oleh ".$this->user_data['admin_name']." dengan rincian, ID : ".$id_data."; Nama Provinsi : ".$this->input->post('nama_propinsi').";";
					$paramslog = array(
						"nama_data" => "provinsi", 
						"aksi" => "add", 
						"id_instansi" => $this->user_data['no_registrasi'],
						"id_data" => $id_data,
						"id_user" => $this->id_user, 
						"keterangan" => $note_aksi,
						'nama_user' => $this->user_data['admin_name']);
					$this->savelog($paramslog);
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
        redirect('private/propinsi/add');
    }

    public function edit() {
        // template content
        $this->smarty->assign("template_content", "private/propinsi/propinsi-edit");
        // load
        $this->load->model('propinsimodel');
        $this->load->library('notification');
        // url
        $this->smarty->assign("url_add", site_url("private/propinsi/add"));
        $this->smarty->assign("url_list", site_url("private/propinsi"));
        $this->smarty->assign("url_process", site_url("private/propinsi/process/edit"));
        // data
        $id_propinsi = $this->uri->segment(4);
        $data = $this->propinsimodel->get_propinsi_by_id($id_propinsi);
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
        $this->load->model('propinsimodel');
        $this->load->library('notification');
        // set rules
        $this->notification->check_post('nama_propinsi', 'Nama Provinsi', 'required');
         $propinsi = $this->input->post('nama_propinsi');
        
        // run
        if ($this->notification->valid_input()) {
 
        if($this->propinsimodel->is_exists_propinsi_edit(strtolower($propinsi)))  {
                    $this->notification->set_message('Nama Provinsi sudah ada');
                    $this->notification->clear_post();
                }
          }
        if ($this->notification->valid_input()) {
            // params
            $params = array($this->input->post('nama_propinsi'), $this->input->post('nama_singkat'), $this->id_user, $this->input->post('id_propinsi'));
            // processing
            if($this->propinsimodel->process_propinsi_edit($params)) {
					$id_data =  $this->input->post('id_propinsi');
					$note_aksi = "Update Data Negara Oleh ".$this->user_data['admin_name']." dengan rincian, ID : ".$id_data."; Nama Provinsi : ".$this->input->post('nama_propinsi').";";
					$paramslog = array(
						"nama_data" => "provinsi", 
						"aksi" => "edit", 
						"id_instansi" => $this->user_data['no_registrasi'],
						"id_data" => $id_data,
						"id_user" => $this->id_user, 
						"keterangan" => $note_aksi,
						'nama_user' => $this->user_data['admin_name']);
					$this->savelog($paramslog);
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
        redirect('private/propinsi/edit/'.$this->input->post('id_propinsi'));
    }
	
	 public function hapus() {
        // template content
        $this->smarty->assign("template_content", "private/propinsi/propinsi-hapus");
        // load
        $this->load->model('propinsimodel');
        $this->load->library('notification');
        // url
        $this->smarty->assign("url_add", site_url("private/propinsi/add"));
        $this->smarty->assign("url_list", site_url("private/propinsi"));
        $this->smarty->assign("url_process", site_url("private/propinsi/process/hapus"));
        // data
        $id_propinsi = $this->uri->segment(4);
        $data = $this->propinsimodel->get_propinsi_by_id($id_propinsi);
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

    public function process_hapus() {
        // load library
        $this->load->library('notification');
        $this->load->model('propinsimodel');
        // set rules
        $this->notification->check_post('id_propinsi', 'ID Propinsi', 'required');
        // run
        $id = $this->input->post('id_propinsi');
        if ($this->notification->valid_input()) {
			$data = $this->propinsimodel->get_propinsi_by_id($id);
            if($this->propinsimodel->process_propinsi_delete_one($id)) {
				
                $this->notification->clear_post();
                $this->notification->set_message(count($id).' Data berhasil dihapus');
                $this->notification->sent_notification(true);
            }else {
                $this->notification->set_message("Data gagal dihapus");
                $this->notification->sent_notification(false);
            }
        }else {
            $this->notification->sent_notification(false);
        }
        // default redirect
        redirect('private/propinsi');
    }
}