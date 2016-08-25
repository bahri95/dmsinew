<?php

class Agenda extends MY_Controller {

     function  __construct() {
        // load application base
       parent::__construct();
	   $this->PrivateAppBase();
    }

    public function index() {
        // template content
        $this->smarty->assign("template_content", "private/agenda/list");
		$this->load->library('datetimemanipulation');
		
        // load
		$this->load->library('pagination');
        $this->load->model('agendamodel');
		 $this->load->library('notification');
		  $this->layout->load_javascript("js/admin/plugins/datatables/jquery.dataTables.js");
		$this->layout->load_javascript("js/admin/plugins/datatables/dataTables.bootstrap.js");
		
        $data = $this->agendamodel->get_list_agenda();
		if(!empty($data)):
			foreach($data as $key=>$val):
				$data[$key]['tanggal_mulai'] = $this->datetimemanipulation->GetFullDate($val['tanggal_mulai']);
				$data[$key]['tanggal_selesai'] = $this->datetimemanipulation->GetFullDate($val['tanggal_selesai']);
				$path = 'doc/agenda/'.$val['id_agenda'].'/'.$val['image_agenda'];
				if(is_file($path)):
					$data[$key]['image_agenda'] = BASEURL.$path;
				else:
					$data[$key]['image_agenda'] = '';
				endif;
			endforeach;
		endif;
       $this->smarty->assign("data", $data);
		 $this->smarty->assign("no",1);
		
        // parse url
        $this->smarty->assign('url_add', site_url('private/agenda/add'));
        $this->smarty->assign('url_list', site_url('private/agenda/index'));
		$this->smarty->assign('url_search', site_url('private/agenda/process/search'));
		$this->smarty->assign('url_edit', site_url('private/agenda/edit'));
		$this->smarty->assign('url_process', site_url('private/agenda/process/hapus'));
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
			case 'hapusgambar':
                $this->hapusgambar();
                break;
			case 'download':
				$this->download_lampiran();
				break;
			case 'search':
             	$this->process_search();
                break;
			
           default :
                redirect('private/agenda/add');
                break;
        }
    }
	
	public function hapusgambar() {
        // load library
        $this->load->library('notification');
		$this->load->library('uploader');
        $this->load->model('agendamodel');
        // set rules
        $id_agenda = $this->uri->segment(5, 0);
        // run
        if (!empty($id_agenda)) {
            // params
          		$this->db->set('image_agenda','');
				$this->db->where('id_agenda' , $id_agenda);
				$this->db->update('agenda_m');
				
				$this->uploader->remove_dir('doc/agenda/'.$id_agenda."/");
				$this->notification->set_message("Gambar berhasil dihapus");
				$this->notification->sent_notification(true);
        }
        // default redirect
		redirect('private/agenda/edit/'.$id_agenda);
    }
	
	

	
	
    public function add() {
		    // template content
        $this->smarty->assign("template_content", "private/agenda/add");
        //load
        $this->load->library('notification');
        $this->load->model('agendamodel');
        // list asosiasi
		$listasosiasi = $this->agendamodel->get_list_asosiasi();
		$this->smarty->assign('listasosiasi', $listasosiasi);
        // url
        $this->smarty->assign("url_add", site_url("private/agenda/add"));
        $this->smarty->assign("url_list", site_url("private/agenda"));
		$this->smarty->assign("url_process", site_url("private/agenda/process/add"));
		
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
        $this->load->model('agendamodel');
        $this->load->library('notification');
		 $this->load->library("uploader");
        // set rules
        $this->notification->check_post('judul_agenda', 'Judul Kegiatan', 'required');
        $this->notification->check_post('tanggal_mulai', 'Tanggal Mulai', 'required');
        $this->notification->check_post('tanggal_selesai', 'Tanggal Selesai', 'required');
         $this->notification->check_post('judul_english', 'Event Title', 'required');
     
		// run
        if ($this->notification->valid_input()) {
			// params
			$params = array(
					'id_asosiasi' => $this->input->post('id_asosiasi'),
					'judul_agenda' => $this->input->post('judul_agenda'),
                    'tanggal_mulai' => $this->input->post('tanggal_mulai'),
                    'tanggal_selesai' => $this->input->post('tanggal_selesai'),
					'lokasi' => $this->input->post('lokasi'),
					'keterangan' => $this->input->post('keterangan'),
					'judul_english' => $this->input->post('judul_english'),
					'keterangan_english' => $this->input->post('keterangan_english')
					);
            // execute
            if($this->agendamodel->process_agenda_add($params)) {
					$id_agenda = $this->db->insert_id();
				 if (!empty($_FILES['image_agenda']['tmp_name'])) {
						// set file attachment
						$_FILES['image_agenda']['name'] = $id_agenda."_".$_FILES['image_agenda']['name'];
						$this->uploader->set_file($_FILES['image_agenda']);
						// set rules (kosongkan jika tidak menggunakan batasan sama sekali)
						$rules = array('allowed_filesize' => 5120000);
						$this->uploader->set_rules($rules);
						//$this->uploader->set_file_name();
						// direktori
						$dir = 'doc/agenda/' . $id_agenda . '/';
						// proses upload
						if ($this->uploader->upload_image($dir, 1000)) {
							$this->db->set("image_agenda",$this->uploader->get_file_name());
							$this->db->where("id_agenda", $id_agenda);
							$this->db->update("agenda_m");
							
						} else {
							//echo $this->upload->message;
							$this->notification->set_message("File Gambar gagal diupload, ".$this->uploader->message);
							$this->notification->sent_notification(false);
						}
            		}
						////
						if(!empty($_FILES['file']['name'])){
									$this->load->library("uploader");
									// set file attachment
									$this->uploader->set_file($_FILES['file']);
									// set rules (kosongkan jika tidak menggunakan batasan sama sekali)
									$rules = array('allowed_filesize' => 11200000);
									$this->uploader->set_rules($rules);
									// direktori
									$dir = 'doc/agenda/'.$id_agenda.'/';
								
									if ($this->uploader->upload_file($dir)) {
											$this->db->set("file_agenda",$this->uploader->get_file_name());
											$this->db->where("id_agenda", $id_agenda);
											$this->db->update("agenda_m");
											
									} else {
										//echo $this->upload->message;
										$this->notification->set_message("File Gambar gagal diupload");
										$this->notification->sent_notification(false);
									}
								}
				  
                $this->notification->clear_post();
                $this->notification->set_message("Data berhasil disimpan");
                $this->notification->sent_notification(true);
				 redirect('private/agenda/add');
            }else {
                $this->notification->set_message("Data gagal disimpan");
                $this->notification->sent_notification(false);
            }
        }else {
            $this->notification->sent_notification(false);
        }
        // default redirect
        redirect('private/agenda/add');
    }
	
    public function edit() {
        // template content
        $this->smarty->assign("template_content", "private/agenda/edit");
        // load
		
        $this->load->model('agendamodel');
		$this->load->library('notification');
		$this->load->library('DateTimeManipulation');
       	// list asosiasi
		$listasosiasi = $this->agendamodel->get_list_asosiasi();
		$this->smarty->assign('listasosiasi', $listasosiasi);
		$id_agenda = $this->uri->segment(4, 0);
        // parse url
        $this->smarty->assign("url_add", site_url("private/agenda/add"));
        $this->smarty->assign("url_list", site_url("private/agenda"));
        $this->smarty->assign("url_process", site_url("private/agenda/process/edit"));
		// notification
        $arr_notify = $this->notification->get_notification();
        if(!empty($arr_notify['post'])) {
            $this->smarty->assign("data", $arr_notify['post']);
        }
        // data
        $data = $this->agendamodel->get_agenda_by_id($id_agenda);
     	if(!empty($data)):
			//image
			$path = 'doc/agenda/'.$data['id_agenda']."/";
			if(is_file($path.$data['image_agenda'])){
				$url_hapus = site_url('private/agenda/process/hapusgambar/')."/".$data['id_agenda'];
				$data['image_agenda'] = '<img src="'.BASEURL.$path.$data['image_agenda'].'" border="0" height="200px"><br /><input type="button" value="Hapus Gambar" onClick="javascript:document.location=\''.$url_hapus.'\';">';
			}else{
				$data['image_agenda']= '-tidak ada gambar - ';
			}
			$this->smarty->assign("image_agenda", $data['image_agenda']);
			//lampiran
			$pathdok = 'doc/agenda/'.$data['id_agenda'].'/'.$data['file_agenda'];
			if(is_file($pathdok)):
				$ukuran =  $this->display_ukuran_file(filesize($pathdok));
				$url_download = site_url('private/agenda/process/download/'.$data['id_agenda']);
				$data['file_agenda'] = '<br />Download File Lampiran : <a href="'.$url_download.'">'.$data['file_agenda'].' [ '.$ukuran.']</a><br />';
			endif;
			
		endif;
		 $this->smarty->assign("data", $data);
		 
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
			$this->load->model('agendamodel');
			$this->load->helper('download');
			// data
			$id_agenda= $this->uri->segment(5,0);
			$data = $this->agendamodel->get_agenda_by_id($id_agenda);
			$dir = 'doc/agenda/' . $id_agenda. '/'.$data['file_agenda'];
			if(is_file($dir)):
				$filedata = file_get_contents($dir);
				force_download($data['file_agenda'], $filedata);
			endif;
			redirect('private/agenda/edit/'.$id_agenda);
	}
	
    public function process_edit() {
        // load library
        $this->load->model('agendamodel');
        $this->load->library('notification');
		 $this->load->library("uploader");
        // set rules
		 $this->notification->check_post('judul_agenda', 'Judul Kegiatan', 'required');
        $this->notification->check_post('tanggal_mulai', 'Tanggal Mulai', 'required');
        $this->notification->check_post('tanggal_selesai', 'Tanggal Selesai', 'required');
         $this->notification->check_post('judul_english', 'Event Title', 'required');
      
		
        // run
        if ($this->notification->valid_input()) {
			// params
           $params = array(
					'id_asosiasi' => $this->input->post('id_asosiasi'),
					'judul_agenda' => $this->input->post('judul_agenda'),
                    'tanggal_mulai' => $this->input->post('tanggal_mulai'),
                    'tanggal_selesai' => $this->input->post('tanggal_selesai'),
					'lokasi' => $this->input->post('lokasi'),
					'keterangan' => $this->input->post('keterangan'),
					'judul_english' => $this->input->post('judul_english'),
					'keterangan_english' => $this->input->post('keterangan_english'),
					'id_agenda' => $this->input->post('id_agenda'));
            // execute
			if($this->agendamodel->process_agenda_edit($params)) {
				$id_agenda = $this->input->post('id_agenda');
				 if (!empty($_FILES['image_agenda']['tmp_name'])) {
						// set file attachment
						$_FILES['image_agenda']['name'] = $id_agenda."_".$_FILES['image_agenda']['name'];
						$this->uploader->set_file($_FILES['image_agenda']);
						// set rules (kosongkan jika tidak menggunakan batasan sama sekali)
						$rules = array('allowed_filesize' => 5120000);
						$this->uploader->set_rules($rules);
						//$this->uploader->set_file_name();
						// direktori
						$dir = 'doc/agenda/' . $id_agenda . '/';
						// proses upload
						if ($this->uploader->upload_image($dir, 1000)) {
							$this->db->set("image_agenda",$this->uploader->get_file_name());
							$this->db->where("id_agenda", $id_agenda);
							$this->db->update("agenda_m");
							
						} else {
							//echo $this->upload->message;
							$this->notification->set_message("File Gambar gagal diupload, ".$this->uploader->message);
							$this->notification->sent_notification(false);
						}
            		}
						////
						if(!empty($_FILES['file']['name'])){
									$this->load->library("uploader");
									// set file attachment
									$this->uploader->set_file($_FILES['file']);
									// set rules (kosongkan jika tidak menggunakan batasan sama sekali)
									$rules = array('allowed_filesize' => 11200000);
									$this->uploader->set_rules($rules);
									// direktori
									$dir = 'doc/agenda/'.$id_agenda.'/';
								
									if ($this->uploader->upload_file($dir)) {
											$this->db->set("file_agenda",$this->uploader->get_file_name());
											$this->db->where("id_agenda", $id_agenda);
											$this->db->update("agenda_m");
											
									} else {
										//echo $this->upload->message;
										$this->notification->set_message("File Gambar gagal diupload");
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
        redirect('private/agenda/edit/'.$this->input->post('id_agenda'));
    }


   
    public function process_hapus() {
        // load library
        $this->load->library('notification');
		$this->load->library('uploader');
        $this->load->model('agendamodel');
        // set rules
        $this->notification->check_post('id_agenda', 'id', 'required');
        // run
        if ($this->notification->valid_input()) {
            // params
            $params = $this->input->post('id_agenda');
			if(is_array($params)):
				// execute
				foreach($params as $id):
					$berita = $this->agendamodel->get_agenda_by_id($id);
					$this->agendamodel->process_agenda_delete($id);
					$this->uploader->remove_dir('doc/agenda/'.$id."/");
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
		redirect('private/agenda');
    }
	
		/////// Print PDF 
	private function print_detail_pdf(){
		 /// start the pdf output 
		 error_reporting(E_ERROR);
       // load
        $this->load->file('system/plugins/tcpdf/tcpdf.php');
		$this->load->library('mypdf');
		$this->load->helper('download');
		$this->load->model('agendamodel');
        //$obj_tcpdf = new TCPDF();
		$obj_tcpdf = new MYPDF();
		
        // set header and footer fonts
		$obj_tcpdf->setFooterFont(array("helvetica", '', '8'));
        //$obj_tcpdf->SetDisplayMode('real');
        $obj_tcpdf->setPrintHeader(false);
        //$obj_tcpdf->setPrintFooter(false);
        $obj_tcpdf->SetMargins(10, 10);
        $obj_tcpdf->SetFont("helvetica", "", 12);
        $obj_tcpdf->SetAutoPageBreak(true, 5);
       
		//initialize document
		// add a page
        $obj_tcpdf->AddPage('L','A4');
	    //set basic data 
		$table = '';
		$id_agenda = $this->uri->segment(5, 0);
		$agenda = $this->agendamodel->get_agenda_by_id($id_agenda);
		$judul = url_title('Detail Kegiatan');
		
        // parse content
		$this->DisplayPdfDetail($agenda, $obj_tcpdf, false);
		//$obj_tcpdf->lastPage();
        //Close and output PDF document
		$nama_file = $judul.".pdf";
		$file_path = "./doc/pdf/".$nama_file;
        $obj_tcpdf->Output($file_path, "F");
		$filedata = file_get_contents($file_path);
		force_download($nama_file, $filedata);
	}
	
	private function process_print(){
		$list = $this->input->post('print-list');
		$detail = $this->input->post('print-detail');
		$this->session->set_userdata('param_cetak', array('start' => $this->input->post('cetak_start'),
				'end' => $this->input->post('cetak_end')) );
		if(!empty($detail)):
			 $this->print_pdf_kegiatan($this->input->post('cetak_start') , $this->input->post('cetak_end'),'detail');
		else:
			$this->print_pdf_kegiatan($this->input->post('cetak_start') , $this->input->post('cetak_end'),'list');
		endif;
	}
	
	
	public function print_pdf_kegiatan($start = 0 , $end = 10, $tipe = 'list') {
        // template content
        $this->smarty->assign("template_content", "private/agenda/list");
		$this->load->library('datetimemanipulation');
		
        // load
		$this->layout->load_javascript('js/jquery/jquery-1.4.2.min.js');
		$this->load->library('pagination');
        $this->load->model('agendamodel');
		 $this->load->model('agendakategorimodel');
		 $this->load->library('notification');
		 
		$search_key = array("judul_agenda" => '%' , "id_kategori" => '%','bulan' => '%', 'tahun' => '%',
		'status' => '%' );
		$search = $this->session->userdata('search_agenda');
        if(!empty($search)) {
            // search parameter
           $search_key['judul_agenda'] = (!empty($search['judul_agenda'])?'%'.$search['judul_agenda'].'%':'%');
           $search_key['id_kategori'] = (!empty($search['id_kategori'])?$search['id_kategori']:'%');
		   $search_key['bulan'] = (!empty($search['bulan'])?'%'.$search['bulan'].'%':'%');
		   $search_key['tahun'] = (!empty($search['tahun'])?'%'.$search['tahun'].'%':'%');
		   $search_key['status'] = (!empty($search['status'])?'%'.$search['status'].'%':'%');
         
        }
		
		$limit = array(intval($start-1), intval($end));
		$params = array_merge($search_key, $limit);
        $datacetak = $this->agendamodel->get_list_agenda($params);
		
        /// start the pdf output 
		 error_reporting(E_ERROR);
       // load
        $this->load->file('system/plugins/tcpdf/tcpdf.php');
		$this->load->library('mypdf');
		$this->load->helper('download');
        //$obj_tcpdf = new TCPDF();
		$obj_tcpdf = new MYPDF();
		
        // set header and footer fonts
		$obj_tcpdf->setFooterFont(array("helvetica", '', '8'));
        //$obj_tcpdf->SetDisplayMode('real');
        $obj_tcpdf->setPrintHeader(false);
        //$obj_tcpdf->setPrintFooter(false);
        $obj_tcpdf->SetMargins(10, 10);
        $obj_tcpdf->SetFont("helvetica", "", 12);
        $obj_tcpdf->SetAutoPageBreak(true, 5);
       
		//initialize document
		// add a page
        $obj_tcpdf->AddPage('L','A4');
		//set basic data 
		$table = '';
		
		$judul = url_title('Daftar Kegiatan');
		
        // parse content
		if($tipe == 'detail'):
			if(!empty($datacetak)):
				foreach($datacetak as $agenda):
					$this->DisplayPdfDetail($agenda, $obj_tcpdf, true);
				endforeach;
			endif;
		else:
			if(!empty($datacetak)):
	        	$this->displayListPageKinerja($datacetak, $obj_tcpdf);
			endif;
		endif;
		
		$obj_tcpdf->lastPage();
        //Close and output PDF document
		$nama_file = $judul.".pdf";
		$file_path = "./doc/pdf/".$nama_file;
        $obj_tcpdf->Output($file_path, "F");
		$filedata = file_get_contents($file_path);
		force_download($nama_file, $filedata);
        
    }
	
	
	////// FUNCTION PDF PRINT ???????????????????
	private function DisplayPdfDetail($agenda, $obj_tcpdf, $from_list = false){
		$table_anggota = $this->DisplayDetailAnggota();
		$this->load->library('datetimemanipulation');
		if(!empty($agenda)):
		   
			
			switch($agenda['status']):
				case 'batal':
					$agenda['status'] = "Dibatalkan";
					break;
				case 'selesai':
					$agenda['status'] = "Terlaksana";
					break;
				default:
					$agenda['status'] = "Rencana";
					break;
			endswitch;
			$agenda['tanggal_mulai'] = $this->datetimemanipulation->GetFullDate($agenda['tanggal_mulai']);
			$agenda['tanggal_selesai'] = $this->datetimemanipulation->GetFullDate($agenda['tanggal_selesai']);
			//$tabel_data .= '<tr><td style="width:560px;" class="judul_atas">Detail Kegiatan</td></tr>';
			$tabel_data .= '<tr><td style="width:120px;">Judul Agenda </td><td style="width:20px;">: </td><td style="width:410px;align:left;">'.$agenda['judul_agenda'].'</td></tr>';
			$tabel_data .= '<tr><td style="width:120px;">Kategori Kegiatan </td><td style="width:20px;">: </td><td style="width:410px;align:left;">'.$agenda['nama_kategori'].'</td></tr>';
			$tabel_data .= '<tr><td style="width:120px;">Tanggal Kegiatan </td><td style="width:20px;">: </td><td style="width:410px;align:left;">'.$agenda['tanggal_mulai'].' - '.$agenda['tanggal_selesai'].'</td></tr>';
			$tabel_data .= '<tr><td style="width:120px;">Kecamatan </td><td style="width:20px;">: </td><td style="width:410px;align:left;">'.$agenda['nama_kecamatan'].'</td></tr>';
			$tabel_data .= '<tr><td style="width:120px;">Kelurahan</td><td style="width:20px;">: </td><td style="width:410px;align:left;">'.$agenda['nama_kelurahan'].'</td></tr>';
			$tabel_data .= '<tr><td style="width:120px;">Lokasi </td><td style="width:20px;">: </td><td style="width:410px;align:left;">'.$agenda['lokasi'].'</td></tr>';
			$path = 'doc/agenda/'.$agenda['id_agenda'].'/'.$agenda['image_agenda'];
			if(!empty($agenda['image_agenda']) AND is_file($path)):
				$image_agenda= '<img src="'.$path.'" alt="" width="150" />';
				$tabel_data .= '<tr><td valign="top" style="width:120px;">Foto Utama </td><td style="width:20px;">: </td><td style="width:410px;align:left;">'.$image_agenda.'</td></tr>';
			endif;
			$tabel_data .= '<tr><td style="width:120px;">Status Kegiatan </td><td style="width:20px;">: </td><td style="width:410px;align:left;">'.$agenda['status'].'</td></tr>';
			$tabel_data .= '<tr><td style="width:120px;">Keterangan </td><td  style="width:20px;">: </td><td style="width:410px;align:left;"></td></tr>';
			$tabel_data .= '<tr><td colspan="3" style="text-align:justify;">'.$agenda['keterangan'].'</td></tr>';
			$tabel_data .= '<tr><td colspan="3">&nbsp;</td></tr>';
			
			/// album kegiatan 
			$this->db->from('agenda_image_m');
			$this->db->where('id_agenda', $agenda['id_agenda']);
			$this->db->order_by('urutan');
			$dataalbum = $this->db->get()->result_array();
			$i = 1;
			if(!empty($dataalbum)):
				$tabel_data .= '<tr><td colspan="3"><u>Album Foto Kegiatan</u> : </td></tr>';
				foreach($dataalbum  as $album):
					$patha = 'doc/agenda/'.$album['id_agenda'].'/'.$album['file_image'];
					if(!empty($album['file_image']) AND is_file($patha)):
						$tabel_data .= '<tr><td align="center" colspan="3"><img src="'.$patha.'" width="220" height="150" border="0" /><br />'.$album['keterangan'].'</td></tr>';
						$i++;
					endif;
				endforeach;
			endif;
			
			
		
		endif;
		$tabel_data .= '</table><br />';
		
		//echo $tabel_data; exit;
		$tabel_data = $table_anggota . $tabel_data;
		$obj_tcpdf->writeHTML($tabel_data, true, false, true, false, '');
		if($from_list):
			$obj_tcpdf->AddPage();
		endif;
		
	}
	
	private function DisplayDetailAnggota(){
		//$this->dbdpd = $this->load->database('kinerja', TRUE);
		// get id user 
		$nama_caleg = NAMA_CALEG;
		$level_caleg = LEVEL_CALEG;
		$nama_daerah = DAERAH_CALEG;
		$judul = '';
		// get detail nama anggota 
		
		$style_table = '<style>
		.name_col {
			width:120px;
			border-bottom: 1px solid #000000;
			text-align: left;
		}
		.dot_col{
			width:20px;
			border-bottom: 1px solid #000000;
			text-align: center;
		}
		.val_col{
			width:200px;
			border-bottom: 1px solid #000000;
			text-align: left;
		}
		</style>
		';
		$table = '';
		$table = '<table cellpadding="5" cellspacing="0" style="width:440px;">
			<tr><td class="name_col">Nama Caleg </td><td class="dot_col">: </td><td class="val_col">'.$nama_caleg.'</td></tr>
			<tr><td class="name_col" colspan="3" style="width:440px;">Calon Legislatif '.$level_caleg.' '.$nama_daerah.'</td></tr>
			</table><br /><br />';
		$table = $style_table . $table;
		return $table;
	}
	
	private function displayListPageKinerja($indexagenda ,$obj_tcpdf){
		
		if(!empty($indexagenda)):
			$html .= '<style>';
			$html .= '
			.judul{
				text-align: center; font-weight: bold;
				padding : 5px; font-size: 18px;
				background-color : #DEDEDE;
				border: 1px solid #CCCCCC;
			}
			.cell_center_no{
				text-align: center; 
				font-size: 16px;
				padding : 5px;
				valign:top;
				border-bottom: 1px solid #DEDEDE;
			}
			.cell_center{
				text-align: center; 
				font-size: 16px;
				padding : 5px;
				valign: top;
				border-bottom: 1px solid #DEDEDE;
			}
			.cell_data{
				text-align: left; 
				font-size: 16px;
				padding : 5px;
				valign: top;
				border-bottom: 1px solid #DEDEDE;
			}
			';
			$html .= '</style>';
			$html .= '<table cellspacing="0" cellpadding="5">';
			$html .= '<tr><td class="judul" colspan="3" style="width:705px;">Daftar Kegiatan</td></tr>';
			$html .= '<tr><td class="judul" style="width:25px;">No</td>
			<td class="judul" style="width:130px;"> Judul Agenda</td>
			<td class="judul" style="width:550px;">Keterangan Kegiatan</td></tr>';
			$no = $arr_data['start']+1;
			foreach($indexagenda as $key=>$data):
				
			 switch($indexagenda[$key]['status']):
				case 'batal':
					$indexagenda[$key]['status'] = "Dibatalkan";
					break;
				case 'selesai':
					$indexagenda[$key]['status'] = "Terlaksana";
					break;
				default:
					$indexagenda[$key]['status'] = "Rencana";
					break;
			endswitch;
				$indexagenda[$key]['tanggal_mulai'] = $this->datetimemanipulation->GetFullDate($data['tanggal_mulai']);
				$indexagenda[$key]['tanggal_selesai'] = $this->datetimemanipulation->GetFullDate($data['tanggal_selesai']);
				$indexagenda[$key]['url_title'] = url_title($data['judul_agenda']);
				$path = 'doc/agenda/'.$data['id_agenda'].'/'.$data['image_agenda'];
				if(is_file($path)):
					$indexagenda[$key]['image_agenda'] = '<img src="'.$path.'" width="100">';
				endif;
				$html .= '<tr><td class="cell_center">'.$no.'</td> 
				<td class="cell_center">'.$indexagenda[$key]['image_agenda'].'</td> 
				<td class="cell_data">Tanggal Kegiatan: '  
				.$indexagenda[$key]['tanggal_mulai'].' - '.$indexagenda[$key]['tanggal_selesai'] 
				.'<br />'.$indexagenda[$key]['judul_agenda'] 
				.'<br />Provinsi : '.$indexagenda[$key]['name_provincy'] 
				.'<br />Kota : '.$indexagenda[$key]['name_provincy'] 
				.'<br />Lokasi : '.$indexagenda[$key]['lokasi'].'
				<br />Status Kegiatan : '.$indexagenda[$key]['status'].'</td>
				</tr>';
				$no++;
			endforeach;
			$html .= '</table>';
			
			$table_anggota = $this->DisplayDetailAnggota();
			$html = $table_anggota . $html;
			$obj_tcpdf->writeHTML($html, true, false, true, false, '');
			
		endif;
	}
	
	
	
}