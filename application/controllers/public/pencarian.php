<?php
// important * untuk application base dari halaman ini

class Pencarian extends MY_Controller {

    function  __construct() {
        // load application base
       parent::__construct();
	   $this->Webappbase();
	   $this->load->library('datetimemanipulation');
    }

    // pages
	public function index(){
		
		$this->smarty->assign('template_content',"web/pencarian/search.html");
		$this->load->model('searchmodel');
		$this->load->library('pagination');
		$key = $this->input->post('keyword');
		if(!empty($key)):
			$this->session->set_userdata('keyword', $key);
		else:
			$key = $this->session->userdata('keyword');
		endif;
		
		if(!empty($key)):
			$keyword = '%'.$key.'%';
		else:
			$keyword = '%';
		endif;
		if($key != '%'):
			$par = array($keyword, $keyword);
			$config['base_url'] = site_url("public/pencarian/index");
			$config['total_rows'] = $this->searchmodel->get_total_pencarian($par);
			$config['per_page'] = 20;
			$config['uri_segment'] = 4;
			$config['num_links'] = 4;
			$config['first_link'] = 'First';
			$config['last_link'] = 'Last';
			$config['next_link'] = 'Next';
			$config['prev_link'] = 'Prev';
			$config['cur_tag_open'] = ' <a href="#" class="active">';
			$config['cur_tag_close'] = '</a>';
			$this->pagination->initialize($config);
			$pagging = $this->pagination->create_links();
			$this->smarty->assign("pagging", $pagging);
			//list data dari DB
			$totaldata = $config['total_rows'];
			$start = $this->uri->segment(4, 0) + 1;
			$end = $this->uri->segment(4, 0) + 20;
			$total = $config['total_rows'];
			if ($end > $config['total_rows']) {
				$end = $config['total_rows'];
			}
			$this->smarty->assign("no", $start);
			$this->smarty->assign("start", $start);
			$this->smarty->assign("end", $end);
			$limit = array(intval($this->uri->segment(4, 0)), $config['per_page']);

			$array_berita = array();
			$array_informasi = array();
			$array_agenda = array();
			$array_opini = array();
			$array_sesebi = array();
			$params = array_merge($par);
			// get data berita
			if($this->act_lang =='en'):
			$databerita = $this->searchmodel->get_pencarian_berita_english($params);

			if(!empty($databerita)):
				foreach($databerita as $row):
					if($row['id_asosiasi'] == '100'){
					$databerita['url_detail'] = site_url('public/beritadmsi/detail/'.$row['id_berita'].'/'.url_title($row['judul_english']));
					$databerita['kategori'] = 'DMSI News';
					}else{
					$databerita['url_detail'] = site_url('public/beritaanggota/detail/'.$row['id_berita'].'/'.url_title($row['judul_english']));
					$databerita['kategori'] = 'DMSI Members News';
					}
				    $pathdok = 'doc/berita/'.$row['id_berita'].'/'.$row['image'];
						if(is_file($pathdok)):
							$databerita['image'] = BASEURL.$pathdok;
						endif;
					$detail_berita = $databerita['url_detail'];
					$array_berita[] = array('id_data' => $row['id_berita'], 
											'judul' => $row['judul_english'],
											'content' => strip_tags($this->getIntroText($row['content_english'],100)),
											'image' => $databerita['image'],
											'kategori' => $databerita['kategori'],
											'url_detail' => $databerita['url_detail']);
					
						
				
				endforeach;
			endif;
			else:
			$databerita = $this->searchmodel->get_pencarian_berita_indo($params);	
			if(!empty($databerita)):
				foreach($databerita as $row):
					if($row['id_asosiasi'] == '100'){
					$databerita['url_detail'] = site_url('public/beritadmsi/detail/'.$row['id_berita'].'/'.url_title($row['judul']));
					$databerita['kategori'] = 'Berita DMSI';
					}else{
					$databerita['url_detail'] = site_url('public/beritaanggota/detail/'.$row['id_berita'].'/'.url_title($row['judul']));
					$databerita['kategori'] = 'Berita Anggota DMSI';
					}
				    $pathdok = 'doc/berita/'.$row['id_berita'].'/'.$row['image'];
						if(is_file($pathdok)):
							$databerita['image'] = BASEURL.$pathdok;
						endif;
					$detail_berita = $databerita['url_detail'];
					$array_berita[] = array('id_data' => $row['id_berita'], 
											'judul' => $row['judul'],
											'content' => strip_tags($this->getIntroText($row['content'],100)),
											'image' => $databerita['image'],
											'kategori' => $databerita['kategori'],
											'url_detail' => $databerita['url_detail']);
				endforeach;
			endif;
			endif;
			// get data informasi
			// $params = array_merge($par, $limit);
			if($this->act_lang =='en'):
			$datainformasi = $this->searchmodel->get_pencarian_informasi_english($params);
			if(!empty($datainformasi)):
				foreach($datainformasi as $row):
				
					$datainformasi['url_detail'] = site_url('public/informasi/detail/'.$row['id_kategori'].'/'.$row['id_informasi'].'/'.url_title($row['judul_english']));
					$datainformasi['kategori'] = 'Information '.$row['kategori_english'];
				    $pathdok = 'doc/informasi/'.$row['id_informasi'].'/'.$row['image'];
						if(is_file($pathdok)):
							$datainformasi['image'] = BASEURL.$pathdok;
						endif;
					$detail_informasi = $datainformasi['url_detail'];
					$array_informasi[] = array('id_data' => $row['id_informasi'], 
											'judul' => $row['judul_english'],
											'content' => strip_tags($this->getIntroText($row['content_english'],100)),
											'image' => $datainformasi['image'],
											'kategori' => $datainformasi['kategori'],
											'url_detail' => $datainformasi['url_detail']);
					
						
				
				endforeach;
			endif;
			else:
			$datainformasi = $this->searchmodel->get_pencarian_informasi_indo($params);
			if(!empty($datainformasi)):
				foreach($datainformasi as $row):
				
					$datainformasi['url_detail'] = site_url('public/informasi/detail/'.$row['id_kategori'].'/'.$row['id_informasi'].'/'.url_title($row['judul']));
					$datainformasi['kategori'] = 'Information '.$row['kategori'];
				    $pathdok = 'doc/informasi/'.$row['id_informasi'].'/'.$row['image'];
						if(is_file($pathdok)):
							$datainformasi['image'] = BASEURL.$pathdok;
						endif;
					$detail_informasi = $datainformasi['url_detail'];
					$array_informasi[] = array('id_data' => $row['id_informasi'], 
											'judul' => $row['judul'],
											'content' => strip_tags($this->getIntroText($row['content'],100)),
											'image' => $datainformasi['image'],
											'kategori' => $datainformasi['kategori'],
											'url_detail' => $datainformasi['url_detail']);
					
						
				
				endforeach;
			endif;
			endif;

			// get data agenda
			if($this->act_lang =='en'):
			$dataagenda = $this->searchmodel->get_pencarian_agenda_english($params);
			if(!empty($dataagenda)):
				foreach($dataagenda as $row):
					if($row['id_asosiasi'] == '100'){
					$dataagenda['url_detail'] = site_url('public/kegiatandmsi/detail/'.$row['id_agenda'].'/'.url_title($row['judul_english']));
					$dataagenda['kategori'] = 'DMSI Event';
					}else{
					$dataagenda['url_detail'] = site_url('public/kegiatananggota/detail/'.$row['id_agenda'].'/'.url_title($row['judul_english']));
					$dataagenda['kategori'] = 'DMSI Member Event';
					}
				    $pathdok = 'doc/agenda/'.$row['id_agenda'].'/'.$row['image_agenda'];
						if(is_file($pathdok)):
							$dataagenda['image'] = BASEURL.$pathdok;
						endif;
					$detail_agenda = $dataagenda['url_detail'];
					$array_agenda[] = array('id_data' => $row['id_agenda'], 
											'judul' => $row['judul_english'],
											'content' => strip_tags($this->getIntroText($row['keterangan_english'],100)),
											'image' => $dataagenda['image'],
											'kategori' => $dataagenda['kategori'],
											'url_detail' => $dataagenda['url_detail']);
					
						
				
				endforeach;
			endif;
			else:
				$dataagenda = $this->searchmodel->get_pencarian_agenda_indo($params);
			if(!empty($dataagenda)):
				foreach($dataagenda as $row):
					if($row['id_asosiasi'] == '100'){
					$dataagenda['url_detail'] = site_url('public/kegiatandmsi/detail/'.$row['id_agenda'].'/'.url_title($row['judul_agenda']));
					$dataagenda['kategori'] = 'Event DMSI';
					}else{
					$dataagenda['url_detail'] = site_url('public/kegiatananggota/detail/'.$row['id_agenda'].'/'.url_title($row['judul_agenda']));
					$dataagenda['kategori'] = 'Event Anggota DMSI';
					}
				    $pathdok = 'doc/agenda/'.$row['id_agenda'].'/'.$row['image_agenda'];
						if(is_file($pathdok)):
							$dataagenda['image'] = BASEURL.$pathdok;
						endif;
					$detail_agenda = $dataagenda['url_detail'];
					$array_agenda[] = array('id_data' => $row['id_agenda'], 
											'judul' => $row['judul_agenda'],
											'content' => strip_tags($this->getIntroText($row['keterangan'],100)),
											'image' => $dataagenda['image'],
											'kategori' => $dataagenda['kategori'],
											'url_detail' => $dataagenda['url_detail']);
					
						
				
				endforeach;
			endif;

			endif;

			// get data opini
			// $params = array_merge($par, $limit);
			if($this->act_lang =='en'):
			$dataopini = $this->searchmodel->get_pencarian_opini_english($params);
			if(!empty($dataopini)):
				foreach($dataopini as $row):
				
					$dataopini['url_detail'] = site_url('public/opini/detail/'.$row['id_opini'].'/'.url_title($row['judul_english']));
					$dataopini['kategori'] = 'Opinion';
				    $pathdok = 'doc/opini/'.$row['id_opini'].'/'.$row['image'];
						if(is_file($pathdok)):
							$dataopini['image'] = BASEURL.$pathdok;
						endif;
					$detail_opini = $dataopini['url_detail'];
					$array_opini[] = array('id_data' => $row['id_opini'], 
											'judul' => $row['judul_english'],
											'content' => strip_tags($this->getIntroText($row['content_english'],100)),
											'image' => $dataopini['image'],
											'kategori' => $dataopini['kategori'],
											'url_detail' => $dataopini['url_detail']);
					
						
				
				endforeach;
			endif;
			else:
			$dataopini = $this->searchmodel->get_pencarian_opini_indo($params);
			if(!empty($dataopini)):
				foreach($dataopini as $row):
				
					$dataopini['url_detail'] = site_url('public/opini/detail/'.$row['id_opini'].'/'.url_title($row['judul']));
					$dataopini['kategori'] = 'Opini';
				    $pathdok = 'doc/opini/'.$row['id_opini'].'/'.$row['image'];
						if(is_file($pathdok)):
							$dataopini['image'] = BASEURL.$pathdok;
						endif;
					$detail_opini = $dataopini['url_detail'];
					$array_opini[] = array('id_data' => $row['id_opini'], 
											'judul' => $row['judul'],
											'content' => strip_tags($this->getIntroText($row['content'],100)),
											'image' => $dataopini['image'],
											'kategori' => $dataopini['kategori'],
											'url_detail' => $dataopini['url_detail']);
					
						
				
				endforeach;
			endif;
			endif;

			// get data opini
			// $params = array_merge($par, $limit);
			if($this->act_lang =='en'):
			$datasesebi = $this->searchmodel->get_pencarian_sesebi_english($params);
			if(!empty($datasesebi)):
				foreach($datasesebi as $row):
				
					$datasesebi['url_detail'] = site_url('public/sesebi/detail/'.$row['id_sesebi'].'/'.url_title($row['judul_english']));
					$datasesebi['kategori'] = 'Various';
				    $pathdok = 'doc/sesebi/'.$row['id_sesebi'].'/'.$row['image'];
						if(is_file($pathdok)):
							$datasesebi['image'] = BASEURL.$pathdok;
						endif;
					$detail_sesebi = $datasesebi['url_detail'];
					$array_sesebi[] = array('id_data' => $row['id_sesebi'], 
											'judul' => $row['judul_english'],
											'content' => strip_tags($this->getIntroText($row['content_english'],100)),
											'image' => $datasesebi['image'],
											'kategori' => $datasesebi['kategori'],
											'url_detail' => $datasesebi['url_detail']);
					
						
				
				endforeach;
			endif;
			else:
			$datasesebi = $this->searchmodel->get_pencarian_sesebi_indo($params);
			if(!empty($datasesebi)):
				foreach($datasesebi as $row):
				
					$datasesebi['url_detail'] = site_url('public/sesebi/detail/'.$row['id_sesebi'].'/'.url_title($row['judul']));
					$datasesebi['kategori'] = 'Serba-serbi';
				    $pathdok = 'doc/sesebi/'.$row['id_sesebi'].'/'.$row['image'];
						if(is_file($pathdok)):
							$datasesebi['image'] = BASEURL.$pathdok;
						endif;
					$detail_sesebi = $datasesebi['url_detail'];
					$array_sesebi[] = array('id_data' => $row['id_sesebi'], 
											'judul' => $row['judul'],
											'content' => strip_tags($this->getIntroText($row['content'],100)),
											'image' => $datasesebi['image'],
											'kategori' => $datasesebi['kategori'],
											'url_detail' => $datasesebi['url_detail']);
					
						
				
				endforeach;
			endif;
			endif;
			
			$array_hasil = array_merge($array_berita, $array_informasi, $array_agenda, $array_opini, 
				$array_sesebi);
			$this->smarty->assign("data", $array_hasil);
			$this->smarty->assign("keyword", $key);
			$this->smarty->assign("keyword_pencarian", $key);
		endif;
			$this->smarty->assign("page_modul", 'Pencarian Data');
			$this->smarty->assign("page_modul_url", site_url('public/pencarian'));
		// display document
        $this->parser->parse('web/base-layout/document-list.html');
	}
	
	
	
	
	
   
}