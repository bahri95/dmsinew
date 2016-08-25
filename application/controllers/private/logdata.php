<?php
// important * untuk application base dari halaman ini
class Logdata extends MY_Controller {

    function  __construct() {
        // load application base
       parent::__construct();
	   $this->PrivateAppBase();
    }

    public function index() {
         // template content
         $this->smarty->assign("template_content", "private/logdata/list");
         // load
         $this->load->model('logmodel');
         $this->load->library('notification');
		 $this->load->library('pagination');
		 $this->load->library("datetimemanipulation");
		 
		
		 $this->smarty->assign("search_status", "");
		 
		 $list_namadata = $this->session->userdata('nama_datalog');
		 if(empty($list_namadata)):
		 		$list_namadata = $this->logmodel->get_list_nama_data();
				 if(!empty($list_namadata)):
					foreach($list_namadata as $key=>$row):
						$list_namadata[$key]['nama_view'] = $this->SetNamaData($row['nama_data']);
					endforeach;
				 endif;
				$this->session->userdata('nama_datalog');
				$this->session->set_userdata('nama_datalog', $list_namadata);
		 endif;
		 $this->smarty->assign("list_namadata", $list_namadata);
		 
		$search_text = 'Buka Pencarian'; $class_search = "close-search"; 
		$search_key = array("nama_data" => '%', "id_data"=> '%', "aksi" => '%', "nama_user" => '%', 
		"tanggal_awal" => '1900-01-01 00:00:00', "tanggal_akhir" => date('Y-m-d H:i:s'), 'keterangan' => '%'  );
		$search = $this->session->userdata('search_log');
		$search_status = $this->session->userdata('search_log_status');
        if(!empty($search)) {
			$this->smarty->assign("search_status", $search_status);
            // search parameter
			$search_key['nama_data'] = (!empty($search['nama_data'])?'%'.$search['nama_data'].'%':'%');
			$search_key['id_data'] = (!empty($search['id_data'])?'%'.$search['id_data'].'%':'%');
			$search_key['aksi'] = (!empty($search['aksi'])?'%'.$search['aksi'].'%':'%');
			$search_key['nama_user'] = (!empty($search['nama_user'])?'%'.$search['nama_user'].'%':'%');
			$search_key['tanggal_akhir'] = (!empty($search['tanggal_akhir'])? $search['tanggal_akhir']." 23:59:59":date('Y-m-d H:i:s'));
			$search_key['tanggal_awal'] = (!empty($search['tanggal_awal'])? $search['tanggal_awal']." 00:00:00":"1900-01-01 00:00:00");
			$search_key['keterangan'] = (!empty($search['keterangan'])?'%'.$search['keterangan'].'%':'%');
			
			
			$this->smarty->assign("nama_data", $search['nama_data']);
			$this->smarty->assign("id_data", $search['id_data']);
			$this->smarty->assign("aksi_selected", $search['aksi']);
			$this->smarty->assign("nama_user", $search['nama_user']);
			$this->smarty->assign("keterangan", $search['keterangan']);
            if(!empty($search['tanggal_awal'])):
				$this->smarty->assign("tanggal_awal", $search['tanggal_awal']);
			endif;
			 if(!empty($search['tanggal_akhir'])):
				$this->smarty->assign("tanggal_akhir", $search['tanggal_akhir']);
			endif;
            // print out excel / pdf
           
        }
		
		$config['base_url'] = site_url("private/logdata/index");
        $config['total_rows'] = $this->logmodel->get_total_log($search_key);
        $config['per_page'] = 10;
        $config['uri_segment'] = 4;
        $config['num_links'] = 5;
        $config['first_link'] = 'First';
        $config['last_link'] = 'Last';
        $config['next_link'] = 'Next';
        $config['prev_link'] = 'Prev';
		$config['full_tag_open'] = '<li>';
		$config['full_tag_close'] = '</li>';
        $config['cur_tag_open'] = '<a class="active">';
        $config['cur_tag_close'] = '</a>';
        $this->pagination->initialize($config);
        $pagging = $this->pagination->create_links();
        $this->smarty->assign("pagging", $pagging);
        //list data dari DB
        $totaldata = $config['total_rows'];
        $start = $this->uri->segment(4, 0) + 1;
        $end = $this->uri->segment(4, 0) + 10;
        $total = $config['total_rows'];
        if ($end > $config['total_rows']) {
            $end = $config['total_rows'];
        }
        $this->smarty->assign("no", $start);
        $this->smarty->assign("start", $start);
        $this->smarty->assign("end", $end);
        $limit = array(intval($this->uri->segment(4, 0)), $config['per_page']);
		$params = array_merge($search_key, $limit);
		// get data
        $logdata = $this->logmodel->get_list_log_limit($params);
		if(!empty($logdata)):
			foreach($logdata as $key=>$rec):
					$logdata[$key]['tanggal'] = $this->datetimemanipulation->GetFullDate($rec['tanggal'], "in", "yes");
					$logdata[$key]['nama_data'] = $this->SetNamaData($rec['nama_data']);
					$logdata[$key]['aksi'] = $this->SetNamaAksi($rec['aksi']);
			endforeach;
		endif;
        $this->smarty->assign("logdata", $logdata);
        $this->smarty->assign("total", $totaldata);
		
		if(!empty($search['nama_data']) OR !empty($search['id_data']) OR !empty($search['aksi']) OR !empty($search['nama_user']) OR !empty($search['tanggal_awal']) OR !empty($search['tanggal_akhir']) OR !empty($search['keterangan']) ):
				$this->smarty->assign("search_status", $search_status);
			endif;
        // parse url
       $this->smarty->assign("search_text", $search_text);
		$this->smarty->assign("class_search", $class_search );
		
        $this->smarty->assign('url_list', site_url('private/logdata/index'));
		$this->smarty->assign('url_process', site_url('private/logdata/process/search'));
		
        // notification
        $arr_notify = $this->notification->get_notification();
        // notification
        $this->smarty->assign("notification_msg", $arr_notify['message']);
        $this->smarty->assign("notification_status", (empty($arr_notify['message_status'])?'red':'green'));
		/**/
        // display document
         $this->parser->parse('private/base-layout/document.html');
    }
	
	
	
