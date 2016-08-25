<?php
// important * untuk application base dari halaman ini

class Lupapassword extends MY_Controller {

    function  __construct() {
        // load application base
       parent::__construct();
	   $this->Webappbase();
	   $this->load->library('datetimemanipulation');
    }

    // pages
    public function index() {
		// template content
       $this->smarty->assign('template_content',"web/login/lupa.html");
        // load
		 $this->load->library('Notification');
		 
		 // notification
        $arr_notify = $this->notification->get_notification();
		$this->smarty->assign("notification_msg", $arr_notify['message']);
		$this->smarty->assign("url_forget_process", site_url('public/lupapassword/send'));
		$this->smarty->assign("page_modul", 'Lupa Password ');
		$this->smarty->assign("page_modul_url", site_url('public/lupapassword'));
	
        // display document
        $this->parser->parse('web/base-layout/document-list.html');
    }
	
	public function terkirim() {
		// template content
       $this->smarty->assign('template_content',"web/login/terkirim.html");
        // load
		 $this->load->library('Notification');
		  $this->smarty->assign("url_login", site_url('public/login/view'));
		
        $this->smarty->assign("page_modul", 'Login');
		$this->smarty->assign("page_modul_url", site_url('public/login/view'));
	
        // display document
        $this->parser->parse('web/base-layout/document-list.html');
    }
	
	public function send() {
        // load library
       
        $this->load->library('notification');
		
        // set rules
       $this->notification->check_post('email', 'Email', 'required');
       
        // run
        if ($this->notification->valid_input()) {	
			$this->load->library('cryptosimple');
			$this->db->where('user_mail', $this->input->post('email'));
			$user = $this->db->get('sys_user_m')->row_array();
			if(!empty($user)):
				 $password = $this->cryptosimple->do_decryption($user['user_pass'], $user['user_key']);
				 $this->db->where('id_user', $user['id_user']);
			     $data_admin= $this->db->get('administrator_m')->row_array();
				// params
				$params = array('nama' => $data_admin['admin_name'], 
						'email' => $user['user_mail'],
						'subjek' => 'Akun Login Sistem Registrasi Koleksi Museum', 
						'username' => $user['user_name'],
						'password' => $password
						);
            	if($this->_SendEmailPassword($params)):
					$this->notification->clear_post();
					$this->notification->set_message("Data Login telah dikirim ke email anda!");
					$this->notification->sent_notification(true);
					redirect('public/lupapassword/terkirim');
				else:
					$this->notification->set_message("Data login gagal dikirim ke email anda!");
                	$this->notification->sent_notification(false);
				endif;
			else:
				$this->notification->set_message("User dengan email ".$this->input->post('email')." tidak ditemukan!");
                $this->notification->sent_notification(false);
			endif;
            
        } else {
            $this->notification->sent_notification(false);
        }
        // default redirect
        redirect('public/lupapassword');
    }
	
	
	private function _SendEmailPassword($params){
			
			$seting = $this->db->get('sys_settings_m')->row_array();
			
			$this->load->file('system/plugins/phpmailer/class.phpmailer.php');
				$mail = new PHPMailer();
				$name_smtp =  $seting['smtp_name'];
				$host_smtp = $seting['smtp_host'];
				$user_smtp = $seting['smtp_username'];
				$pass_smtp = $seting['smtp_password'];
				$port_smtp =  $seting['smtp_port'];
				$email_smtp = $seting['smtp_username'];
				$sec = 'ssl';
				$auth = 'true';
			
			$body	= "<body bgcolor=\"#CCCCCC\">
							<style>
							.page {
								margin: auto;
								padding: 5px 5px 5px 5px;
								width: 800px;
								background-color: #FFFFFF;
								border: 1px solid #999999;
								font-family: Verdana, Arial, Helvetica, sans-serif;
							}
							.page p {
								margin: 0px 0px 10px 0px;
								font-size: 11px;
								line-height: 16px;
							}
							.page H3 {
								margin: 0px 0px 10px 0px;
								font-size: 12px;
							}
							</style>
							<div class=\"page\">
								Yth. ".$params['nama']."
								<br /><br />
								<p align=\"justify\">
								Berikut adalah data login anda pada Sistem Registrasi Koleksi Museum Dit. PCBM  : 
								<br /><br />Username : ".$params['username']." 
								<br />Password : ".$params['password']."
								<br /><br />
								<br />Terimakasih, 
								<br /><br />Sistem Registrasi Koleksi Museum
								<br />Direktorat Pelestarian Cagar Budaya dan Permuseuman
								</p>					
								<br /><br />
							</div>
							</body>";	
							
				// $body             = $this->obj_mail->getFile('doc/mail/contents.html');
				$body             = str_replace("[\]",'',$body);
				// this script will auto generate setting
				$mail->IsSMTP();
				$mail->SMTPAuth   = $auth;                  				// enable SMTP authentication
				$mail->SMTPSecure = "".$sec."";                 				// sets the prefix to the servier
				$mail->Host       = ''.$host_smtp.'';    	// sets GMAIL as the SMTP server
				$mail->Port       = ''.$port_smtp.'';    	// set the SMTP port for the GMAIL server		
				$mail->Username   = ''.$user_smtp.'';    // GMAIL username
				$mail->Password   = ''.$pass_smtp.'';    // GMAIL password		
				$mail->AddReplyTo(''.$email_smtp.'', ''.$name_smtp.'');		
				$mail->From       = ''.$email_smtp.'';
				$mail->FromName   = 'ADMIN REGKOLMUS';		
				$mail->Subject    = $params['subjek'];		
				//HTML Body
				$mail->AltBody    = "To view the message, please use an HTML compatible email viewer!"; 
				// optional, comment out and test
				$mail->WordWrap   = 50; // set word wrap		
				$mail->MsgHTML($body);		
				$mail->AddAddress($params['email'], 'Mail Sistem');		
				// $this->obj_mail->AddAttachment("images/phpmailer.gif");             // attachment
				$mail->IsHTML(true); // send as HTML		
				if(!$mail->Send())
					return false;
				else
					return true;
	}
	
   
}