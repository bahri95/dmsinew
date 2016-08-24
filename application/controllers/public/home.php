<?php
// important * untuk application base dari halaman ini

class Home extends MY_Controller {

//class Dashboard extends CI_Controller{

    function  __construct() {
        // load application base
       parent::__construct();
	   $this->Webappbase();
	   $this->load->library('datetimemanipulation');
	   
    }

    // pages

    public function index() {
		// template content
       $this->smarty->assign('template_content',"web/home/homecontent.html");
      
        // load
		$this->load->model('dashboardmodel');
	
		//display asosiasi anggota dmsi 
		$this->_display_data_anggota();
		//display berita asosiasi 
		$this->_display_berita_anggota();
		//display berita asosiasi 
		$this->_display_event_home();

		$this->_display_data_aspirasi();

		$this->_display_data_sponsor();

		//-- Highcharts --

        // display document
        $this->parser->parse('web/base-layout/document-home.html');
    }
	
	private function _display_data_anggota(){
		$this->load->model('asosiasimodel'); 
		$asosiasi= $this->asosiasimodel->get_data_asosiasi_all_public();
		 if(!empty($asosiasi)):
		 	 foreach($asosiasi as $key=>$row):
				$asosiasi[$key]['url_detail'] = site_url('public/asosiasi/profil/'.$row['id_asosiasi'].'/'.url_title($row['nama_asosiasi']));
				$pathlogo = 'doc/asosiasi/'.$row['id_asosiasi'].'/'.$row['logo_asosiasi'];
				if(is_file($pathlogo)):
					$asosiasi[$key]['logo_asosiasi'] = BASEURL.$pathlogo;
				endif;

			 endforeach;
			$this->smarty->assign("listasosiasi", $asosiasi);
			
		 endif;
	}

	private function _display_data_sponsor(){
		$this->load->model('sponsormodel'); 
		$params = array('%');
		$sponsor = $this->sponsormodel->get_list_sponsor();
		 if(!empty($sponsor)):
		 	 foreach($sponsor as $key=>$row):
				
				$pathlogo = 'doc/sponsor/'.$row['id_sponsor'].'/'.$row['image_sponsor'];
				if(is_file($pathlogo)):
					$sponsor[$key]['image_sponsor'] = BASEURL.$pathlogo;
				endif;

			 endforeach;
			$this->smarty->assign("listsponsor", $sponsor);
			
		 endif;
	}
	private function _display_data_aspirasi(){
		$this->load->model('aspirasimodel'); 
		$params = array('%');
		$aspirasi= $this->aspirasimodel->get_data_aspirasi_jawaban_public();

		if(!empty($aspirasi)):
			foreach($aspirasi as $k=>$row):
				$pathdok = 'doc/aspirasi/'.$row['id_aspirasi'].'/'.$row['foto'];
				if(!is_file($pathdok)):
					$aspirasi[$k]['foto'] = '';
				else:
					$aspirasi[$k]['foto'] = BASEURL.$pathdok;
				endif;
				
			endforeach;
		endif;
			$this->smarty->assign("listaspirasi", $aspirasi);
		$this->load->model('hargamodel'); 
		  // max tahun
        $datamaxtahun = $this->hargamodel->get_max_tahun();
         $this->smarty->assign("datamaxtahun", $datamaxtahun);

        //grafik

         $datagrafik = $this->hargamodel->get_list_harga_grafik();
         $this->smarty->assign("datagrafik", $datagrafik);

         //grafik domestik
        
         $datagrafikdo = $this->hargamodel->get_list_harga_grafik_domestik();
         $this->smarty->assign("datagrafikdo", $datagrafikdo);

          //grafik ekspor
        
         $datagrafikeks = $this->hargamodel->get_list_harga_grafik_ekspor();
         $this->smarty->assign("datagrafikeks", $datagrafikeks);
		 // endif;
	}
	private function _display_berita_anggota(){
		$this->load->model('beritamodel'); 
		$params = array('%');
		$berita = $this->beritamodel->get_berita_asosiasi_home();
		 if(!empty($berita)):
		 	 foreach($berita as $key=>$row):
		 	 	if($this->act_lang == 'en'):
		 	 		$berita[$key]['judul'] = $row['judul_english'];
		 	 	endif;
				$path = 'doc/berita/'.$row['id_berita'].'/';
				if(is_file($path.$row['image'])){
					$berita[$key]['image'] = BASEURL.$path.$row['image'];
				}else{
					$berita[$key]['image']= BASEURL.'doc/tmp.default.jpg';
				}
				if($this->act_lang == 'en'){
				$berita[$key]['url_detail'] = site_url('public/beritaanggota/detail/'.$row['id_berita'].'/'.url_title($row['judul_english']));
				$berita[$key]['tanggal'] = $this->datetimemanipulation->GetFullDateWithDayEn($row['tanggal']);
				}else{
				$berita[$key]['url_detail'] = site_url('public/beritaanggota/detail/'.$row['id_berita'].'/'.url_title($row['judul']));
				$berita[$key]['tanggal'] = $this->datetimemanipulation->GetFullDateWithDay($row['tanggal']);
				}

			 endforeach;
			$this->smarty->assign("berita_asosiasi", $berita);
			
		 endif;
	}
	
	private function _display_event_home()
	{
		$this->db->select('*');
		$this->db->from('agenda_m');
		$this->db->where('id_asosiasi','100');
		$this->db->order_by('tanggal_mulai', 'DESC');
		$this->db->limit(1);
		$data = $this->db->get()->result_array();
		if(!empty($data)):
			foreach($data as $key=>$row):
				if($this->act_lang == 'en'):

					$data[$key]['judul_agenda'] = $row['judul_english'];
					$data[$key]['keterangan'] = $row['keterangan_english'];
				endif;
				$path = 'doc/agenda/'.$row['id_agenda'].'/';
				if(is_file($path.$row['image_agenda'])){
					$data[$key]['image_agenda'] = BASEURL.$path.$row['image_agenda'];
				}else{
					$data[$key]['image_agenda']= BASEURL.'doc/tmp.default.jpg';
				}
				
				if($this->act_lang == 'en'){
					$data[$key]['tanggal_mulai'] = $this->datetimemanipulation->GetFullDateWithDayEn($row['tanggal_mulai']);
				$data[$key]['tanggal_selesai'] = $this->datetimemanipulation->GetFullDateWithDayEn($row['tanggal_selesai']);
				$data[$key]['url_detail'] = site_url('public/kegiatandmsi/detail/'.$row['id_agenda'].'/'.url_title($row['judul_english']));
				}else{
				$data[$key]['tanggal_mulai'] = $this->datetimemanipulation->GetFullDateWithDay($row['tanggal_mulai']);
				$data[$key]['tanggal_selesai'] = $this->datetimemanipulation->GetFullDateWithDay($row['tanggal_selesai']);
				$data[$key]['url_detail'] = site_url('public/kegiatandmsi/detail/'.$row['id_agenda'].'/'.url_title($row['judul_agenda']));
				}
			endforeach;
		endif;
		$this->smarty->assign("eventhome", $data);
	}

	
	
	
}