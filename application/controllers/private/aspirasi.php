<?php
// important * untuk application base dari halaman ini

class Aspirasi extends MY_Controller {

    function  __construct() {
        // load application base
       parent::__construct();
	   $this->PrivateAppBase();
    }
 	public function index() {
		// load library
        $this->load->library('Notification');
		$this->smarty->assign('template_content',"private/aspirasi/list");
		
		// notification
        $arr_notify = $this->notification->get_notification();
		//print_r($arr_notify);
        
		$this->smarty->assign("notification_msg", $arr_notify['message']);
        $this->smarty->assign("notification_status", (empty($arr_notify['message_status'])?'red':'green'));
        // display document
        $this->parser->parse('private/base-layout/document.html');
        //load model aspirasi
        $this->load->model('aspirasimodel');

        //data aspirasi
        $data_aspirasi = $this->aspirasimodel->get_data_aspirasi();
        $this->smarty->assign('data_aspirasi', $data_aspirasi);
        
	}

   

    public function verifikasi() {
        // load library
        $this->load->library('Notification');
        $this->smarty->assign('template_content',"private/aspirasi/list_verifikasi");
        
        // notification
        $arr_notify = $this->notification->get_notification();
        //print_r($arr_notify);
        
        $this->smarty->assign("notification_msg", $arr_notify['message']);
        $this->smarty->assign("notification_status", (empty($arr_notify['message_status'])?'red':'green'));
       
        //load model aspirasi
        $this->load->model('aspirasimodel');
        //jumlah aspirasi belum di verifikasi
          $jumlah_aspirasi = $this->aspirasimodel->get_jumlah_aspirasi();
        $this->smarty->assign('jumlah_aspirasi', $jumlah_aspirasi);
        //jumlah aspirasi verifikasi
        $jumlah_aspirasi_ver = $this->aspirasimodel->get_jumlah_aspirasi_verifikasi();
        $this->smarty->assign('jumlah_aspirasi_ver', $jumlah_aspirasi_ver);
          //jumlah aspirasi jawaban
        $jumlah_aspirasi_jaw = $this->aspirasimodel->get_jumlah_aspirasi_jawaban();
        $this->smarty->assign('jumlah_aspirasi_jaw', $jumlah_aspirasi_jaw);
        //data aspirasi verikasi
        $data_aspirasi_ver = $this->aspirasimodel->get_data_aspirasi_verifikasi();
        $this->smarty->assign('data_aspirasi_ver', $data_aspirasi_ver);

        // read aspirasi
        $this->smarty->assign("url_aspirasi", site_url("private/aspirasi"));
        $this->smarty->assign("url_aspirasi_read", site_url("private/aspirasi/read"));
        // hapus aspirasi
        $this->smarty->assign("url_aspirasi_hapus_ver", site_url("private/aspirasi/process/hapus_ver"));
         // display document
        $this->parser->parse('private/base-layout/document.html');
        
    }

     public function jawaban() {
        // load library
        $this->load->library('Notification');
        $this->smarty->assign('template_content',"private/aspirasi/list_jawaban");
        
        // notification
        $arr_notify = $this->notification->get_notification();
        //print_r($arr_notify);
        
        $this->smarty->assign("notification_msg", $arr_notify['message']);
        $this->smarty->assign("notification_status", (empty($arr_notify['message_status'])?'red':'green'));
       
        //load model aspirasi
        $this->load->model('aspirasimodel');
        //jumlah aspirasi belum di verifikasi
        $jumlah_aspirasi = $this->aspirasimodel->get_jumlah_aspirasi();
        $this->smarty->assign('jumlah_aspirasi', $jumlah_aspirasi);
        //jumlah aspirasi verifikasi
        $jumlah_aspirasi_ver = $this->aspirasimodel->get_jumlah_aspirasi_verifikasi();
        $this->smarty->assign('jumlah_aspirasi_ver', $jumlah_aspirasi_ver);
          //jumlah aspirasi jawaban
        $jumlah_aspirasi_jaw = $this->aspirasimodel->get_jumlah_aspirasi_jawaban();
        $this->smarty->assign('jumlah_aspirasi_jaw', $jumlah_aspirasi_jaw);
        //data aspirasi jawaban
        $data_aspirasi_jaw = $this->aspirasimodel->get_data_aspirasi_jawaban();
        $this->smarty->assign('data_aspirasi_jaw', $data_aspirasi_jaw);

        $this->smarty->assign("url_aspirasi", site_url("private/aspirasi"));
        // read aspirasi
        $this->smarty->assign("url_aspirasi_read", site_url("private/aspirasi/read"));
        // hapus aspirasi
        $this->smarty->assign("url_aspirasi_hapus_jaw", site_url("private/aspirasi/process/hapus_jaw"));
         // display document
        $this->parser->parse('private/base-layout/document.html');
        
    }
	
