<?php

class search extends MY_Controller {

    function  __construct() {
        // load application base
       parent::__construct();
	   $this->PrivateAppBase();
    }

    public function index() {
        // template content
        $this->smarty->assign("template_content", "private/search/list");
        // load
		$this->smarty->assign("baseurl", BASEURL);
        $this->load->model('koleksimodel');
		$this->load->model('penyelenggaramodel');
		$this->load->model('koleksi_simpanmodel');
		$this->load->model('koleksi_viewmodel');
        $this->load->library('pagination');
        $this->load->library('notification');
        $this->layout->load_javascript('js/jquery/jquery-1.4.2.min.js');
        $this->layout->load_javascript("js/utility/checkbox.js");
		$this->layout->load_javascript('js/jquery/jquery-ui-1.7.2.custom.min.js');
        $this->layout->load_style('jquery.ui.blitzer/jquery-ui-1.7.2.custom.css');
        // search variable
		$search_tanggal = false;
        $search_key = array("id_museum"   => '%', "id_kelompok"  => '%', "penetapan_bcb" => '%', "id_penyelenggara" => '%',
		"nama_koleksi" => '%' , "nama_khusus" => '%', "tanggal_pencatatan" => '%',  "tanggal_pencatatan2" => '%', 
		 "cara_perolehan" => '%', "keaslian_koleksi" => '%', "penyimpanan" => '%', "keutuhan" => '%',"kondisi" => '%' );
        $search = $this->session->userdata('search_koleksi_new');
        if(!empty($search)) {
			$this->smarty->assign("museum_selected", $search['id_museum']);
            $this->smarty->assign("kelompok_selected", $search['id_kelompok']);
			$this->smarty->assign("penetapan_bcb", $search['penetapan_bcb']);
			$this->smarty->assign("id_penyelenggara", $search['id_penyelenggara']);
			$this->smarty->assign("nama_koleksi", $search['nama_koleksi']);
			$this->smarty->assign("nama_khusus", $search['nama_khusus']);
			$this->smarty->assign("cara_perolehan", $search['cara_perolehan']);
			$this->smarty->assign("keaslian_koleksi", $search['keaslian_koleksi']);
			$this->smarty->assign("id_penyimpanan", $search['penyimpanan']);
			$this->smarty->assign("keutuhan", $search['keutuhan']);
			$this->smarty->assign("kondisi", $search['kondisi']);
            // search parameter
            $search_key['id_museum'] = (!empty($search['id_museum'])?$search['id_museum']:'%');
            $search_key['id_kelompok'] = (!empty($search['id_kelompok'])?$search['id_kelompok']:'%');
			$search_key['penetapan_bcb'] = (!empty($search['penetapan_bcb'])?$search['penetapan_bcb']:'%');
			$search_key['id_penyelenggara'] = (!empty($search['id_penyelenggara'])?$search['id_penyelenggara']:'%');
			$search_key['nama_koleksi'] = (!empty($search['nama_koleksi'])?'%'.$search['nama_koleksi'].'%':'%');
			$search_key['nama_khusus'] = (!empty($search['nama_khusus'])?'%'.$search['nama_khusus'].'%':'%');
			$search_key['cara_perolehan'] = (!empty($search['cara_perolehan'])?$search['cara_perolehan']:'%');
			$search_key['keaslian_koleksi'] = (!empty($search['keaslian_koleksi'])?$search['keaslian_koleksi']:'%');
			$search_key['penyimpanan'] = (!empty($search['penyimpanan'])?$search['penyimpanan']:'%');
			$search_key['keutuhan'] = (!empty($search['keutuhan'])?$search['keutuhan']:'%');
			$search_key['kondisi'] = (!empty($search['kondisi'])?$search['kondisi']:'%');
			if(!empty($search['tanggal_pencatatan']) AND !empty($search['tanggal_pencatatan2'])):
				$search_key['tanggal_pencatatan'] = $search['tanggal_pencatatan'];
				$search_key['tanggal_pencatatan2'] = $search['tanggal_pencatatan2'];
				$search_tanggal = true;
				 $this->smarty->assign("tanggal_pencatatan", $search['tanggal_pencatatan']);
           		 $this->smarty->assign("tanggal_pencatatan2", $search['tanggal_pencatatan2']);
			else:	
				$search_key['tanggal_pencatatan'] = '%';
				$search_key['tanggal_pencatatan2'] = '%';
				 $this->smarty->assign("tanggal_pencatatan", '');
           		 $this->smarty->assign("tanggal_pencatatan2", '');
				 $search_tanggal = false;
			endif;
			
			
            // print out excel / pdf
            if(!empty($search['id_museum'])) {
                $this->smarty->assign("print_status", true);
                $this->smarty->assign("url_print_excel", site_url('private/search/print_excel/'.$search['id_museum'].'/'.$search['id_kelompok']));
                $this->smarty->assign("url_print_pdf", site_url('private/search/print_pdf/'.$search['id_museum'].'/'.$search['id_kelompok']));
            }
        }
        // get notification
        $arr_notify = $this->notification->get_notification();
        //pagination
        $config['base_url'] = site_url("private/search/index");
		if($search_tanggal):
			$config['total_rows'] = $this->koleksimodel->get_total_koleksi_search_tanggal($search_key);
		else:
			$config['total_rows'] = $this->koleksimodel->get_total_koleksi_search($search_key);
		endif;
		//echo $this->db->last_query();exit;
        //exit;
        $config['per_page'] = 10;
        $config['uri_segment'] = 4;
        $config['num_links'] = 5;
        $config['first_link'] = 'First';
        $config['last_link'] = 'Last';
        $config['next_link'] = 'Next';
        $config['prev_link'] = 'Prev';
        $config['cur_tag_open'] = ' <a href="#" class="active">';
        $config['cur_tag_close'] = '</a>';
        $this->pagination->initialize($config);
        $pagging = $this->pagination->create_links();
        $this->smarty->assign("pagging", $pagging);
        // pagination attribute
        $start = $this->uri->segment(4, 0) + 1;
        $end = $this->uri->segment(4, 0) + 10;
        $end = (($end > $config['total_rows'])?$config['total_rows']:$end);
        $this->smarty->assign("no", $start);
        $this->smarty->assign("start", $start);
        $this->smarty->assign("end", $end);
        // data
        $limit = array(intval($this->uri->segment(4, 0)), $config['per_page']);
        $params = array_merge($search_key, $limit);
		if($search_tanggal):
        	$data = $this->koleksimodel->get_data_koleksi_search_tanggal($params);
        else:
			$data = $this->koleksimodel->get_data_koleksi_search($params);
		endif;
		//echo $this->db->last_query();exit;
        $this->smarty->assign("total", $config['total_rows']);
		// gambar koleksi 
		if(!empty($data)):
			foreach($data as $key=>$rec):
				$data[$key]['image'] = '';
				$gambarkoleksi = $this->koleksi_viewmodel->get_view_by_id_satu($rec['id_koleksi']);
				//print_r($gambarkoleksi);
				if(!empty($gambarkoleksi)):
					$dir = 'doc/museum/'.$rec['id_museum'].'/'.$rec['id_koleksi'].'/'.$gambarkoleksi['view_name'];
					if(is_file($dir)):
						$data[$key]['image'] = '<img src="'.BASEURL.$dir.'" width="80" />';
					else:
						$data[$key]['image'] = $gambarkoleksi['view_name'].'';
					endif;
				endif;
			endforeach;
		endif;
		 $this->smarty->assign("koleksi", $data);
		
        // list museum
        $museum = $this->koleksimodel->get_list_museum();
        $this->smarty->assign("museum", $museum);
		//list kelompok 
		 $kelompok = $this->koleksimodel->get_kelompok_koleksi_terbatas();
		$this->smarty->assign("kelompok_koleksi", $kelompok);
		//penyelenggara
		$penyelenggara = $this->penyelenggaramodel->get_data_penyelenggara_all();
        $this->smarty->assign("penyelenggara", $penyelenggara); 
		//penyimpanan
		$penyimpanan = $this->koleksi_simpanmodel->get_list_penyimpanan();
        $this->smarty->assign("penyimpanan", $penyimpanan);
        // list jenis
        //$jenis_koleksi = $this->koleksimodel->get_list_jenis_koleksi();
        //$this->smarty->assign("jenis_koleksi", $jenis_koleksi);
        // notification
        $this->smarty->assign("notification_msg", $arr_notify['message']);
        $this->smarty->assign("notification_status", (empty($arr_notify['message_status'])?'red':'green'));
        // parse url
        $this->smarty->assign('url_add', site_url('private/search/add'));
        $this->smarty->assign('url_list', site_url('private/search'));
        $this->smarty->assign('url_process', site_url('private/search/process/hapus'));
        $this->smarty->assign('url_search', site_url('private/search/process/search'));
        // display document
        $this->parser->parse('private/base-layout/document.html');
    }

