<?php
// important * untuk application base dari halaman ini

class Sesebi extends MY_Controller {

    function  __construct() {
        // load application base
       parent::__construct();
	   $this->Webappbase();
	   $this->load->library('datetimemanipulation');
    }

    public function index() {
    	 $this->smarty->assign('template_content',"web/sesebi/list.html");
        // load
		$this->load->library('pagination');
		$this->load->model('sesebimodel');
		$this->load->helper('text');
		
		$config['base_url'] = site_url("public/sesebi/index");
        $config['total_rows'] = $this->sesebimodel->get_total_sesebi();
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
         $result = $this->sesebimodel->get_list_sesebi_limit($params);
		$this->smarty->assign("total", $totaldata);
       if(!empty($result)):
			foreach($result as $key=>$data):
				if($this->act_lang  == 'en'):
					$result[$key]['judul'] = $data['judul_english'];
					$result[$key]['content'] = $data['content_english'];
					
				endif;
				
				
				$path = 'doc/sesebi/'.$data['id_sesebi']."/";
				if(is_file($path.$data['image'])){
					$result[$key]['image'] = BASEURL.$path.$data['image'];
					
				}else{
					$result[$key]['image']= BASEURL.'doc/tmp.default.jpg';
				}
				if($this->act_lang  == 'en'){
					$result[$key]['tanggal'] = $this->datetimemanipulation->GetFullDateWithDayEn($data['tanggal']);
				$result[$key]['url_detail'] = site_url('public/sesebi/detail/'.$data['id_sesebi'].'/'.url_title($data['judul_english']));
				$result[$key]['content'] = strip_tags($this->getIntroText($data['content_english'],300));
			}else{
				$result[$key]['tanggal'] = $this->datetimemanipulation->GetFullDateWithDay($data['tanggal']);
				$result[$key]['url_detail'] = site_url('public/sesebi/detail/'.$data['id_sesebi'].'/'.url_title($data['judul']));
				$result[$key]['content'] = strip_tags($this->getIntroText($data['content'],300));
			}
			endforeach;
		endif;
		
		$this->smarty->assign("sesebi_list", $result);
		if($this->act_lang == 'en'){
		$this->smarty->assign("page_modul", 'Various');
		}{
		$this->smarty->assign("page_modul", 'Serba-serbi');	
		}
			$this->smarty->assign("page_modul_url", site_url('public/sesebi'));
	
        // display document
        $this->parser->parse('web/base-layout/document-list.html');
    }
  
	public function detail(){
		$this->smarty->assign('template_content',"web/sesebi/detail.html");
		$this->load->model('sesebimodel');
		$id_sesebi  = $this->uri->segment(4,0);
		$data = $this->sesebimodel->get_sesebi_by_id($id_sesebi);
		if(!empty($data)):
				if($this->act_lang  == 'en'):
					$data['judul'] = $data['judul_english'];
					$data['content'] = $data['content_english'];
					$data['keterangan_gambar'] = $data['caption_picture'];
				endif;
				$data['tanggal'] = $this->datetimemanipulation->GetFullDateWithDay($data['tanggal']);
				$path = 'doc/sesebi/'.$data['id_sesebi']."/";
				if(is_file($path.$data['image'])){
					$data['image'] = BASEURL.$path.$data['image'];
					
				}else{
					$data['image']= '';
				}
			
		endif;

		

		$this->smarty->assign("data", $data);

		// get data serba serbi
         $result = $this->sesebimodel->get_list_sesebi_terkait();
       if(!empty($result)):
			foreach($result as $key=>$data):
				if($this->act_lang  == 'en'):
					$result[$key]['judul'] = $data['judul_english'];
					$result[$key]['content'] = $data['content_english'];
					
				endif;
				$result[$key]['tanggal'] = $this->datetimemanipulation->GetFullDateWithDay($data['tanggal']);
				
				$path = 'doc/sesebi/'.$data['id_sesebi']."/";
				if(is_file($path.$data['image'])){
					$result[$key]['image'] = BASEURL.$path.$data['image'];
					
				}else{
					$result[$key]['image']= BASEURL.'doc/tmp.default.jpg';
				}
				if($this->act_lang  == 'en'){
				$result[$key]['url_detail'] = site_url('public/sesebi/detail/'.$data['id_sesebi'].'/'.url_title($data['judul_english']));
				$result[$key]['content'] = strip_tags($this->getIntroText($data['content_english'],300));
			}else{
				$result[$key]['url_detail'] = site_url('public/sesebi/detail/'.$data['id_sesebi'].'/'.url_title($data['judul']));
				$result[$key]['content'] = strip_tags($this->getIntroText($data['content'],300));
			}
			endforeach;
		endif;
		
		$this->smarty->assign("sesebi_list", $result);
		
		$this->smarty->assign('download_lampiran', site_url('public/opini/download'));
		if($this->act_lang == 'en'){
		$this->smarty->assign("page_modul", 'Various');
		$this->smarty->assign("page_name", 'Detail Sundries');
		}else{
		$this->smarty->assign("page_modul", 'Serba-serbi');	
		$this->smarty->assign("page_name", 'Detail Serba-serbi');
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