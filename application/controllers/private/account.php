<?php

class Account extends MY_Controller {

    function  __construct() {
        // load application base
       parent::__construct();
	   $this->PrivateAppBase();
    }

    // administrator detail

    public function status() {
        // template content
        $this->smarty->assign("template_content", "private/account/status");
        // load
        $this->load->library('DateTimeManipulation');
        $this->load->model('accountmodel');
		 $this->load->library('notification');
		
        // get data
        $data = $this->accountmodel->get_administrator_details($this->id_user);
		
        // last login
        if(!empty($data['login_date'])) {
            $data['login_date'] = $this->datetimemanipulation->format_full_date($data['login_date']);
        }
        
       $this->smarty->assign('url_process', site_url('private/account/process/profil'));
	   $this->smarty->assign('url_process_foto', site_url('private/account/process/fotoprofil'));
		
		// notification
        $arr_notify = $this->notification->get_notification();
        if(!empty($arr_notify['post'])) {
            $this->smarty->assign("data", $arr_notify['post']);
        }
		//nama instansi 
		if(empty($data['nama_museum'])) {
			$data['nama_museum'] = NAMA_INSTANSI;
		}
		$pathfoto = 'doc/admin/'.$data['id_user'].'/'.$data['photo'];
		if($data['jenis_kelamin'] == 'P'):
			if(!empty($data['photo']) AND is_file($pathfoto)) {
				$data['photo'] = BASEURL.$pathfoto;
			}else{
				$data['photo'] = BASEURL.'doc/images/default_female.gif';
			}
		endif;
		if($data['jenis_kelamin'] == 'L'):
			if(!empty($data['photo']) AND is_file($pathfoto)) {
				$data['photo'] = BASEURL.$pathfoto;
			}else{
				$data['photo'] = BASEURL.'doc/images/default_male.gif';
			}
		endif;
		
		
		// parse data
		$this->smarty->assign('data', $data);
        // notification
        $this->smarty->assign("notification_msg", $arr_notify['message']);
        $notification_status = (empty($arr_notify['message_status'])?'red':'green');
        $this->smarty->assign("notification_status", $notification_status);
        // display document
        $this->parser->parse( 'private/base-layout/document.html');
    }

    // edit username

    public function login() {
        // template content
        $this->smarty->assign("template_content", "private/account/akun");
        // load
        $this->load->model('accountmodel');
        $this->load->library('notification');
        // get data
        $data = $this->accountmodel->get_administrator_data($this->id_user);
        
        // parse url
        $this->smarty->assign('url_process', site_url('private/account/process/username'));
		$this->smarty->assign('url_process_password', site_url('private/account/process/password'));
		$this->smarty->assign('url_process_email', site_url('private/account/process/email'));
        // parse data
        $this->smarty->assign('data', $data);
        // notification
        $arr_notify = $this->notification->get_notification();
        if(!empty($arr_notify['post'])) {
            $this->smarty->assign("data", $arr_notify['post']);
        }
        // notification
        $this->smarty->assign("notification_msg", $arr_notify['message']);
        $notification_status = (empty($arr_notify['message_status'])?'red':'green');
        $this->smarty->assign("notification_status", $notification_status);
        // display document
        $this->parser->parse( 'private/base-layout/document.html');
    }

    

    // data processing

    public function process($action) {
        switch($action) {
			case 'profil':
                $this->process_profile();
                break;
			case 'fotoprofil':
                $this->process_profile_foto();
                break;
            case 'username':
                $this->process_username();
                break;
            case 'password':
                $this->process_password();
                break;
            case 'email':
                $this->process_email();
                break;
            default :
            // default redirect
                redirect('private/account/status');
                break;
        }
    }

