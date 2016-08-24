<?php
// important * untuk application base dari halaman ini

class Beritaanggota extends MY_Controller {

    function  __construct() {
        // load application base
       parent::__construct();
	   $this->Webappbase();
	   $this->load->library('datetimemanipulation');
    }

    // pages
    public function index() {
		// template content
       $this->smarty->assign('template_content',"web/beritaanggota/list.html");
        // load
		$this->load->library('pagination');
		$this->load->model('beritamodelanggota');
		$this->load->helper('text');
		
		$config['base_url'] = site_url("public/beritaanggota/index");
        $config['total_rows'] = $this->beritamodelanggota->get_total_berita();
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
        $params = array(intval($this->uri->segment(4, 0)), $config['per_page']);
		// get data
        $result = $this->beritamodelanggota->get_list_berita_limit($params);
		$this->smarty->assign("total", $totaldata);
       if(!empty($result)):
			foreach($result as $key=>$data):
				if($this->act_lang  == 'en'):
					$result[$key]['judul'] = $data['judul_english'];
					$result[$key]['content'] = $data['content_english'];
					
				endif;
				
				$pathdok = 'dok/'.$data['id_berita'].'/'.$data['file_berita'];
				if(is_file($pathdok)){
					$result[$key]['file_berita'] = site_url('public/berita/download/'.$data['id_berita'].'/'.url_title($data['file_berita']));
				}else{
					$result[$key]['file_berita']= '';
				}
				$path = 'doc/berita/'.$data['id_berita']."/";
				if(is_file($path.$data['image'])){
					$result[$key]['image'] = BASEURL.$path.$data['image'];
					
				}else{
					$result[$key]['image']= BASEURL.'doc/tmp.default.jpg';
				}
				if($this->act_lang  == 'en'){
					$result[$key]['tanggal'] = $this->datetimemanipulation->GetFullDateWithDayEn($data['tanggal']);

					$result[$key]['url_detail'] = site_url('public/beritaanggota/detail/'.$data['id_berita'].'/'.url_title($data['judul_english']));
					$result[$key]['content'] = strip_tags($this->getIntroText($data['content_english'],100));
				}else{
					$result[$key]['tanggal'] = $this->datetimemanipulation->GetFullDateWithDay($data['tanggal']);
				$result[$key]['url_detail'] = site_url('public/beritaanggota/detail/'.$data['id_berita'].'/'.url_title($data['judul']));
				$result[$key]['content'] = strip_tags($this->getIntroText($data['content'],100));
				}
			endforeach;
		endif;
		
		$this->smarty->assign("berita_list", $result);
		if($this->act_lang == 'en'){
		$this->smarty->assign("page_modul", 'News');
		}else{
		$this->smarty->assign("page_modul", 'Berita');
		}
		$this->smarty->assign("page_modul_url", site_url('public/berita'));
	
        // display document
        $this->parser->parse('web/base-layout/document-list.html');
    }
	
	public function detail(){
		$this->smarty->assign('template_content',"web/beritaanggota/detail.html");
		$this->load->model('beritamodelanggota');
		$id_berita  = $this->uri->segment(4,0);
		$data = $this->beritamodelanggota->get_berita_by_id($id_berita);
		if(!empty($data)):
				if($this->act_lang  == 'en'):
					$data['judul'] = $data['judul_english'];
					$data['content'] = $data['content_english'];
					$data['keterangan_gambar'] = $data['caption_picture'];
				endif;
				$data['tanggal'] = $this->datetimemanipulation->GetFullDateWithDay($data['tanggal']);
				$pathdok = 'dok/'.$data['id_berita'].'/'.$data['file_berita'];
				if(is_file($pathdok)){
					$data['file_berita'] = site_url('public/berita/download/'.$data['id_berita'].'/'.url_title($data['file_berita']));
				}else{
					$data['file_berita']= '';
				}
				$path = 'doc/berita/'.$data['id_berita']."/";
				if(is_file($path.$data['image'])){
					$data['image'] = BASEURL.$path.$data['image'];
					
				}else{
					$data['image']= '';
				}
			
		endif;
		$this->smarty->assign("data", $data);
		
		// get data
        $result = $this->beritamodelanggota->get_list_berita_terkait();
	
       if(!empty($result)):
			foreach($result as $key=>$data):
				$result[$key]['tanggal'] = $this->datetimemanipulation->GetFullDateWithDay($data['tanggal']);
				$pathdok = 'dok/'.$data['id_berita'].'/'.$data['file_berita'];
				if(is_file($pathdok)){
					$result[$key]['file_berita'] = site_url('public/berita/download/'.$data['id_berita'].'/'.url_title($data['file_berita']));
				}else{
					$result[$key]['file_berita']= '';
				}
				$path = 'doc/berita/'.$data['id_berita']."/";
				if(is_file($path.$data['image'])){
					$result[$key]['image'] = BASEURL.$path.$data['image'];
					
				}else{
					$result[$key]['image']= BASEURL.'doc/tmp.default.jpg';
				}
				$result[$key]['url_detail'] = site_url('public/beritaanggota/detail/'.$data['id_berita'].'/'.url_title($data['judul']));
				$result[$key]['content'] = strip_tags($this->getIntroText($data['content'],100));
			endforeach;
		endif;
		
		$this->smarty->assign("berita_list", $result);
		if($this->act_lang == 'en'){
		$this->smarty->assign("page_modul", 'News');
		$this->smarty->assign("page_name", 'News Detail');
		}else{
		$this->smarty->assign("page_modul", 'Berita');
		$this->smarty->assign("page_name", 'Detail Berita');
		}
		$this->smarty->assign("page_modul_url", site_url('public/berita'));

		
		// display document
        $this->parser->parse('web/base-layout/document.html');
	}
	
	public function download(){
			$this->load->model('beritamodel');
			$this->load->helper('download');
			// data
			$id_berita= $this->uri->segment(4,0);
			$data = $this->beritamodel->get_berita_by_id($id_berita);
			$dir = 'doc/berita/' . $id_berita. '/'.$data['file_berita'];
			if(is_file($dir)):
				$filedata = file_get_contents($dir);
				force_download($data['file_berita'], $filedata);
				exit;
			endif;
			redirect('public/berita/detail/'.$id_pengumuman);
	}
   
}