    public function process($action) {
        switch ($action) {
            case 'add':
                $this->process_add();
                break;
            case 'edit-koleksi':
                $this->process_edit();
                break;
            case 'hapus':
                $this->process_hapus();
                break;
            case 'search':
                $this->process_search();
                break;
            default :
            // default redirect
                redirect('private/search');
                break;
        }
    }

    public function process_search() {
        $search = array("id_museum" => $this->input->post('id_museum'), 
			"id_kelompok" => $this->input->post('id_kelompok'),
			"penetapan_bcb" => $this->input->post('penetapan_bcb'),
			"id_penyelenggara" => $this->input->post('id_penyelenggara'),
			"nama_koleksi" => $this->input->post('nama_koleksi'),
			"nama_khusus" => $this->input->post('nama_khusus'),
			"tanggal_pencatatan" => $this->input->post('tanggal_pencatatan'),
			"tanggal_pencatatan2" => $this->input->post('tanggal_pencatatan2'),
			"cara_perolehan" => $this->input->post('cara_perolehan'),
			"keaslian_koleksi" => $this->input->post('keaslian_koleksi'),
			"penyimpanan" => $this->input->post('id_penyimpanan'),
			"keutuhan" => $this->input->post('keutuhan'),
			"kondisi" => $this->input->post('kondisi')
		);
        // reset
        $reset = $this->input->post('reset');
        if(!empty($reset)) {
            $search = array();
        }
        // print out
        $print = $this->input->post('excel');
        if(!empty($print)) {
            $this->print_excel();
        }
        // set session
        $this->session->set_userdata('search_koleksi_new', $search);
        // default redirect
        redirect('private/search');
    }

    public function add() {
        // template content
        $this->smarty->assign("template_content", "private/search/search-add");
        //load
        $this->load->model('koleksimodel');
		$this->load->model('penyelenggaramodel');
        $this->load->library('notification');
        $this->layout->load_javascript('js/jquery/jquery-1.4.2.min.js');
        $this->layout->load_javascript('js/jquery/jquery-ui-1.7.2.custom.min.js');
        $this->layout->load_style('jquery.ui.blitzer/jquery-ui-1.7.2.custom.css');
        // url
        $this->smarty->assign("urladd", site_url("private/search/add"));
        $this->smarty->assign("url_list", site_url("private/search"));
        $this->smarty->assign("url_process", site_url("private/search/process/add"));
        // museum
        $museum = $this->koleksimodel->get_list_museum();
        $this->smarty->assign("museum", $museum);
        // jenis koleksi
        $jenis_koleksi = $this->koleksimodel->get_list_jenis_koleksi();
        $this->smarty->assign("jenis_koleksi", $jenis_koleksi);
		//penyelenggara
		$penyelenggara = $this->penyelenggaramodel->get_data_penyelenggara_all();
        $this->smarty->assign("penyelenggara", $penyelenggara);
        // parse notification
        $arr_notify = $this->notification->get_notification();
        if (!empty($arr_notify['post'])) {
            $this->smarty->assign("data", $arr_notify['post']);
        }
        // notification
        $this->smarty->assign("notification_msg", $arr_notify['message']);
        $this->smarty->assign("notification_status", (empty($arr_notify['message_status'])?'red':'green'));
        // display document
        $this->parser->parse('private/base-layout/document.html');
    }

