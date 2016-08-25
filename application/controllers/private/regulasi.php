<?php

class Regulasi extends MY_Controller {

     function  __construct() {
        // load application base
       parent::__construct();
	   $this->PrivateAppBase();
    }

    public function index() {
        // template content
		
        $this->smarty->assign("template_content", "private/regulasi/list");
        // load
        $this->load->model('regulasimodel');
        $this->load->library('notification');
		 $this->load->library('pagination');
	    $this->layout->load_javascript("js/admin/plugins/datatables/jquery.dataTables.js");
        $this->layout->load_javascript("js/admin/plugins/datatables/dataTables.bootstrap.js");
		// get data
        $data = $this->regulasimodel->get_list_regulasi();
		if(!empty($data)):
			foreach($data as $k=>$row):
				$pathdok = 'doc/regulasi/'.$row['id_regulasi'].'/'.$row['file_regulasi'];
				if(is_file($pathdok)):
					$data[$k]['ukuran'] =  $this->display_ukuran_file(filesize($pathdok));
					$url_regulasi = site_url('private/regulasi/process/download/'.$row['id_regulasi']);
					$data[$k]['file_regulasi'] = '<a href="'.$url_regulasi.'">'.$row['file_regulasi'] .'</a>';
				else:
					$data[$k]['ukuran'] = '';
					$data[$k]['file_regulasi'] = '-';
				endif;
			endforeach;
		endif;
		$this->smarty->assign("data", $data);
        $this->smarty->assign("no", 1);
		// $this->smarty->assign("total", $totaldata);
        
        // parse url
        $this->smarty->assign('url_add', site_url('private/regulasi/add'));
        $this->smarty->assign('url_list', site_url('private/regulasi/index'));
		$this->smarty->assign('url_process', site_url('private/regulasi/process/hapus'));
		$this->smarty->assign('url_edit', site_url('private/regulasi/edit'));
        // notification
        $arr_notify = $this->notification->get_notification();
        // notification
        $this->smarty->assign("notification_msg", $arr_notify['message']);
        $this->smarty->assign("notification_status", (empty($arr_notify['message_status'])?'red':'green'));
       // display document
         $this->parser->parse('private/base-layout/document.html');
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
			case 'download':
				$this->download_lampiran();
				break;
            default :
            // default redirect
                redirect('private/regulasi/add');
                break;
        }
    }

    public function add() {
        // template content
        $this->smarty->assign("template_content", "private/regulasi/add");
        //load
        $this->load->library('notification');
        // url
        $this->smarty->assign("url_add", site_url("private/regulasi/add"));
        $this->smarty->assign("url_list", site_url("private/regulasi"));
        $this->smarty->assign("url_process", site_url("private/regulasi/process/add"));
        // notification
        $arr_notify = $this->notification->get_notification();
        if(!empty($arr_notify['post'])) {
            $this->smarty->assign("data", $arr_notify['post']);
        }
        // notification
        $this->smarty->assign("notification_msg", $arr_notify['message']);
        $this->smarty->assign("notification_status", (empty($arr_notify['message_status'])?'red':'green'));
        // display document
         $this->parser->parse('private/base-layout/document.html');
    }

    public function process_add() {
        // load library
        $this->load->model('regulasimodel');
        $this->load->library('notification');
		 $this->load->library("uploader");
        // set rules
        $this->notification->check_post('judul', 'Judul', 'required');
        $this->notification->check_post('judul_english', 'Judul English', 'required');
        $this->notification->check_post('tahun', 'Tahun', 'required');
      	// run
        if ($this->notification->valid_input()) {
            // params
            $params = array(
                    'judul' => $this->input->post('judul'),
                    'tahun' => $this->input->post('tahun'),
                    'judul_english' => $this->input->post('judul_english'));
            // execute
            if($this->regulasimodel->process_regulasi_add($params)) {
				$id_regulasi = $this->db->insert_id();
				
					if(!empty($_FILES['file']['name'])){
									$this->load->library("uploader");
									// set file attachment
									$this->uploader->set_file($_FILES['file']);
									// set rules (kosongkan jika tidak menggunakan batasan sama sekali)
									// $rules = array('allowed_filesize' => 5242880);
									// $this->uploader->set_rules($rules);
									// direktori
									$dir = 'doc/regulasi/'. $id_regulasi.'/';
									if ($this->uploader->upload_file($dir)) {
											$this->db->set("file_regulasi",$this->uploader->get_file_name());
											$this->db->where("id_regulasi", $id_regulasi);
											$this->db->update("regulasi_m");
											
									} else {
										//echo $this->upload->message;
										$this->notification->set_message("File lampiran gagal diupload");
										$this->notification->sent_notification(false);
									}
								}
					
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
        redirect('private/regulasi/add');
    }
	
    public function edit() {
        // template content
        $this->smarty->assign("template_content", "private/regulasi/edit");
        // load
        $this->load->model('regulasimodel');
        $this->load->library('notification');
		$this->load->library('DateTimeManipulation');
		
        // parse url
        $this->smarty->assign("url_add", site_url("private/regulasi/add"));
        $this->smarty->assign("url_list", site_url("private/regulasi"));
        $this->smarty->assign("url_process", site_url("private/regulasi/process/edit"));
        // data
        $id_regulasi = $this->uri->segment(4, 0);
        $data = $this->regulasimodel->get_regulasi_by_id($id_regulasi);
		if(!empty($data)):
			$pathdok = 'doc/regulasi/'.$data['id_regulasi'].'/'.$data['file_regulasi'];
			if(is_file($pathdok)):
				$ukuran =  $this->display_ukuran_file(filesize($pathdok));
				$url_regulasi = site_url('private/regulasi/process/download/'.$data['id_regulasi']);
				$data['file_regulasi'] = '<br />Download File : <a href="'.$url_regulasi.'">'.$data['file_regulasi'].' [ '.$ukuran.']</a><br />';
			endif;
			
		endif;
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
         $this->parser->parse('private/base-layout/document.html');
    }
    
	function display_ukuran_file($ukuran_file = 0){
		if($ukuran_file >= 1048576):
			$ukuran =  number_format(($ukuran_file/1048576),2,".",",");
			return $ukuran." MB";
		else:
			$ukuran = ceil($ukuran_file/1024);
			return $ukuran." Kb";
		endif;
	}
	
	public function download_lampiran(){
			$this->load->model('regulasimodel');
			$this->load->helper('download');
			// data
			$id_regulasi = $this->uri->segment(5,0);
			$data = $this->regulasimodel->get_regulasi_by_id($id_regulasi);
			$dir = 'doc/regulasi/' . $id_regulasi. '/'.$data['file_regulasi'];
			if(is_file($dir)):
				$filedata = file_get_contents($dir);
				force_download($data['file_regulasi'], $filedata);
			endif;
			redirect('private/regulasi/edit/'.$id_regulasi);
	}
	
	public function process_edit() {
        // load library
        $this->load->model('regulasimodel');
        $this->load->library('notification');
		 $this->load->library("uploader");
        // set rules
        
        $this->notification->check_post('judul', 'Judul', 'required');
        $this->notification->check_post('judul_english', 'Judul English', 'required');
        $this->notification->check_post('tahun', 'Tahun', 'required');

		 // run
        if ($this->notification->valid_input()) {
		    // params
            $params = array(
                    'judul' => $this->input->post('judul'),
                    'tahun' => $this->input->post('tahun'),
                    'judul_english' => $this->input->post('judul_english'),
					 'id_regulasi' => $this->input->post('id_regulasi'));
            // execute
            if($this->regulasimodel->process_regulasi_edit($params)) {
				$id_regulasi = $this->input->post('id_regulasi');
					if(!empty($_FILES['file']['name'])){
									$this->load->library("uploader");
                                    $this->uploader->remove_dir('doc/regulasi/'.$id_regulasi."/");
									// set file attachment
									$this->uploader->set_file($_FILES['file']);
									// set rules (kosongkan jika tidak menggunakan batasan sama sekali)
									// $rules = array('allowed_filesize' => 5242880);
									// $this->uploader->set_rules($rules);
									// direktori
									$dir = 'doc/regulasi/'.$id_regulasi.'/';
								
									if ($this->uploader->upload_file($dir)) {
											$this->db->set("file_regulasi",$this->uploader->get_file_name());
											$this->db->where("id_regulasi", $id_regulasi);
											$this->db->update("regulasi_m");
											
									} else {
										//echo $this->upload->message;
										$this->notification->set_message("File gagal diupload");
										$this->notification->sent_notification(false);
									}
								}
					
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
        redirect('private/regulasi/edit/'.$this->input->post('id_regulasi'));
    }


   

    public function process_hapus() {
        // load library
        $this->load->library('notification');
		$this->load->library('uploader');
        $this->load->model('regulasimodel');
        // set rules
        $this->notification->check_post('id_regulasi', 'id', 'required');
        // run
        if ($this->notification->valid_input()) {
            // params
            $params = $this->input->post('id_regulasi');
			if(is_array($params)):
				// execute
				foreach($params as $id):
					$data = $this->regulasimodel->get_regulasi_by_id($id);
					$this->regulasimodel->process_regulasi_delete($id);
					$this->uploader->remove_dir('doc/regulasi/'.$id."/");
					
				endforeach;
				$this->notification->clear_post();
				$this->notification->set_message("Data berhasil dihapus");
				$this->notification->sent_notification(true);
			else:
				$this->notification->set_message("Tidak ada data yang terpilih untuk dihapus!");
				$this->notification->sent_notification(false);
			endif;
        }
        // default redirect
		redirect('private/regulasi');

    }
	
	
}