	function SetNamaData($nama_data){
		switch($nama_data):
			case 'koleksi':
			 	$keterangan = "Koleksi";
				break;
			case 'fungsi':
				$keterangan = "Fungsi Koleksi";
				break;
			case 'museum':
				$keterangan = "Museum";
				break;
			case 'admin':
				$keterangan = "User Administrator/Operator";
				break;
			
			case 'kota':
				$keterangan = "Kabupaten/Kota";
				break;
			case 'negara':
				$keterangan = "Negara";
				break;
			case 'provinsi':
				$keterangan = "Provinsi";
				break;
			case 'penyelenggara':
				$keterangan = "Instansi Pemilik";
				break;
			case 'profil':
				$keterangan = "Profil Instansi";
				break;
			case 'berita':
				$keterangan = "Berita";
				break;
			case 'agenda':
				$keterangan = "Kegiatan";
				break;
			case 'pengumuman':
				$keterangan = "Pengumuman";
				break;
			case 'download':
				$keterangan = "File Download";
				break;
			case 'video':
				$keterangan = "Video";
				break;
			case 'faq':
				$keterangan = "FAQ";
				break;
			default:
				$keterangan = "Koleksi";
				break;
		endswitch;
		return $keterangan;
	}
	
	function SetNamaAksi($aksi){
		switch($aksi):
			case 'add':
			 	$keterangan ="Tambah Data";
				break;
			case 'edit':
				$keterangan = "Edit Data";
				break;
			case 'hapus':
				$keterangan = "Hapus Data";
				break;
			
			default:
				$keterangan = "";
				break;
		endswitch;
		return $keterangan;
	}
	
	
	
	public function process_search() {
		
	    $search = array("nama_data" => $this->input->post('nama_data'), 
		"id_data" => $this->input->post('id_data'), 
		"aksi" => $this->input->post('aksi'),
		"nama_user" => $this->input->post('nama_user'), 
		"tanggal_awal" => $this->input->post('tanggal_awal'), 
		"tanggal_akhir" => $this->input->post('tanggal_akhir'),
		"keterangan" => $this->input->post('keterangan')
		);
		$this->session->set_userdata('search_log_status', 'yes');
        // reset
        $reset = $this->input->post('reset');
        if(!empty($reset)) {
            $search = array();
			$this->session->set_userdata('search_log_status','');
			$this->session->unset_userdata('search_log_status');
        }
       
        // set session
        $this->session->set_userdata('search_log', $search);
        // default redirect
        redirect('private/logdata');
    }

   
	// switcher
    public function process($action) {
        switch($action) {
            case 'search':
                $this->process_search();
                break;
            default :
            // default redirect
                redirect('private/logdata');
                break;
        }
    }

	
}