    public function process_add() {
        // load
        $this->load->model('koleksimodel');
		$this->load->model('penyelenggaramodel');
        $this->load->library('notification');
        // set rules
        $this->notification->check_post('id_museum', 'Museum', 'required');
        $this->notification->check_post('id_jenis', 'Jenis Koleksi', 'required');
        //$this->notification->check_post('sub_jenis', 'Sub Jenis Koleksi', 'required');
        $this->notification->check_post('kelompok_koleksi', 'Kelompok Koleksi', 'required');
        $this->notification->check_post('penetapan_bcb', 'Penetapan BCB', 'required');
        $this->notification->check_post('no_reg_lama', 'Nomor Registrasi Lama', 'required');
        $this->notification->check_post('no_reg', 'Nomor Registrasi', 'required');
        $this->notification->check_post('no_inv_lama', 'Nomor Inventaris Lama', 'required');
        $this->notification->check_post('no_inv', 'Nomor Inventaris', 'required');
        $this->notification->check_post('nama_koleksi', 'Nama Koleksi', 'required');
        $this->notification->check_post('nama_khusus', 'Nama Khusus', 'required');
        $this->notification->check_post('penyelenggara', 'Penyelenggara', 'required');
        $this->notification->check_post('fungsi_koleksi', 'Fungsi Koleksi', 'required');
        $this->notification->check_post('uraian', 'Uraian', 'required');
        $this->notification->check_post('tanggal_pencatatan', 'Tanggal Pencatatan', 'required');
        $this->notification->check_post('nama_pencatat', 'Nama Pencatat', 'required');
        // cek no registrasi
        $no_reg = $this->input->post('no_reg');
        if(!empty($no_reg)){
            $params_reg = array($this->input->post('no_reg'));
            $total_koleksi = $this->koleksimodel->get_total_koleksi_by_noreg($params_reg);
            if($total_koleksi > 0){
                $this->notification->set_message("Nomor Registrasi sudah terdaftar!");
            }
        }
		$id_kelompok = $this->input->post('kelompok_koleksi');
		if($id_kelompok == 4):
			$kelompok_koleksi = "Benda Alam";
		else:
			$kelompok_koleksi = "Benda Budaya";
		endif;
		
        // run
        if ($this->notification->valid_input()) {
            $params = array(
                    'id_museum' => intval($this->input->post('id_museum')),
                    'id_jenis' => intval($this->input->post('id_jenis')),
                    'sub_jenis' => $this->input->post('sub_jenis'),
					 'id_kelompok' => $this->input->post('kelompok_koleksi'),
                    'kelompok_koleksi' => $kelompok_koleksi,
                    'penetapan_bcb' => $this->input->post('penetapan_bcb'),
					'no_cagar_budaya' => $this->input->post('no_cagar_budaya'),
                    'no_reg_lama' => $this->input->post('no_reg_lama'),
                    'no_reg' => $this->input->post('no_reg'),
                    'no_inv_lama' => $this->input->post('no_inv_lama'),
                    'no_inv' => $this->input->post('no_inv'),
                    'nama_koleksi' => $this->input->post('nama_koleksi'),
                    'nama_khusus' => $this->input->post('nama_khusus'),
                    'penyelenggara' => $this->input->post('penyelenggara'),
                    'fungsi_koleksi' => $this->input->post('fungsi_koleksi'),
                    'uraian' => $this->input->post('uraian'),
                    'tanggal_pencatatan' => $this->input->post('tanggal_pencatatan'),
                    'nama_pencatat' => $this->input->post('nama_pencatat'), $this->id_user);
            if ($this->koleksimodel->process_koleksi_add($params)) {
                $this->notification->clear_post();
                $this->notification->set_message("Data berhasil disimpan");
                $this->notification->sent_notification(true);
                // redirect to edit
                $last_id = $this->koleksimodel->get_last_id();
                redirect('private/search/edit/' . $last_id);
            } else {
                $this->notification->set_message("Data gagal disimpan");
                $this->notification->sent_notification(false);
            }
        } else {
            $this->notification->sent_notification(false);
        }
        // default redirect
        redirect('private/search/add');
    }

    public function edit($id_koleksi = '') {
        // template content
        $this->smarty->assign("template_content", "private/search/search-edit");
        // load
        $this->load->model('koleksimodel');
		$this->load->model('penyelenggaramodel');
		$this->load->library('notification');
        $this->layout->load_javascript('js/jquery/jquery-1.4.2.min.js');
        $this->layout->load_javascript('js/jquery/jquery-ui-1.7.2.custom.min.js');
        $this->layout->load_style('jquery.ui.blitzer/jquery-ui-1.7.2.custom.css');
        // url
        $this->smarty->assign("url_add", site_url("private/search/add/"));
        $this->smarty->assign("url_list", site_url("private/search"));
        $this->smarty->assign("url_process", site_url("private/search/process/edit-koleksi"));
        $this->smarty->assign('url_edit_koleksi', site_url("private/search/edit/$id_koleksi"));
        $this->smarty->assign('url_edit_manfaat', site_url("private/search_manfaat/index/$id_koleksi"));
        $this->smarty->assign('url_edit_inventaris', site_url("private/search_perolehan/index/$id_koleksi"));
        $this->smarty->assign('url_edit_simpan', site_url("private/search_simpan/index/$id_koleksi"));
        $this->smarty->assign('url_edit_keris', site_url("private/search_keris/index/$id_koleksi"));
        $this->smarty->assign('url_edit_fisik', site_url("private/search_fisik/index/$id_koleksi"));
        $this->smarty->assign('url_edit_view', site_url("private/search_view/index/$id_koleksi"));
        // koleksi
        $koleksi = $this->koleksimodel->get_koleksi_by_id($id_koleksi);
        $this->smarty->assign("data", $koleksi);
        // museum
        $museum = $this->koleksimodel->get_list_museum();
        $this->smarty->assign("museum", $museum);
		//penyelenggara
		$penyelenggara = $this->penyelenggaramodel->get_data_penyelenggara_all();
        $this->smarty->assign("penyelenggara", $penyelenggara); 
		// jenis koleksi
        $jenis_koleksi = $this->koleksimodel->get_list_jenis_koleksi();
        $this->smarty->assign("jenis_koleksi", $jenis_koleksi);
        // parse notification
        $arr_notify = $this->notification->get_notification();
        if (!empty($arr_notify['post'])) {
            $this->smarty->assign("data", $arr_notify['post']);
        }
        // notification
        $this->smarty->assign("notification_msg", $arr_notify['message']);
        $this->smarty->assign("notification_status", (empty($arr_notify['message_status'])?'red':'green'));
        // display document
        $this->parser->parse('private/base-layout/document.html');
    }

