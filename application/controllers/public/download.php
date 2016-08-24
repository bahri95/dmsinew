<?php
// important * untuk application base dari halaman ini

class Download extends MY_Controller {

    function  __construct() {
        // load application base
       parent::__construct();
	   $this->Webappbase();
	  
    }

    // pages
    public function index() {
		// template content
       $this->smarty->assign('template_content',"web/download/list.html");
        // load
		$this->load->library('pagination');
		$this->load->model('downloadmodel');
		$this->load->helper('text');
		
		$config['base_url'] = site_url("public/download/index");
        $config['total_rows'] = $this->downloadmodel->get_total_download();
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
        $data = $this->downloadmodel->get_list_download_limit($params);
		if(!empty($data)):
			foreach($data as $k=>$row):
				$pathdok = 'doc/download/'.$row['id_download'].'/'.$row['file_download'];
				if(is_file($pathdok)):
					$data[$k]['ukuran'] =  $this->display_ukuran_file(filesize($pathdok));
					$url_download = site_url('public/download/getfile/'.$row['id_download'].'/'.url_title($row['judul']));
					$data[$k]['file_download'] = $url_download;
				else:
					$data[$k]['ukuran'] = '';
					$data[$k]['file_download'] = '-';
				endif;
			endforeach;
		endif;
		
		$this->smarty->assign("download_list", $data);
		if($this->act_lang == 'en'){
		$this->smarty->assign("page_modul", 'Download Document');
		}else{
		$this->smarty->assign("page_modul", 'Download Dokumen');
		}
		$this->smarty->assign("page_modul_url", site_url('public/download'));
	
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
	
	public function getfile(){
			$this->load->model('downloadmodel');
			$this->load->helper('download');
			// data
			$id_download = $this->uri->segment(4,0);
			$data = $this->downloadmodel->get_download_by_id($id_download);
			$dir = 'doc/download/' . $id_download. '/'.$data['file_download'];
			if(is_file($dir)):
				$filedata = file_get_contents($dir);
				force_download($data['file_download'], $filedata);
			endif;
			redirect('public/download');
	}
   
}