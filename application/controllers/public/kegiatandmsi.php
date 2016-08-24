<?php
// important * untuk application base dari halaman ini

class Kegiatandmsi extends MY_Controller {

    function  __construct() {
        // load application base
       parent::__construct();
	   $this->Webappbase();
	   $this->load->library('datetimemanipulation');
    }

    // pages
    public function index() {
		// template content
       $this->smarty->assign('template_content',"web/agenda/list.html");
        // load
		$this->load->library('pagination');
		$this->load->model('agendamodel');
		$this->load->helper('text');
		$arr = array('%','%','%');
		$config['base_url'] = site_url("public/kegiatan/index");
        $config['total_rows'] = $this->agendamodel->get_total_agenda($arr);
        $config['per_page'] = 8;
        $config['uri_segment'] = 4;
        $config['num_links'] = 5;
        $config['first_link'] = 'First';
        $config['last_link'] = 'Last';
        $config['next_link'] = 'Next';
        $config['prev_link'] = 'Prev';
		$config['first_tag_open'] = '<li><a>';
		$config['first_tag_close'] = '</a></li>';
		$config['prev_tag_open'] = '<li><a class="prev" href="#"><i class="fa fa-angle-left"></i>';
		$config['prev_tag_close'] = '</a></li>';
		$config['next_tag_open'] = '<li><a class="next" href="#"><i class="fa fa-angle-right"></i>';
		$config['next_tag_close'] = '</a></li>';
		$config['num_tag_open'] = '<li><a href="#">';
		$config['num_tag_close'] = '</a></li>';
        $config['cur_tag_open'] = '<li class="is-active-pagination"><a href="">';
        $config['cur_tag_close'] = '</a></li>';
        $this->pagination->initialize($config);
        $pagging = $this->pagination->create_links();
        $this->smarty->assign("pagging", $pagging);
        //list data dari DB
        $totaldata = $config['total_rows'];
        $start = $this->uri->segment(4, 0) + 1;
        $end = $this->uri->segment(4, 0) + 8;
        $total = $config['total_rows'];
        if ($end > $config['total_rows']) {
            $end = $config['total_rows'];
        }
        $this->smarty->assign("no", $start);
        $this->smarty->assign("start", $start);
        $this->smarty->assign("end", $end);
        $par = array(intval($this->uri->segment(4, 0)), $config['per_page']);
		$params = array_merge($arr , $par);
		// get data
        $result = $this->agendamodel->get_list_agenda_dmsi($params);
		$this->smarty->assign("total", $totaldata);
        $this->smarty->assign('baseurl', BASEURL.'doc/agenda/');
		if(!empty($result)):
			foreach($result as $key=>$data):
				if($this->act_lang  == 'en'):
					$result[$key]['judul_agenda'] = $data['judul_english'];
					$result[$key]['keterangan'] = $data['keterangan_english'];
					
				endif;
				
				$pathdok = 'dok/'.$data['id_agenda'].'/'.$data['file_agenda'];
				if(is_file($pathdok)){
					$result[$key]['file_agenda'] = site_url('public/agenda/download/'.$data['id_agenda'].'/'.url_title($data['file_agenda']));
				}else{
					$result[$key]['file_agenda']= '';
				}
				$path = 'doc/agenda/'.$data['id_agenda']."/";
				if(is_file($path.$data['image_agenda'])){
					$result[$key]['image_agenda'] = BASEURL.$path.$data['image_agenda'];
					
				}else{
					$result[$key]['image_agenda']= BASEURL.'doc/tmp.default.jpg';
				}
				if($this->act_lang  == 'en'){
					$result[$key]['tanggal_mulai'] = $this->datetimemanipulation->GetFullDateWithDayEn($data['tanggal_mulai']);
				$result[$key]['tanggal_selesai'] = $this->datetimemanipulation->GetFullDateWithDayEn($data['tanggal_selesai']);
				$result[$key]['url_detail'] = site_url('public/kegiatandmsi/detail/'.$data['id_agenda'].'/'.url_title($data['judul_english']));
				$result[$key]['keterangan'] = strip_tags($this->getIntroText($data['keterangan_english'],100));
					
				}else{
				$result[$key]['tanggal_mulai'] = $this->datetimemanipulation->GetFullDateWithDay($data['tanggal_mulai']);
				$result[$key]['tanggal_selesai'] = $this->datetimemanipulation->GetFullDateWithDay($data['tanggal_selesai']);
				$result[$key]['url_detail'] = site_url('public/kegiatandmsi/detail/'.$data['id_agenda'].'/'.url_title($data['judul_agenda']));
				$result[$key]['keterangan'] = strip_tags($this->getIntroText($data['keterangan'],100));
				}
			endforeach;
		endif;
		
		$this->smarty->assign("agenda_list", $result);
		if($this->act_lang  == 'en'){
		$this->smarty->assign("page_modul", 'Event');
		}else{
		$this->smarty->assign("page_modul", 'Kegiatan');
		}
		$this->smarty->assign("page_modul_url", site_url('public/kegiatan'));
	
        // display document
        $this->parser->parse('web/base-layout/document-list.html');
    }
	
	public function detail(){
		$this->smarty->assign('template_content',"web/agenda/detail.html");
		$this->load->model('agendamodel');
		$id_agenda  = $this->uri->segment(4,0);
		$data = $this->agendamodel->get_agenda_by_id($id_agenda);
		if(!empty($data)):
				if($this->act_lang  == 'en'):
					$data['judul_agenda'] = $data['judul_english'];
					$data['keterangan'] = $data['keterangan_english'];
				endif;
				$data['tanggal_mulai'] = $this->datetimemanipulation->GetFullDateWithDay($data['tanggal_mulai']);
				$data['tanggal_selesai'] = $this->datetimemanipulation->GetFullDateWithDay($data['tanggal_selesai']);
				$pathdok = 'dok/'.$data['id_agenda'].'/'.$data['file_agenda'];
				if(is_file($pathdok)){
					$data['file_agenda'] = site_url('public/kegiatan/download/'.$data['id_agenda'].'/'.url_title($data['file_agenda']));
				}else{
					$data['file_agenda']= '';
				}
				$path = 'doc/agenda/'.$data['id_agenda']."/";
				if(is_file($path.$data['image_agenda'])){
					$data['image_agenda'] = BASEURL.$path.$data['image_agenda'];
					
				}else{
					$data['image']= '';
				}
			
		endif;
		$this->smarty->assign("data", $data);
		
		if($this->act_lang  == 'en'){
		$this->smarty->assign("page_modul", 'Event DMSI');
		$this->smarty->assign("page_name", 'Event Detail DMSI');
		}else{
		$this->smarty->assign("page_modul", 'Kegiatan DMSI');
		$this->smarty->assign("page_name", 'Detail Kegiatan DMSI');
		}
		$this->smarty->assign("page_modul_url", site_url('public/kegiatandmsi'));
		
		// display document
        $this->parser->parse('web/base-layout/document.html');
	}
	
	public function download(){
			$this->load->model('agendamodel');
			$this->load->helper('download');
			// data
			$id_agenda= $this->uri->segment(4,0);
			$data = $this->agendamodel->get_agenda_by_id($id_agenda);
			$dir = 'doc/agenda/' . $id_agenda. '/'.$data['file_agenda'];
			if(is_file($dir)):
				$filedata = file_get_contents($dir);
				force_download($data['file_agenda'], $filedata);
				exit;
			endif;
			redirect('public/kegiatan/detail/'.$id_pengumuman);
	}
   
}