    public function process_edit() {
        // load
        $this->load->model('koleksimodel');
        $this->load->library('notification');
        // set rules
        $this->notification->check_post('id_museum', 'Museum', 'required');
        $this->notification->check_post('id_jenis', 'Jenis Koleksi', 'required');
        $this->notification->check_post('sub_jenis', 'Sub Jenis Koleksi', 'required');
        $this->notification->check_post('kelompok_koleksi', 'Kelompok Koleksi', 'required');
        $this->notification->check_post('penetapan_bcb', 'Penetapan BCB', 'required');
        $this->notification->check_post('no_reg_lama', 'Nomor Registrasi Lama', 'required');
        $this->notification->check_post('no_reg', 'Nomor Registrasi', 'required');
        $this->notification->check_post('no_inv_lama', 'Nomor Inventaris Lama', 'required');
        $this->notification->check_post('no_inv', 'Nomor Inventaris', 'required');
        $this->notification->check_post('nama_koleksi', 'Nama Koleksi', 'required');
        $this->notification->check_post('nama_khusus', 'Nama Khusus', 'required');
        $this->notification->check_post('penyelenggara', 'Penyelenggara', 'required');
        $this->notification->check_post('fungsi_koleksi', 'Fungsi Koleksi', 'required');
        $this->notification->check_post('uraian', 'Uraian', 'required');
        $this->notification->check_post('tanggal_pencatatan', 'Tanggal Pencatatan', 'required');
        $this->notification->check_post('nama_pencatat', 'Nama Pencatat', 'required');
        // cek no registrasi
        $no_reg = $this->input->post('no_reg');
        $no_reg_old = $this->input->post('no_reg_old');
        if($no_reg != $no_reg_old){
            $params_reg = array($this->input->post('no_reg'));
            $total_koleksi = $this->koleksimodel->get_total_koleksi_by_noreg($params_reg);
            if($total_koleksi > 0){
                $this->notification->set_message("Nomor Registrasi sudah terdaftar!");
            }
        }
        // run
        if ($this->notification->valid_input()) {
            $params = array(
                    'id_museum' => intval($this->input->post('id_museum')),
                    'id_jenis' => intval($this->input->post('id_jenis')),
                    'sub_jenis' => $this->input->post('sub_jenis'),
                    'kelompok_koleksi' => $this->input->post('kelompok_koleksi'),
                    'penetapan_bcb' => $this->input->post('penetapan_bcb'),
					'no_cagar_budaya' => $this->input->post('no_cagar_budaya'),
                    'no_reg_lama' => $this->input->post('no_reg_lama'),
                    'no_reg' => $this->input->post('no_reg'),
                    'no_inv_lama' => $this->input->post('no_inv_lama'),
                    'no_inv' => $this->input->post('no_inv'),
                    'nama_koleksi' => $this->input->post('nama_koleksi'),
                    'nama_khusus' => $this->input->post('nama_khusus'),
                    'penyelenggara' => $this->input->post('penyelenggara'),
                    'fungsi_koleksi' => $this->input->post('fungsi_koleksi'),
                    'uraian' => $this->input->post('uraian'),
                    'tanggal_pencatatan' => $this->input->post('tanggal_pencatatan'),
                    'nama_pencatat' => $this->input->post('nama_pencatat'), $this->id_user,
                    $this->input->post('id_koleksi'));
            if ($this->koleksimodel->process_koleksi_edit($params)) {
                $this->notification->clear_post();
                $this->notification->set_message("Data berhasil disimpan");
                $this->notification->sent_notification(true);
            } else {
                $this->notification->set_message("Data gagal disimpan");
                $this->notification->sent_notification(false);
            }
        } else {
            $this->notification->sent_notification(false);
        }
        // default redirect
        redirect('private/search/edit/' . $this->input->post('id_koleksi'));
    }

    public function process_hapus() {
        // load library
        $this->load->model('koleksimodel');
        $this->load->library('notification');
        $this->load->library("uploader");
        // set rules
        $this->notification->check_post('id_koleksi', 'ID Koleksi', 'required');
        // run
        if ($this->notification->valid_input()) {
            // params
            $params = $this->input->post('id_koleksi');
            foreach($params as $id_koleksi) {
                $this->koleksimodel->process_koleksi_delete($id_koleksi);
                // remove
                $id_museum = $this->koleksimodel->get_museum_id_by_koleksi($id_koleksi);
                $this->uploader->remove_dir("doc/museum/" . $id_museum . "/" . $id_koleksi);
            }
            $this->notification->clear_post();
            $this->notification->set_message(count($params) . ' Data berhasil dihapus');
            $this->notification->sent_notification(true);
        }else {
            $this->notification->sent_notification(false);
        }
        // default redirect
        redirect('private/search/index');
    }

    // excel