    public function read() {
        // load library
        $this->load->library('Notification');
        $this->smarty->assign('template_content',"private/aspirasi/read");
        
        // notification
        $arr_notify = $this->notification->get_notification();
        //print_r($arr_notify);
        
        $this->smarty->assign("notification_msg", $arr_notify['message']);
        $this->smarty->assign("notification_status", (empty($arr_notify['message_status'])?'red':'green'));
        // display document
        $this->parser->parse('private/base-layout/document.html');
        //load model aspirasi
        $this->load->model('aspirasimodel');
         //jumlah aspirasi belum di verifikasi
          $jumlah_aspirasi = $this->aspirasimodel->get_jumlah_aspirasi();
        $this->smarty->assign('jumlah_aspirasi', $jumlah_aspirasi);
        //jumlah aspirasi verifikasi
        $jumlah_aspirasi_ver = $this->aspirasimodel->get_jumlah_aspirasi_verifikasi();
        $this->smarty->assign('jumlah_aspirasi_ver', $jumlah_aspirasi_ver);
        //data aspirasi
        $data_aspirasi = $this->aspirasimodel->get_data_aspirasi();
         // jawab aspirasi
        $this->smarty->assign('data_aspirasi', $data_aspirasi);

        
       
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
            case 'hapus_ver':
                $this->process_hapus_ver();
                break;
             case 'hapus_jaw':
                $this->process_hapus_jaw();
                break;
              case 'verifikasi':
                $this->process_verifikasi();
                break;
                case 'jawab':
                $this->process_jawab();
                break;
            default :
            // default redirect
                redirect('private/aspirasi');
                break;
        }
    }

   public function process_hapus() {
        // load library
        $this->load->library('notification');
        $this->load->library('uploader');
        $this->load->model('aspirasimodel');
        // set rules
        $this->notification->check_post('id_aspirasi', 'id', 'required');
        // run
        if ($this->notification->valid_input()) {
            // params
            $params = $this->input->post('id_aspirasi');
            if(is_array($params)):
                // execute
                foreach($params as $id):
                    $aspirasi = $this->aspirasimodel->get_data_aspirasi_by_id($id);
                    $this->aspirasimodel->process_aspirasi_delete($id);
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
        redirect('private/aspirasi');

    }

    public function process_hapus_ver() {
        // load library
        $this->load->library('notification');
        $this->load->library('uploader');
        $this->load->model('aspirasimodel');
        // set rules
        $this->notification->check_post('id_aspirasi', 'id', 'required');
        // run
        if ($this->notification->valid_input()) {
            // params
            $params = $this->input->post('id_aspirasi');
            if(is_array($params)):
                // execute
                foreach($params as $id):
                    $aspirasi = $this->aspirasimodel->get_data_aspirasi_by_id($id);
                    $this->aspirasimodel->process_aspirasi_delete($id);


                    
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
        redirect('private/aspirasi/verifikasi');

    }

    public function process_hapus_jaw() {
        // load library
        $this->load->library('notification');
        $this->load->library('uploader');
        $this->load->model('aspirasimodel');
        // set rules
        $this->notification->check_post('id_aspirasi', 'id', 'required');
        // run
        if ($this->notification->valid_input()) {
            // params
            $params = $this->input->post('id_aspirasi');
            if(is_array($params)):
                // execute
                foreach($params as $id):
                    $aspirasi = $this->aspirasimodel->get_data_aspirasi_by_id($id);
                    $this->aspirasimodel->process_aspirasi_delete($id);


                    
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
        redirect('private/aspirasi/jawaban');

    }

    public function process_verifikasi() {
        // load library
        $this->load->library('notification');
        $this->load->library('uploader');
        $this->load->model('aspirasimodel');
    
            // params
            $id = $this->uri->segment(5,0);
                   $this->aspirasimodel->get_data_aspirasi_by_id($id);
                    $this->db->set("publish", 'ya');
                    $this->db->where("id_aspirasi", $id);
                    $this->db->update("aspirasi_m");        
                    
              
        
        
                redirect('private/aspirasi');
       
        }

    public function process_jawab() {
        // load library
        $this->load->library('notification');
        $this->load->library('uploader');
        $this->load->model('aspirasimodel');
            // params
        $this->notification->check_post('jawaban', 'jawaban', 'required');
        if ($this->notification->valid_input()) {
        //$this->smarty->assign("notification_msg", $arr_notify['message']);
        //$this->smarty->assign("notification_status", (empty($arr_notify['message_status'])?'red':'green'));
            $jawaban = $this->input->post('jawaban');
            $id = $this->input->post('id_aspirasi');
                   $this->aspirasimodel->get_data_aspirasi_by_id($id);
                    $this->db->set("status_jawab", 'ya');
                    $this->db->set("jawaban", $jawaban);
                    $this->db->where("id_aspirasi", $id);
                    $this->db->update("aspirasi_m"); 
                    
                    
						       
              $this->_sendEmail();
              
              $this->notification->set_message("Jawaban berhasil disimpan");
              $this->notification->sent_notification(true);  
            
        }else{
              $this->notification->clear_post();
              $this->notification->sent_notification(false);
        }
        
        redirect('private/aspirasi/read/'.$this->input->post('id_aspirasi'));
       
        }
        
        public function _sendEmail(){
        	//kirim_email
                    $seting = $this->db->get('sys_settings_m')->row_array();
                    	$nama_pengirim= $this->input->post('nama_pengirim');
			$email = $this->input->post('email');
			$isi_aspirasi = $this->input->post('isi_aspirasi');
			$nama_asosiasi = $this->input->post('nama_asosiasi');
			$jawaban = $this->input->post('jawaban');
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
								Halo ".$nama_pengirim."
								<br /><br />
								<p align=\"justify\">
								
								<br />Terima kasih sudah menyampaikan aspirasi kepada pihak kami, pesan Anda sudah kami proses dan kami jawab
								<br />Atas Pesan anda dengan isi :
								<br />
	      	
								<br /> <i><b>".$isi_aspirasi."</b></i>
								<br />
								<br />
								<br />Jawaban dari pihak ".$nama_asosiasi." :
								<br /> 
								<br /> <i><b>".$jawaban."</b></i>
								<br /><br /> 
								
								<br />Semoga Jawaban ini membantu Anda
								<br /><br /> 
								<br /><br />
								<br />Terimakasih, 
								<br /><br />Dewan Minyak Sawit Indonesia
								
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
				$mail->FromName   = 'ASPIRASI DMSI';		
				$mail->Subject    = 'Jawaban dari pesan Aspirasi';		
				//HTML Body
				$mail->AltBody    = "To view the message, please use an HTML compatible email viewer!"; 
				// optional, comment out and test
				$mail->WordWrap   = 50; // set word wrap		
				$mail->MsgHTML($body);		
				$mail->AddAddress($email, 'Mail Sistem');		
				// $this->obj_mail->AddAttachment("images/phpmailer.gif");             // attachment
				$mail->IsHTML(true); // send as HTML		
				if(!$mail->Send()):
					return false;
				else:
					return true;
				endif;
        }
        
        


}