	//process update profile 
	private function process_profile() {
        // load
        $this->load->model('accountmodel');
        $this->load->library('notification');
        // set rules
        $this->notification->check_post('admin_name', 'Nama', 'required');
        $this->notification->check_post('no_telp', 'No Telp/Hp', 'required');
       
        // run
        if ($this->notification->valid_input()) {
			$params_data = array(
					"admin_name" => $this->input->post('admin_name') ,
					"jenis_kelamin" =>  $this->input->post('jenis_kelamin') ,
					"jabatan" =>  $this->input->post('jabatan') ,
					"no_telp" => $this->input->post('no_telp')
					);
            if($this->accountmodel->process_update_profile($params_data, $this->id_user)) {
					
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
        redirect('private/account/status');
    }
	private function process_profile_foto() {
        // load
        $this->load->model('accountmodel');
        $this->load->library('notification');
		$this->load->library('uploader');
        // set rules
        //$this->notification->check_post('foto', 'Foto', 'required');
		 $this->notification->check_post('id_user', 'id_user', 'required');
        // run
        if ($this->notification->valid_input()) {
			 if (!empty($_FILES['foto']['name'])) {
			 			$datauser = $this->accountmodel->get_administrator_details($this->id_user);
			 			$id_user = $this->input->post('id_user');
						$_FILES['foto']['name'] = $id_user.'_'.rand(111,9999999).$_FILES['foto']['name'];
						$this->uploader->set_file($_FILES['foto']);
						$rules = array('allowed_filesize' => 512000);
						$this->uploader->set_rules($rules);
						// direktori
						$dir = 'doc/admin/' .  $id_user. '/';
						// proses upload
						if ($this->uploader->upload_image($dir, 250)) {
							$this->db->set("photo",$this->uploader->get_file_name());
							$this->db->where("id_user", $id_user);
							$this->db->update("administrator_m");
							//remove foto sebelumnya 
							$pathfoto = 'doc/admin/'.$datauser['id_user'].'/'.$datauser['photo'];
							if(is_file($pathfoto)):
								unlink($pathfoto);
							endif;
							$this->notification->clear_post();
							$this->notification->set_message("Data Foto berhasil disimpan");
							$this->notification->sent_notification(true);
							
							$this->session->set_userdata('admin_image', BASEURL.$dir.$_FILES['foto']['name']);
							
						} else {
							//echo $this->upload->message;
							$this->notification->set_message("File Foto gagal diupload");
							$this->notification->sent_notification(false);
						}
            		
                
            }else {
                $this->notification->set_message("Data foto kosong ");
                $this->notification->sent_notification(false);
            }
			
        }else {
            $this->notification->sent_notification(false);
        }
        // default redirect
        redirect('private/account/status');
    }
	
    // process username

    public function process_username() {
        // load
        $this->load->model('accountmodel');
        $this->load->library('notification');
        // set rules
        //$this->notification->check_post('user_name', 'Username Lama', 'required');
        $this->notification->check_post('user_name_baru', 'Username Baru', 'required');
        // check username
        $username_lama = trim($this->input->post('user_name_lama'));
        $username_baru = trim($this->input->post('user_name_baru'));
        $data = $this->accountmodel->get_administrator_data($this->id_user);
         $this->smarty->assign('data', $data);
        if($this->notification->valid_input()) {
            if(strlen($username_baru) < 6) {
                $this->notification->set_message('Username minimal 6 karakter');
            }elseif($username_baru != $username_lama) {
            
                // check available username
                if($this->accountmodel->is_exists_username(strtolower($username_baru))) {
                    $this->notification->set_message('Nama username sudah ada atau username baru anda sama dengan username lama, gunakan username yang lain!');
                }
            }
        }
        // run
        if ($this->notification->valid_input()) {
            if($this->accountmodel->process_update_username($this->id_user, $username_baru)) {
                $this->notification->clear_post();
                $this->notification->set_message("Username berhasil disimpan");
                $this->notification->sent_notification(true);
            }else {
                $this->notification->set_message("Username gagal disimpan");
                $this->notification->sent_notification(false);
            }
        }else {
            $this->notification->sent_notification(false);
        }
        // default redirect
        redirect('private/account/login');
    }

    // process email

    public function process_email() {
        // load
        $this->load->model('accountmodel');
        $this->load->helper('email');
        $this->load->library('notification');
        $data = $this->accountmodel->get_administrator_data($this->id_user);
         $this->smarty->assign('data', $data);
        // set rules
        $this->notification->check_post('user_mail_baru', 'Email Baru', 'required');
        // check email
          $email_lama = trim($this->input->post('user_mail_lama'));
        $email_baru = trim($this->input->post('user_mail_baru'));
        if($this->notification->valid_input()) {
            if (!valid_email($this->input->post('user_mail_baru'))) {
                $this->notification->set_message("Format email tidak diperkenankan");
            }elseif($email_baru != $email_lama) {
            
                // check available username
                if($this->accountmodel->is_exists_email(strtolower($email_baru))) {
                    
                    $this->notification->set_message('Email sudah ada atau email baru anda sama dengan email lama, gunakan email yang lain!');
                    
                }
            }
        }
        // run
       
        if ($this->notification->valid_input()) {
        
            if($this->accountmodel->process_update_email($this->id_user, $this->input->post('user_mail_baru'))) {
                $this->notification->clear_post();
                $this->notification->set_message("Email berhasil disimpan");
                $this->notification->sent_notification(true);
            }else {
                $this->notification->set_message("Email gagal disimpan");
                $this->notification->sent_notification(false);
            }
            
        }else {
            $this->notification->sent_notification(false);
        }
        // default redirect
        redirect('private/account/login');
    }

    // process password

    public function process_password() {
        // load
        $this->load->model('accountmodel');
        $this->load->library('notification');
       
        // set rules
        $this->notification->check_post('password_lama', 'Password Lama', 'required');
        $this->notification->check_post('password_baru', 'Password Baru', 'required');
        $this->notification->check_post('password_confirm', 'Ulangi Password Baru', 'required');
        // check old password
        if($this->notification->valid_input()) {
            if(!$this->accountmodel->is_exist_password($this->id_user, $this->input->post('password_lama'))) {
                $this->notification->set_message('Password anda tidak ditemukan');
            }elseif ($this->input->post('password_lama') == $this->input->post('password_baru')) {
                $this->notification->set_message('Password baru harus berbeda dengan password Lama');
            }
        }
        // check password
        if($this->notification->valid_input()) {
            if(strlen($this->input->post('password_baru')) < 6) {
                $this->notification->set_message('Password Baru minimal 6 karakter');
            }elseif($this->input->post('password_baru') != $this->input->post('password_confirm')) {
                $this->notification->set_message('Ulangi password baru dengan benar!');
            }
        }
        // run
        if ($this->notification->valid_input()) {
            if($this->accountmodel->process_update_password($this->id_user, $this->input->post('password_baru'))) {
                $this->notification->clear_post();
                $this->notification->set_message("Password berhasil diganti");
                $this->notification->sent_notification(true);
            }else {
                $this->notification->set_message("Password gagal diganti");
                $this->notification->sent_notification(false);
            }
        }else {
            $this->notification->sent_notification(false);
        }
        // default redirect
        redirect('private/account/login');
    }
}