    public function print_excel() {
        // disable error warning
        error_reporting(E_ERROR);
        // load
        $this->load->model('koleksimodel');
        // --
        set_time_limit(30);
        // load
        $this->load->file('system/plugins/excel/class.writeexcel_workbook.inc.php');
        $this->load->file('system/plugins/excel/class.writeexcel_worksheet.inc.php');
        // search variable
        $id_museum = $this->uri->segment(4, 0);
        $id_jenis = $this->uri->segment(5, 0);
        // params
        $params = array($id_museum, $id_jenis);
        // ---
        $tmp_name = tempnam("doc/tmp/excel/", "excel_file.xls");
        $record = $this->koleksimodel->get_laporan($params);
        $data_nama = $this->koleksimodel->get_laporan_koleksi($params);
        // check data
        if(empty($record) OR empty($data_nama)) {
            // default redirect
            redirect('private/search/index');
        }
        // --
        $workbook = new writeexcel_workbook($tmp_name);
        $worksheet = & $workbook->addworksheet();
        //set kolom
        $worksheet->set_column(1,1, 6);
        $worksheet->set_column(2,2, 13);
        $worksheet->set_column(3,3, 20);
        $worksheet->set_column(4,4, 17);
        $worksheet->set_column(5,5, 26);
        $worksheet->set_column(6,6, 20);
        $worksheet->set_column(7,8, 25);
        $worksheet->set_column(9,9, 16);
        $worksheet->set_column(10,68, 25);
        //tittles
        $tittle = $workbook->addformat();
        $tittle->set_bold();
        //border header
        $border =  $workbook->addformat();
        $border->set_border_color('black');
        $border->set_bold();
        $border->set_top(1);
        $border->set_bottom(1);
        $border->set_left(1);
        $border->set_right(1);
        $border->set_merge();

        //border content
        $border2 =  $workbook->addformat();
        $border2->set_border_color('black');
        $border2->set_top(1);
        $border2->set_bottom(1);
        $border2->set_left(1);
        $border2->set_right(1);

        $worksheet->repeat_rows(0, 1);

//        $worksheet->write(0, 0, "Data Koleksi");
        $worksheet->write(0, 1, "Nama Museum", $tittle);
        $worksheet->write(0, 3, $data_nama['nama_museum']);
        $worksheet->write(1, 1, "Jenis Koleksi", $tittle);
        $worksheet->write(1, 3, $data_nama['nama_jenis']);

        $start = 4;
        $worksheet->write(3, 1, "No", $border);
        $worksheet->write_blank(4, 1, $border);
        // data koleksi
        $worksheet->write(3, 2, "Koleksi", $border);
        $worksheet->write_blank(3, 3, $border);
        $worksheet->write_blank(3, 4, $border);
        $worksheet->write_blank(3, 5, $border);
        $worksheet->write_blank(3, 6, $border);
        $worksheet->write_blank(3, 7, $border);
        $worksheet->write_blank(3, 8, $border);
        $worksheet->write_blank(3, 9, $border);
        $worksheet->write_blank(3, 10, $border);
        $worksheet->write_blank(3, 11, $border);
        $worksheet->write_blank(3, 12, $border);
        $worksheet->write_blank(3, 13, $border);
        $worksheet->write_blank(3, 14, $border);
        $worksheet->write($start, 2, "Sub Jenis", $border);
        $worksheet->write($start, 3, "Kelompok koleksi", $border);
        $worksheet->write($start, 4, "Penetapan BCB", $border);
        $worksheet->write($start, 5, "Nomor Registrasi Lama", $border);
        $worksheet->write($start, 6, "Nomor Registrasi", $border);
        $worksheet->write($start, 7, "Nomor Inventaris Lama", $border);
        $worksheet->write($start, 8, "Nomor Inventaris", $border);
        $worksheet->write($start, 9, "Nama Koleksi", $border);
        $worksheet->write($start, 10, "Nama Khusus", $border);
        $worksheet->write($start, 11, "Penyelenggara", $border);
        $worksheet->write($start, 12, "Fungsi koleksi", $border);
        $worksheet->write($start, 13, "Uraian", $border);
        $worksheet->write($start, 14, "Nama Pencatat", $border);
        // manfaat
        $worksheet->write(3, 15, "Manfaat", $border);
        $worksheet->write_blank(3, 16, $border);
        $worksheet->write_blank(3, 17, $border);
        $worksheet->write_blank(3, 18, $border);
        $worksheet->write_blank(3, 19, $border);
        $worksheet->write($start, 15, "No. Katalog Penelitian", $border);
        $worksheet->write($start, 16, "Manfaat Penelitian", $border);
        $worksheet->write($start, 17, "No. Katalog Publikasi", $border);
        $worksheet->write($start, 18, "Manfaat Publikasi", $border);
        $worksheet->write($start, 19, "Manfaat Masyarakat", $border);
        // perolehan koleksi
        $worksheet->write(3, 20, "Perolehan Koleksi", $border);
        $worksheet->write_blank(3, 21, $border);
        $worksheet->write_blank(3, 22, $border);
        $worksheet->write_blank(3, 23, $border);
        $worksheet->write_blank(3, 24, $border);
        $worksheet->write_blank(3, 25, $border);
        $worksheet->write_blank(3, 26, $border);
        $worksheet->write_blank(3, 27, $border);
        $worksheet->write_blank(3, 28, $border);
        $worksheet->write_blank(3, 29, $border);
        $worksheet->write_blank(3, 30, $border);
        $worksheet->write_blank(3, 31, $border);
        $worksheet->write_blank(3, 32, $border);
        $worksheet->write_blank(3, 33, $border);
        $worksheet->write_blank(3, 34, $border);
        $worksheet->write_blank(3, 35, $border);
        $worksheet->write($start, 20, "Tanggal Perolehan ", $border);
        $worksheet->write($start, 21, "Cara Perolehan ", $border);
        $worksheet->write($start, 22, "Alamat Asal Perolehan", $border);
        $worksheet->write($start, 23, "Kode Pos ", $border);
        $worksheet->write($start, 24, "Nama Penemu ", $border);
        $worksheet->write($start, 25, "Alamat Penemu", $border);
        $worksheet->write($start, 26, "Tahun Penemuan", $border);
        $worksheet->write($start, 27, "Nama Pembuat", $border);
        $worksheet->write($start, 28, "Alamat Pembuat", $border);
        $worksheet->write($start, 29, "Tahun Pembuatan", $border);
        $worksheet->write($start, 30, "Nama Pemilik Terakhir", $border);
        $worksheet->write($start, 31, "Alamat Pemilik Terakhir", $border);
        $worksheet->write($start, 32, "Keaslian Koleksi", $border);
        $worksheet->write($start, 33, "Negara", $border);
        $worksheet->write($start, 34, "Umur Koleksi", $border);
        //penyimpanan koleksi
        $worksheet->write(3, 35, "Penyimpanan Koleksi", $border);
        $worksheet->write_blank(3, 36, $border);
        $worksheet->write_blank(3, 37, $border);
        $worksheet->write_blank(3, 38, $border);
        $worksheet->write($start, 35, "Kode Rekam", $border);
        $worksheet->write($start, 36, "Perekaman", $border);
        $worksheet->write($start, 37, "Kode Penyimpanan", $border);
        $worksheet->write($start, 38, "Penyimpanan", $border);
        //fisik koleksi
        $worksheet->write(3, 39, "Fisik Koleksi", $border);
        $worksheet->write_blank(3, 40, $border);
        $worksheet->write_blank(3, 41, $border);
        $worksheet->write_blank(3, 42, $border);
        $worksheet->write_blank(3, 43, $border);
        $worksheet->write_blank(3, 44, $border);
        $worksheet->write_blank(3, 45, $border);
        $worksheet->write_blank(3, 46, $border);
        $worksheet->write_blank(3, 47, $border);
        $worksheet->write_blank(3, 48, $border);
        $worksheet->write_blank(3, 49, $border);
        $worksheet->write_blank(3, 50, $border);
        $worksheet->write_blank(3, 51, $border);
        $worksheet->write_blank(3, 52, $border);
        $worksheet->write_blank(3, 53, $border);
        $worksheet->write_blank(3, 54, $border);
        $worksheet->write_blank(3, 55, $border);
        $worksheet->write_blank(3, 56, $border);
        $worksheet->write_blank(3, 57, $border);
        $worksheet->write_blank(3, 58, $border);
        $worksheet->write_blank(3, 59, $border);
        $worksheet->write_blank(3, 60, $border);
        $worksheet->write($start, 39, "Bahan Dasar", $border);
        $worksheet->write($start, 40, "Bahan Tambahan", $border);
        $worksheet->write($start, 41, "Keutuhan", $border);
        $worksheet->write($start, 42, "Bentuk", $border);
        $worksheet->write($start, 43, "Panjang", $border);
        $worksheet->write($start, 44, "Lebar", $border);
        $worksheet->write($start, 45, "Tinggi", $border);
        $worksheet->write($start, 46, "Tebal", $border);
        $worksheet->write($start, 47, "Diameter", $border);
        $worksheet->write($start, 48, "Karat", $border);
        $worksheet->write($start, 49, "Kondisi", $border);
        $worksheet->write($start, 50, "Warna Dominan", $border);
        $worksheet->write($start, 51, "Warna Tambahan", $border);
        $worksheet->write($start, 52, "Ragam Hias", $border);
        $worksheet->write($start, 53, "Bentuk Ragam Hias", $border);
        $worksheet->write($start, 54, "Teknik Pembuatan", $border);
        $worksheet->write($start, 55, "Bentuk Tulisan", $border);
        $worksheet->write($start, 56, "Bahasa Tulisan", $border);
        $worksheet->write($start, 57, "Kelompok Etnis", $border);
        $worksheet->write($start, 58, "Glazir", $border);
        $worksheet->write($start, 59, "Glazir Koleksi", $border);
        $worksheet->write($start, 60, "Jaman", $border);
        //informasi khusus keris
        $worksheet->write(3, 61, "Koleksi Keris", $border);
        $worksheet->write_blank(3, 62, $border);
        $worksheet->write_blank(3, 63, $border);
        $worksheet->write_blank(3, 64, $border);
        $worksheet->write_blank(3, 65, $border);
        $worksheet->write_blank(3, 66, $border);
        $worksheet->write_blank(3, 67, $border);
        $worksheet->write_blank(3, 68, $border);
        $worksheet->write($start, 61, "Tampilkan", $border);
        $worksheet->write($start, 62, "Jenis", $border);
        $worksheet->write($start, 63, "Jumlah Luk", $border);
        $worksheet->write($start, 64, "Tangguh", $border);
        $worksheet->write($start, 65, "Warongko", $border);
        $worksheet->write($start, 66, "Pamor", $border);
        $worksheet->write($start, 67, "Dapur", $border);
        $worksheet->write($start, 68, "Pilihan Dapur", $border2);

        $k = 1;
        $baris = 5;
        foreach ($record as $key => $value) {
            $worksheet->write($key + $baris, 1, $k, $border);
            // data koleksi
            $worksheet->write($key + $baris, 2, $value[sub_jenis], $border2);
            $worksheet->write($key + $baris, 3, $value[kelompok_koleksi], $border2);
            $worksheet->write($key + $baris, 4, $value[penetapan_bcb], $border2);
            $worksheet->write($key + $baris, 5, $value[no_reg_lama], $border2);
            $worksheet->write($key + $baris, 6, $value[no_reg], $border2);
            $worksheet->write($key + $baris, 7, $value[no_inv_lama], $border2);
            $worksheet->write($key + $baris, 8, $value[no_inv], $border2);
            $worksheet->write($key + $baris, 9, $value[nama_koleksi], $border2);
            $worksheet->write($key + $baris, 10, $value[nama_khusus], $border2);
            $worksheet->write($key + $baris, 11, $value[penyelenggara], $border2);
            $worksheet->write($key + $baris, 12, $value[fungsi_koleksi], $border2);
            $worksheet->write($key + $baris, 13, $value[uraian], $border2);
            $worksheet->write($key + $baris, 14, $value[nama_pencatat], $border2);
            // manfaat
            $worksheet->write($key + $baris, 15, $value[no_katalog_penelitian], $border2);
            $worksheet->write($key + $baris, 16, $value[manfaat_penelitian], $border2);
            $worksheet->write($key + $baris, 17, $value[no_katalog_publikasi], $border2);
            $worksheet->write($key + $baris, 18, $value[manfaat_publikasi], $border2);
            $worksheet->write($key + $baris, 19, $value[manfaat_masyarakat], $border2);
            // perolehan koleksi
            $worksheet->write($key + $baris, 20, $value[tgl_perolehan], $border2);
            $worksheet->write($key + $baris, 21, $value[cara_perolehan], $border2);
            $worksheet->write($key + $baris, 22, $value[alamat_asal_perolehan], $border2);
            $worksheet->write($key + $baris, 23, $value[kodepos], $border2);
            $worksheet->write($key + $baris, 24, $value[nama_penemu], $border2);
            $worksheet->write($key + $baris, 25, $value[alamat_penemu], $border2);
            $worksheet->write($key + $baris, 26, $value[tahun_penemuan], $border2);
            $worksheet->write($key + $baris, 27, $value[nama_pembuat], $border2);
            $worksheet->write($key + $baris, 28, $value[alamat_pembuat], $border2);
            $worksheet->write($key + $baris, 29, $value[tahun_pembuatan], $border2);
            $worksheet->write($key + $baris, 30, $value[nama_pemilik_terakhir], $border2);
            $worksheet->write($key + $baris, 31, $value[alamat_pemilik_terakhir], $border2);
            $worksheet->write($key + $baris, 32, $value[keaslian_koleksi], $border2);
            $worksheet->write($key + $baris, 33, $value[id_negara], $border2);
            $worksheet->write($key + $baris, 34, $value[umur_koleksi], $border2);
            //penyimpanan koleksi
            $worksheet->write($key + $baris, 35, $value[kode_rekam], $border2);
            $worksheet->write($key + $baris, 36, $value[perekaman], $border2);
            $worksheet->write($key + $baris, 37, $value[kode_simpan], $border2);
            $worksheet->write($key + $baris, 38, $value[penyimpanan], $border2);
            //fisik koleksi
            $worksheet->write($key + $baris, 39, $value[bahan_dasar], $border2);
            $worksheet->write($key + $baris, 40, $value[bahan_tambahan], $border2);
            $worksheet->write($key + $baris, 41, $value[keutuhan], $border2);
            $worksheet->write($key + $baris, 42, $value[bentuk], $border2);
            $worksheet->write($key + $baris, 43, $value[panjang], $border2);
            $worksheet->write($key + $baris, 44, $value[lebar], $border2);
            $worksheet->write($key + $baris, 45, $value[tinggi], $border2);
            $worksheet->write($key + $baris, 46, $value[tebal], $border2);
            $worksheet->write($key + $baris, 47, $value[diameter], $border2);
            $worksheet->write($key + $baris, 48, $value[karat], $border2);
            $worksheet->write($key + $baris, 49, $value[kondisi], $border2);
            $worksheet->write($key + $baris, 50, $value[warna_dominan], $border2);
            $worksheet->write($key + $baris, 51, $value[warna_tambahan], $border2);
            $worksheet->write($key + $baris, 52, $value[ragam_hias], $border2);
            $worksheet->write($key + $baris, 53, $value[bentuk_ragam_hias], $border2);
            $worksheet->write($key + $baris, 54, $value[teknik_pembuatan], $border2);
            $worksheet->write($key + $baris, 55, $value[bentuk_tulisan], $border2);
            $worksheet->write($key + $baris, 56, $value[bahasa_tulisan], $border2);
            $worksheet->write($key + $baris, 57, $value[kelompok_etnis], $border2);
            $worksheet->write($key + $baris, 58, $value[glazir], $border2);
            $worksheet->write($key + $baris, 59, $value[glazir_koleksi], $border2);
            $worksheet->write($key + $baris, 60, $value[jaman], $border2);
            //informasi khusus keris
            $worksheet->write($key + $baris, 61, $value[displayed], $border2);
            $worksheet->write($key + $baris, 62, $value[jenis], $border2);
            $worksheet->write($key + $baris, 63, $value[jumlah_luk], $border2);
            $worksheet->write($key + $baris, 64, $value[tangguh], $border2);
            $worksheet->write($key + $baris, 65, $value[warongko], $border2);
            $worksheet->write($key + $baris, 66, $value[pamor], $border2);
            $worksheet->write($key + $baris, 67, $value[dapur], $border2);
            $worksheet->write($key + $baris, 68, $value[pilihan_dapur], $border2);

            $k++;
        }

        $workbook->close();
        // header download
        $file_name = "download.excel";
        header("Content-Type: application/x-msexcel; name=\"" . $file_name . "xls\"");
        header("Content-Disposition: inline; filename=\"" . $file_name . ".xls\"");
        $fh = fopen($tmp_name, "rb");
        fpassthru($fh);
        // remove temporari file
        $this->remove_tmp_file("doc/tmp/excel/");
    }

