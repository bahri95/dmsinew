<?php
	// important * untuk application base dari halaman ini
	class Registrasi extends MY_Controller {
		
		function  __construct() {
			// load application base
			parent::__construct();
			$this->Webappbase();
			$this->load->library('datetimemanipulation');
		}

		// pages
		public
		function index() {
			// template content
			$this->smarty->assign('template_content',"web/registrasi/form.html");
			// load
			$this->load->library('notification');
			$this->load->model('registrasimodel');
			// notification
			$arr_notify = $this->notification->get_notification();
			// get data asosiasi
			$listasosiasi = $this->registrasimodel->get_list_asosiasi();
			$this->smarty->assign('listasosiasi', $listasosiasi);
			$data_propinsi = $this->registrasimodel->get_all_propinsi();
			$this->smarty->assign("propinsi", $data_propinsi);
			// get data kota
			
			if (isset($arr_notify['post']['id_propinsi'])) {
				echo $arr_notify['post']['id_kota'];
				$data_kota = $this->registrasimodel->get_all_kota_by_propinsi($arr_notify['post']['id_propinsi']);
				$this->smarty->assign("data_kota", $data_kota);
			}

			$this->smarty->assign("url_kota", site_url("private/asosiasi/process/ajax_kota_by_propinsi"));
			// notification
			
			if (!empty($arr_notify['post'])) {
				$this->smarty->assign("data", $arr_notify['post']);
			}

			$this->smarty->assign("url_daftar", site_url('public/registrasi/daftar'));
			$this->smarty->assign("url_captcha", site_url('public/registrasi/captcha'));
			$this->smarty->assign("notification_msg", $arr_notify['message']);
			$this->smarty->assign("notification_status", (empty($arr_notify['message_status'])?'red':
			'green'));
			
			// display document
			$this->parser->parse('web/base-layout/document-full.html');
		}

		public
		function process($action = '') {
			switch ($action) {
				case 'ajax_kota_by_propinsi':
					$this->process_ajax_kota_by_propinsi();
					break;
				default :
					// default redirect
					redirect('public/registrasi');
					break;
			}

	}
	

	public
	function process_ajax_kota_by_propinsi() {
		$id_propinsi = $this->uri->segment(5, 0);
		// load
		$this->load->model('registrasimodel');
		// get data
		$kota = $this->registrasimodel->get_all_kota_by_propinsi($id_propinsi);
		echo '<select name="id_kota" class="form-control"><option value="">-- pilih kota --</option>';
		
		if($kota) {
			foreach($kota as $data) {
				echo '<option value="'.$data['id_kota'].'">';
				echo $data['nama_kota'];
				echo '</option>';
			}

		}

		echo '</select>';
	}

	public
	function verifikasi() {
		// template content
		$this->smarty->assign('template_content',"web/registrasi/verifikasi.html");
		// load
		$this->load->library('notification');
		$this->load->model('registrasimodel');
		// notification
		$arr_notify = $this->notification->get_notification();
		
		if (!empty($arr_notify['post'])) {
			$this->smarty->assign("data", $arr_notify['post']);
		}

		//update status anggota data anggota menjadi aktif
		$id_registrasi = $this->uri->segment(4,0);
		$this->db->set("user_status",'aktif');
		$this->db->where("id_registrasi", $id_registrasi);
		$this->db->update("registrasi_m");
		$this->smarty->assign("url_login", site_url('public/login/view'));
		$this->smarty->assign("notification_msg", $arr_notify['message']);
		$this->smarty->assign("notification_status", (empty($arr_notify['message_status'])?'red':
		'green'));
		// display document
		$this->parser->parse('web/base-layout/document-full.html');
	}

	public
	function daftar() {
		// load library
		$this->load->model('registrasimodel');
		$this->load->library('notification');
		// // set rules
		$this->notification->check_post('nama', 'Nama', 'required');
		$this->notification->check_post('pekerjaan', 'Pekerjaan', 'required');
		$this->notification->check_post('id_asosiasi', 'Organisasi', 'required');
		$this->notification->check_post('email', 'Alamat Email', 'required');
		$this->notification->check_post('username', 'Username', 'required');
		$this->notification->check_post('password', 'Password', 'required');
		$this->notification->check_post('perusahaan', 'Perusahaan', 'required');
		$this->notification->check_post('alamat', 'Alamat Rumah', 'required');
		$this->notification->check_post('web', 'Alamat Web', 'required');
		$this->notification->check_post('id_kota', 'Kota', 'required');
		$this->notification->check_post('kode_pos', 'Kode Pos', 'required');
		$this->notification->check_post('id_propinsi', 'Propinsi', 'required');
		$this->notification->check_post('telepon', 'Telepon', 'required');
		$this->notification->check_post('fax', 'Fax', 'required');
		$this->notification->check_post('no_ktp', 'No KTP', 'required');
		$this->notification->check_post('user_key', 'Chapta', 'required');
		
		$arr_notify = $this->notification->get_notification();
		
		if (!empty($arr_notify['post'])) {
			$this->smarty->assign("data", $arr_notify['post']);
		}

		// run 
		// cek email
		
		if ($this->notification->valid_input()):
		$email = $this->input->post('email');
		$username = $this->input->post('username');
		$telepon = $this->input->post('telepon');
		$message = '';
		
		if($this->registrasimodel->is_exists_email(strtolower($email))):
		$message = 'Email';
		$this->notification->set_message($message.' '.'Sudah digunakan User Lain');
		$this->notification->sent_notification(false);
		// cek username
		elseif($this->registrasimodel->is_exists_username(strtolower($username))):
		$message = 'Username';
		$this->notification->set_message($message.' '.'Sudah digunakan User Lain');
		$this->notification->sent_notification(false);
		elseif($this->registrasimodel->is_exists_telepon(strtolower($telepon))):
		// cek no telpon 
		$message = 'Telepon';
		$this->notification->set_message($message.' '.'Sudah digunakan User Lain');
		$this->notification->sent_notification(false);
		endif;
		
		endif;
		//cek password
		
		if ($this->notification->valid_input()):
		$passpertama = $this->input->post('password');
		$passkedua = $this->input->post('u_password');
		
		if($passpertama <> $passkedua):
		$this->notification->set_message("Password tidak sesuai");
		$this->notification->sent_notification(false);
		endif;
		endif;
		//cek kode validasi
		
		if ($this->notification->valid_input()):
		
		if(!$this->cekvalidasi()):
		$this->notification->set_message("Kode Validasi yang dimasukkan tidak benar, harap ulangi kembali!");
		$this->notification->sent_notification(false);
		endif;
		endif;
		
		if ($this->notification->valid_input()) {
			//get id reggistrasi
			$registrasi = $this->registrasimodel->get_id_registrasi();
			foreach ($registrasi as $key => $data) {
				$registrasi[$key]['registrasi'] = $data['registrasi'];
			}

			// params
			$params = array('nama' => $this->input->post('nama'),                    
				'pekerjaan' => $this->input->post('pekerjaan'),                    
				'id_asosiasi' => $this->input->post('id_asosiasi'),                    
				'email' => $this->input->post('email'),                    
				'username' => $this->input->post('username'),                    
				'password' => $this->input->post('password'),                    
				'perusahaan' => $this->input->post('perusahaan'),                    
				'alamat' => $this->input->post('alamat'),                    
				'web' => $this->input->post('web'),                    
				'id_propinsi' => $this->input->post('id_propinsi'),                    
				'id_kota' => $this->input->post('id_kota'),                    
				'kode_pos' => $this->input->post('kode_pos'),                    
				'id_negara' => '360',                    
				'telepon' => $this->input->post('telepon'),                    
				'fax' => $this->input->post('fax'),                    
				'no_ktp' => $this->input->post('no_ktp'),
				'user_key' => $this->input->post('user_key'),
				'user_status' => 'nonaktif',
				'id_registrasi' => $registrasi[$key]['registrasi']);
			// execute
			
			if($this->_SendEmailRegistrasi($params)):
			$this->notification->clear_post();
			$this->notification->set_message("Data  Anda Sudah Terkirim ");
			$this->notification->sent_notification(true); else :
			$this->notification->set_message("Data Anda gagal Terkirim.");
			$this->notification->sent_notification(false);
			endif;
			
			if($this->registrasimodel->process_registrasi_daftar($params)) {
				$id_registrasi = $this->db->insert_id();
				
				if (!empty($_FILES['image']['tmp_name'])) {
					$this->load->library('uploader');
					// set file attachment
					$_FILES['image']['name'] = $id_registrasi.'_'.$_FILES['image']['name'];
					$this->uploader->set_file($_FILES['image']);
					// set rules (kosongkan jika tidak menggunakan batasan sama sekali)
					// $rules = array('allowed_filesize' => 307200);
					// $this->uploader->set_rules($rules);
					//$this->uploader->set_file_name();
					// direktori
					$dir = 'doc/registrasi/' . $id_registrasi . '/';
					// proses upload
					
					if ($this->uploader->upload_image($dir, 400)) {
						$this->db->set("image",$this->uploader->get_file_name());
						$this->db->where("id_registrasi", $id_registrasi);
						$this->db->update("registrasi_m");
					} else {
						//echo $this->upload->message;
						$this->notification->set_message("File Gambar gagal diupload");
						$this->notification->sent_notification(false);
					}

				}

				$this->notification->clear_post();
				$this->notification->set_message("Pendaftaran berhasil, silahkan cek email anda untuk mengaktifkan akun");
				$this->notification->sent_notification(true);
			} else {
				$this->notification->set_message("Data gagal disimpan");
				$this->notification->sent_notification(false);
			}

		} else {
			$this->notification->sent_notification(false);
		}

		// default redirect
		redirect('public/registrasi/');
	}

	//create captcha 
	public
	function captcha(){
		$string = '';
		for ($i = 0; $i < 5; $i++) {
			$string .= chr(rand(97, 122));
		}

		//$_SESSION['random_number'] = $string;
		$this->session->set_userdata('random_number', $string);
		//echo $this->session->userdata('random_number');exit;
		$dir = 'themes/fonts/';
		$image = imagecreatetruecolor(165, 50);
		// random number 1 or 2
		$num = rand(1,2);
		
		if($num==1){
			$font = "Capture it 2.ttf";
			// font style
		} else {
			$font = "Molot.otf";
			// font style
		}

		// random number 1 or 2
		$num2 = rand(1,2);
		
		if($num2==1){
			$color = imagecolorallocate($image, 113, 193, 217);
			// color
		} else {
			$color = imagecolorallocate($image, 163, 197, 82);
			// color
		}

		$white = imagecolorallocate($image, 255, 255, 255);
		// background color white
		imagefilledrectangle($image,0,0,399,99,$white);
		imagettftext ($image, 30, 0, 10, 40, $color, $dir.$font, $this->session->userdata('random_number') );
		header("Content-type: image/png");
		imagepng($image);
	}

	public
	function cekvalidasi(){
		//cek kode validasi 
		$captcha_string  = strtolower($this->session->userdata('random_number'));
		//echo $captcha_string.'==='.$this->input->post("kode_validasi"); exit;
		
		if(strtolower($this->input->post("user_key")) == $captcha_string){
			return true;
		} else {
			return false;
		}

	}

	private
	function _SendEmailRegistrasi($params){
		$seting = $this->db->get('sys_settings_m')->row_array();
		$registrasi = $this->db->get('registrasi_m')->row_array();
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
		$body= "<body bgcolor=\"#CCCCCC\">
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
								Data Akun anda sebagai berikut  : 
								<br />Username: ".$params['username']."
								<br />Password : ".$params['password']." 
								<br />Untuk mengaktifkan akun anda silahkan klik link berikut : ".BASEURL."index.php/public/registrasi/verifikasi/".$params['id_registrasi']."
								<br /><br />
								<br />Terimakasih, 
								<br /><br />Admin
								<br />Dewan Minyak Sawit Indonesia
								</p>					
								<br /><br />
							</div>
							</body>";
		// $body             = $this->obj_mail->getFile('doc/mail/contents.html');
		$body             = str_replace("[\]",'',$body);
		// this script will auto generate setting
		$mail->IsSMTP();
		$mail->SMTPAuth   = $auth;
		// enable SMTP authentication
		$mail->SMTPSecure = "".$sec."";
		// sets the prefix to the servier
		$mail->Host       = ''.$host_smtp.'';
		// sets GMAIL as the SMTP server
		$mail->Port       = ''.$port_smtp.'';
		// set the SMTP port for the GMAIL server		
		$mail->Username   = ''.$user_smtp.'';
		// GMAIL username
		$mail->Password   = ''.$pass_smtp.'';
		// GMAIL password		
		$mail->AddReplyTo(''.$email_smtp.'', ''.$name_smtp.'');
		$mail->From       = ''.$email_smtp.'';
		$mail->FromName   = 'Admin DMSI';
		$mail->Subject    = 'Verifikasi Akun Registrasi Anggota';
		//HTML Body
		$mail->AltBody    = "To view the message, please use an HTML compatible email viewer!";
		// optional, comment out and test
		$mail->WordWrap   = 50;
		// set word wrap		
		$mail->MsgHTML($body);
		$mail->AddAddress($params['email'], 'Mail Sistem');
		// $this->obj_mail->AddAttachment("images/phpmailer.gif");             // attachment
		$mail->IsHTML(true);
		// send as HTML		
		
		if(!$mail->Send())return false; else return true;
	}

}