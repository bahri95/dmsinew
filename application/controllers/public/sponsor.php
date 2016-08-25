<?php
// important * untuk application base dari halaman ini

class Sponsor extends MY_Controller {

    function  __construct() {
        // load application base
       parent::__construct();
	   $this->Webappbase();
	   $this->load->library('datetimemanipulation');
    }

    // pages
    public function index() {
		// template content
        $this->smarty->assign('template_content',"web/sponsor/list.html");
        // load
		$this->load->library('pagination');
		$this->load->model('sponsormodel');
		$this->load->helper('text');
		// //$this->layout->load_javascript("js/admin/plugins/lightbox/ekko-lightbox.js");
		// //$this->layout->load_javascript("js/admin/plugins/lightbox/ekko-lightbox.css");
		
		// $config['base_url'] = site_url("public/foto/index");
  //        $config['total_rows'] = $this->fotomodel->get_total_foto();
  //       $config['per_page'] = 9;
  //       $config['uri_segment'] = 4;
  //       $config['num_links'] = 5;
  //       $config['first_link'] = 'First';
  //       $config['last_link'] = 'Last';
  //       $config['next_link'] = 'Next';
  //       $config['prev_link'] = 'Prev';
		// $config['first_tag_open'] = '<li><a>';
		// $config['first_tag_close'] = '</a></li>';
		// $config['prev_tag_open'] = '<li><a class="prev" href="#"><i class="fa fa-angle-left"></i>';
		// $config['prev_tag_close'] = '</a></li>';
		// $config['next_tag_open'] = '<li><a class="next" href="#"><i class="fa fa-angle-right"></i>';
		// $config['next_tag_close'] = '</a></li>';
		// $config['num_tag_open'] = '<li><a href="#">';
		// $config['num_tag_close'] = '</a></li>';
  //       $config['cur_tag_open'] = '<li class="is-active-pagination"><a href="">';
  //       $config['cur_tag_close'] = '</a></li>';
  //       $this->pagination->initialize($config);
  //       $pagging = $this->pagination->create_links();
  //       $this->smarty->assign("pagging", $pagging);
  //       //list data dari DB
  //       $totaldata = $config['total_rows'];
  //       $start = $this->uri->segment(4, 0) + 1;
  //       $end = $this->uri->segment(4, 0) + 9;
  //       $total = $config['total_rows'];
  //       if ($end > $config['total_rows']) {
  //           $end = $config['total_rows'];
  //       }
  //       $this->smarty->assign("no", $start);
  //       $this->smarty->assign("start", $start);
  //       $this->smarty->assign("end", $end);
  //       $params = array(intval($this->uri->segment(4, 0)), $config['per_page']);
		// get data
        $result = $this->sponsormodel->get_list_sponsor();
		// $this->smarty->assign("total", $totaldata);
       	if(!empty($result)):
			foreach($result as $key=>$data):
				// set path of detail foto
				$path = 'doc/sponsor/'.$data['id_sponsor']."/";
				
				/*
				check data of detail foto
				*/
				if(is_file($path.$data['image_sponsor'])){

					$result[$key]['image_sponsor'] = BASEURL.$path.$data['image_sponsor'];
					
				}else{
					$result[$key]['image_sponsor']= BASEURL.'doc/tmp.default.jpg';
				}
				
			endforeach;
		endif;

		
		$this->smarty->assign("sponsor_list", $result);
		$this->smarty->assign("url_detail", site_url('public/foto/detail/'));
		$this->smarty->assign("page_modul", 'Sponsor ');
		$this->smarty->assign("page_modul_url", site_url('public/sponsor'));
        // display document
        $this->parser->parse('web/base-layout/document-list.html');
    }
	
	public function detail(){
		// template content
        $this->smarty->assign('template_content',"web/foto/detail.html");
        // load
		$this->load->library('pagination');
		$this->load->model('fotomodel');
		$this->load->helper('text');
		
		$config['base_url'] = site_url("public/foto/index");
         $config['total_rows'] = $this->fotomodel->get_total_foto();
        $config['per_page'] = 9;
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
        $end = $this->uri->segment(4, 0) + 9;
        $total = $config['total_rows'];
        if ($end > $config['total_rows']) {
            $end = $config['total_rows'];
        }
        $this->smarty->assign("no", $start);
        $this->smarty->assign("start", $start);
        $this->smarty->assign("end", $end);
      
        $params = $this->uri->segment(4,0);
		// get data
        $result = $this->fotomodel->get_list_foto_limit($params);
		$this->smarty->assign("total", $totaldata);
       	if(!empty($result)):
			foreach($result as $key=>$data):
				// set path of detail foto
				$path = 'doc/album/'.$data['id_album']."/".$data['id_foto']."/";
			
				if(is_file($path.$data['foto'])){

					$result[$key]['foto'] = BASEURL.$path.$data['foto'];
				}else{
					$result[$key]['foto']= BASEURL.'doc/tmp.default.jpg';
				}
				
			endforeach;
		endif;
		$id_album = $this->uri->segment(4,0);
		$nama_album = $this->fotomodel->get_nama_album($id_album);
		if(!empty($nama_album)){
			foreach ($nama_album as $key => $nama) {
				$nama_album[$key]['nama_album'] = $nama['nama_album']; 
			}
		}
		$this->smarty->assign("nama_album", $nama_album);
		$this->smarty->assign("foto_list", $result);
		$this->smarty->assign("page_modul", 'Album ');
		$this->smarty->assign("page_modul_url", site_url('public/foto'));
	
        // display document
        $this->parser->parse('web/base-layout/document-list.html');
    }
	
	
	
   
}