    public function print_pdf() {
        // disable error warning
        error_reporting(E_ERROR);
        // load
        $this->load->model('koleksimodel');
        // --
        // set_time_limit(30);
        // load
        $this->load->file('system/plugins/tcpdf/tcpdf.php');
        $obj_tcpdf = new TCPDF();
        // search variable
        $id_museum = $this->uri->segment(4, 0);
        $id_kelompok = $this->uri->segment(5, 0);
		if($id_kelompok == 0):
			$id_kelompok  = '%';
		endif;
        // write
        //$obj_tcpdf->setPageFormat('A4', 'P');
        $obj_tcpdf->SetDisplayMode('real');
        $obj_tcpdf->setPrintHeader(false);
        $obj_tcpdf->setPrintFooter(false);
        $obj_tcpdf->SetMargins(5, 5);
        //$obj_tcpdf->SetFont("arial", "BI", 9);
		$obj_tcpdf->SetFont("helvetica", "BI", 9);
        $obj_tcpdf->SetAutoPageBreak(true, 5);
        // add a page
       // $obj_tcpdf->AddPage();
		$obj_tcpdf->AddPage('P','A4');
        $tablealign = '';
        // parse content
        $tablealign .= self::DisplayPdfData($id_museum,  $id_kelompok, $obj_tcpdf);
        //Close and output PDF document
		
        $obj_tcpdf->Output("data-koleksi.pdf", "I");
		
    }

