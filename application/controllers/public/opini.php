<?php
// important * untuk application base dari halaman ini

class Opini extends MY_Controller {

    function  __construct() {
        // load application base
       parent::__construct();
	   $this->Webappbase();
	   $this->load->library('datetimemanipulation');
    }

    public function index() {
    	 $this->smarty->assign('template_content',"web/opini/list.html");
        // load
		$this->load->library('pagination');
		$this->load->model('opinimodel');
		$this->load->helper('text');
		
		$config['base_url'] = site_url("public/opini/index");
        $config['total_rows'] = $this->opinimodel->get_total_opini();
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
         $result = $this->opinimodel->get_list_opini_limit($params);
		$this->smarty->assign("total", $totaldata);
       if(!empty($result)):
			foreach($result as $key=>$data):
				if($this->act_lang  == 'en'):
					$result[$key]['judul'] = $data['judul_english'];
					$result[$key]['content'] = $data['content_english'];
					
				endif;
				
				
				$path = 'doc/opini/'.$data['id_opini']."/";
				if(is_file($path.$data['image'])){
					$result[$key]['image'] = BASEURL.$path.$data['image'];
					
				}else{
					$result[$key]['image']= BASEURL.'doc/tmp.default.jpg';
				}
				if($this->act_lang  == 'en'){
					$result[$key]['tanggal'] = $this->datetimemanipulation->GetFullDateWithDayEn($data['tanggal']);
					$result[$key]['url_detail'] = site_url('public/opini/detail/'.$data['id_opini'].'/'.url_title($data['judul_english']));
				$result[$key]['content'] = strip_tags($this->getIntroText($data['content_english'],300));
				}else{
					$result[$key]['tanggal'] = $this->datetimemanipulation->GetFullDateWithDayEn($data['tanggal']);
				$result[$key]['url_detail'] = site_url('public/opini/detail/'.$data['id_opini'].'/'.url_title($data['judul']));
				$result[$key]['content'] = strip_tags($this->getIntroText($data['content'],300));
			    }
			endforeach;
		endif;
		
		$this->smarty->assign("opini_list", $result);
		if($this->act_lang == 'en'){
		$this->smarty->assign("page_modul", 'Opinion');
		}else{
		$this->smarty->assign("page_modul", 'Opini');
		}
		$this->smarty->assign("page_modul_url", site_url('public/opini'));
	
        // display document
        $this->parser->parse('web/base-layout/document-list.html');
    }
  
	public function detail(){
		$this->smarty->assign('template_content',"web/opini/detail.html");
		$this->load->model('opinimodel');
		$id_opini  = $this->uri->segment(4,0);
		$data = $this->opinimodel->get_opini_by_id($id_opini);
		if(!empty($data)):
				if($this->act_lang  == 'en'):
					$data['judul'] = $data['judul_english'];
					$data['content'] = $data['content_english'];
					$data['keterangan_gambar'] = $data['caption_picture'];
				endif;
				$data['tanggal'] = $this->datetimemanipulation->GetFullDateWithDay($data['tanggal']);
				$path = 'doc/opini/'.$data['id_opini']."/";
				if(is_file($path.$data['image'])){
					$data['image'] = BASEURL.$path.$data['image'];
					
				}else{
					$data['image']= '';
				}
			
		endif;

		

		$this->smarty->assign("data", $data);
		//informasi terkait
		$result = $this->opinimodel->get_list_opini_terkait();
	
       if(!empty($result)):
			foreach($result as $key=>$data):
				if($this->act_lang  == 'en'):
					$result[$key]['judul'] = $data['judul_english'];
					$result[$key]['content'] = $data['content_english'];
					
				endif;
				$result[$key]['tanggal'] = $this->datetimemanipulation->GetFullDateWithDay($data['tanggal']);
				
				$path = 'doc/opini/'.$data['id_opini']."/";
				if(is_file($path.$data['image'])){
					$result[$key]['image'] = BASEURL.$path.$data['image'];
					
				}else{
					$result[$key]['image']= BASEURL.'doc/tmp.default.jpg';
				}

				if($this->act_lang  == 'en'){
					$result[$key]['url_detail'] = site_url('public/opini/detail/'.$data['id_opini'].'/'.url_title($data['judul_english']));
				$result[$key]['content'] = strip_tags($this->getIntroText($data['content_english'],300));
				}else{
				$result[$key]['url_detail'] = site_url('public/opini/detail/'.$data['id_opini'].'/'.url_title($data['judul']));
				$result[$key]['content'] = strip_tags($this->getIntroText($data['content'],300));
			    }
			endforeach;
		endif;

		$this->smarty->assign("opini_list", $result);
		$this->smarty->assign('download_lampiran', site_url('public/opini/download'));
		if($this->act_lang == 'en'){
		$this->smarty->assign("page_modul", 'Opinion');
		$this->smarty->assign("page_name", 'Details of the opinion');
		}else{
		$this->smarty->assign("page_modul", 'Opini');
		$this->smarty->assign("page_name", 'Detail Opini');
		}
		$this->smarty->assign("page_modul_url", site_url('public/opini'));
		
		// display document
        $this->parser->parse('web/base-layout/document.html');
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
	
	
	public function download(){
			$this->load->model('opinimodel');
			$this->load->helper('download');
			// data
			$id_opini= $this->uri->segment(4,0);
			$data = $this->opinimodel->get_opini_by_id($id_opini);
			$dir = 'doc/opini/file/' . $id_opini. '/'.$data['file_lampiran'];
			if(is_file($dir)):
				$filedata = file_get_contents($dir);
				force_download($data['file_lampiran'], $filedata);
				exit;
			endif;
			redirect('public/opini/detail/'.$id_opini);
	}
   
}