    private function DisplayPdfTitle($id_museum, $id_kelompok) {
        // detail museum
        $nama_museum = '';
        $museum = $this->koleksimodel->get_detail_museum_by_id($id_museum);
        if(!empty($museum)) {
            $nama_museum = $museum['nama_museum'];
        }
        // detail jenis koleksi
        $nama_kelompok = '';
        $kelompok = $this->koleksimodel->get_detail_kelompok_by_id($id_kelompok);
        if(!empty($kelompok)) {
            $nama_kelompok = $kelompok['kelompok_koleksi'];
        }
        $tablealign = '';
        $tablealign .= '<table border="0" cellpadding="2">
			<tr><td align="center"><font size="11"><b>KATALOGISASI KOLEKSI</b></font></td></tr>
			<tr><td align="center"><font size="11"><b>MUSEUM '.strtoupper($nama_museum).'</b></font></td></tr>
			<tr><td align="center"><font size="10"><b>Kelompok Koleksi : '.$nama_kelompok.'</b></font></td></tr>
			</table>
			<hr />';
        return $tablealign;
    }

    private function DisplayPdfData($id_museum,  $id_kelompok, $obj_tcpdf) {
        $tablealign = '';
		$obj_tcpdf->SetFont("helvetica", "", 11);
		$this->load->library('DateTimeManipulation');
        // get data
        $data = $this->koleksimodel->get_laporan(array($id_museum, $id_kelompok));
		if(!empty($data)) {
            // parse data
            $no = 1;
            foreach($data as $result) {
                // parse title
                $tablealign = self::DisplayPdfTitle($id_museum,  $id_kelompok);
                // display tabel content
                $tablealign .= '<table border="0" cellpadding="2">';
                // images
                $images_path = "doc/tmp/default-koleksi.jpg";
                $images = $this->koleksimodel->get_view_cover_by_id_koleksi(array($result['id_koleksi']));
                if(!empty($images)) {
                    $images_real = "doc/museum/".$id_museum."/".$result['id_koleksi']."/".$images['view_name'];
                    if(is_file($images_real)) {
                        $images_path = $images_real;
                    }
                }
                // data
                $tablealign .= '<tr>';
                $tablealign .= '<td width="280" rowspan="9"><img src="'.$images_path.'" alt="" width="270px" height="170px" /></td>';
				//$tablealign .= '<td width="140"></td>';
				//$tablealign .= '</tr>';
				//$tablealign .= '<tr>';
				$tablealign .= '<td width="110">Penyelenggara</td>';
                $tablealign .= '<td width="215">: '.$result['nama_penyelenggara'].'</td>';
                $tablealign .= '</tr>';
                $tablealign .= '<tr>';
				$tablealign .= '<td width="110">Kelompok Koleksi</td>';
                $tablealign .= '<td width="215">: '.$result['kelompok_koleksi'].'</td>';
                $tablealign .= '</tr>';
                $tablealign .= '<tr>';
                $tablealign .= '<td width="110">Nama Umum</td>';
                $tablealign .= '<td width="215">: '.$result['nama_koleksi'].'</td>';
                $tablealign .= '</tr>';
                $tablealign .= '<tr>';
                $tablealign .= '<td width="110">Nama Lokal</td>';
                $tablealign .= '<td width="215">: '.$result['nama_khusus'].'</td>';
                $tablealign .= '</tr>';
				$tablealign .= '<tr>';
                $tablealign .= '<td width="110" style="text-align:left;">Penetapan Cagar Budaya</td>';
                $tablealign .= '<td width="215">: '.$result['penetapan_bcb'].'</td>';
                $tablealign .= '</tr>';
				$tablealign .= '<tr>';
                $tablealign .= '<td width="110">No. Cagar Budaya</td>';
                $tablealign .= '<td width="215">: '.$result['no_cagar_budaya'].'</td>';
                $tablealign .= '</tr>';
                $tablealign .= '<tr>';
                $tablealign .= '<td width="110">No Inv Lama</td>';
                $tablealign .= '<td width="215">: '.$result['no_inv_lama'].'</td>';
                $tablealign .= '</tr>';
                $tablealign .= '<tr>';
                $tablealign .= '<td width="110">No Inv Baru</td>';
                $tablealign .= '<td width="215">: '.$result['no_inv'].'</td>';
                $tablealign .= '</tr>';
                $tablealign .= '<tr>';
                $tablealign .= '<td width="110">No Reg Lama</td>';
                $tablealign .= '<td width="215">: '.$result['no_reg_lama'].'</td>';
                $tablealign .= '</tr>';
                $tablealign .= '<tr>';
                $tablealign .= '<td width="140">No Reg Baru</td>';
                $tablealign .= '<td width="215" colspan="2">: '.$result['no_reg'].'</td>';
                $tablealign .= '</tr>';
                $tablealign .= '<tr>';
                $tablealign .= '<td width="140">Tgl Perolehan</td>';
                $tablealign .= '<td width="215" colspan="2">: '.$this->datetimemanipulation->format_short_date(substr($result['tgl_perolehan'],0,10)).'</td>';
                $tablealign .= '</tr>';
				$tablealign .= '<tr>';
                $tablealign .= '<td width="140">Cara Perolehan</td>';
                $tablealign .= '<td width="215" colspan="2">: '.$result['cara_perolehan'].'</td>';
                $tablealign .= '</tr>';
				$tablealign .= '<tr>';
                $tablealign .= '<td width="140">Asal Koleksi</td>';
                $tablealign .= '<td width="215" colspan="2">: '.$result['alamat_asal_perolehan'].'</td>';
                $tablealign .= '</tr>';
                $tablealign .= '<tr>';
                $tablealign .= '<td width="140">Provinsi</td>';
                $tablealign .= '<td width="215" colspan="2">: '.$result['nama_propinsi'].'</td>';
                $tablealign .= '</tr>';
				$tablealign .= '<tr>';
                $tablealign .= '<td width="140">Fungsi Koleksi</td>';
                $tablealign .= '<td width="215" colspan="2">: '.$result['fungsi_propinsi'].'</td>';
                $tablealign .= '</tr>';
				
				$tablealign .= '<tr>';
                $tablealign .= '<td width="565" colspan="3"><b>FISIK KOLEKSI</b></td>';
                $tablealign .= '</tr>';
				$tablealign .= '<tr>';
                $tablealign .= '<td width="140">Keutuhan Koleksi</td>';
                $tablealign .= '<td width="215" colspan="2">: '.$result['keutuhan'].'</td>';
                $tablealign .= '</tr>';
				$tablealign .= '<tr>';
                $tablealign .= '<td width="140">Kondisi Koleksi</td>';
                $tablealign .= '<td width="215" colspan="2">: '.$result['kondisi'].'</td>';
                $tablealign .= '</tr>';
				$tablealign .= '<tr>';
                $tablealign .= '<td width="140">Warna Dominan</td>';
                $tablealign .= '<td width="215"  colspan="2">: '.$result['warna_dominan'].'</td>';
                $tablealign .= '</tr>';
				$tablealign .= '<tr>';
                $tablealign .= '<td width="140">Bahan Dasar Dominan</td>';
                $tablealign .= '<td width="215"  colspan="2">: '.$result['bahan_dasar'].'</td>';
                $tablealign .= '</tr>';
				$tablealign .= '<tr>';
                $tablealign .= '<td width="565" colspan="3">';
				$tablealign .= '<table><tr><td width="50">Panjang :</td><td width="90"> '.$result['panjang'].' cm</td>
								<td  width="50">Tinggi :</td><td  width="80">'.$result['tinggi'].' cm</td>
								<td  width="50">Diameter :</td><td  width="80">'.$result['diameter'].' cm</td>
								<td  width="50">Karat :</td><td  width="80">'.$result['karat'].' gr</td></tr>
								<tr><td width="50">Lebar :</td><td width="90"> '.$result['panjang'].' cm</td>
								<td  width="50">Tebal :</td><td  width="80">'.$result['tinggi'].' cm</td>
								<td  width="50">Berat :</td><td  width="80">'.$result['diameter'].' cm</td>
								<td  width="50"> </td><td  width="80"> </td></tr>
								</table>';
				$tablealign .= '</td>';
                $tablealign .= '</tr>';
				$tablealign .= '<tr>';
                $tablealign .= '<td width="140">Ragam Hias</td>';
                $tablealign .= '<td width="215"  colspan="2">: '.$result['ragam_hias'].'</td>';
                $tablealign .= '</tr>';
				$tablealign .= '<tr>';
                $tablealign .= '<td width="140">Bentuk Ragam Hias</td>';
                $tablealign .= '<td width="215"  colspan="2">: '.$result['bentuk_ragam_hias'].'</td>';
                $tablealign .= '</tr>';
				$tablealign .= '<tr>';
                $tablealign .= '<td width="140">Aksara</td>';
                $tablealign .= '<td width="215"  colspan="2">: '.$result['bentuk_tulisan'].'</td>';
                $tablealign .= '</tr>';
				$tablealign .= '<tr>';
                $tablealign .= '<td width="140">Umur Koleksi</td>';
                $tablealign .= '<td width="215"  colspan="2">: '.$result['umur_koleksi'].'</td>';
                $tablealign .= '</tr>';
				$tablealign .= '<tr>';
                $tablealign .= '<td width="140">Penyimpanan</td>';
                $tablealign .= '<td width="215"  colspan="2">: '.$result['nama_penyimpanan'].'</td>';
                $tablealign .= '</tr>';
				
				
				$tablealign .= '<tr>';
                $tablealign .= '<td width="565" colspan="3"><b>URAIAN SINGKAT KOLEKSI</b></td>';
                $tablealign .= '</tr>';
				$tablealign .= '<tr>';
                $tablealign .= '<td width="140">Tanggal Pencatatan</td>';
                $tablealign .= '<td width="215"  colspan="2">: '.$this->datetimemanipulation->format_short_date(substr($result['tanggal_pencatatan'],0,10)).'</td>';
                $tablealign .= '</tr>';
				$tablealign .= '<tr>';
                $tablealign .= '<td width="140">Nama Pencatat</td>';
                $tablealign .= '<td width="215"  colspan="2">: '.$result['nama_pencatat'].'</td>';
                $tablealign .= '</tr>';
				$tablealign .= '<tr>';
                $tablealign .= '<td width="565" colspan="3"><b>URAIAN</b> </td>';
                $tablealign .= '</tr>';
				if(!empty($result['uraian'])) {
                    $tablealign .= '<tr>';
                    $tablealign .= '<td width="565" colspan="3">'.$result['uraian'].'</td>';
                    $tablealign .= '</tr>';
                }
                // end of table
                $tablealign .= '</table>';
				// output the HTML content
                $obj_tcpdf->writeHTML($tablealign, true, false, true, false, 'J');
                $obj_tcpdf->AddPage();
                // --
                $no++;
            }
        }
        return $tablealign;
    }
}