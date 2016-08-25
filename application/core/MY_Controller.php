<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');



class MY_Controller extends CI_Controller {



    // init variable base

    protected $arr_site_data;

    protected $int_nav;

    protected $int_parent;

    protected $int_parent_selected;

    protected $id_user;

	protected $user_data = array();

	

	

    function  __construct() {

        // load application base

        //parent::WebApplicationBase();

		parent::__construct();

    }

	

	///--Web Base Script ----

	public function  Webappbase() {

		// load smarty

        $this->base_load_common();

        // load app data

        $this->base_load_app();

        // view app data

        $this->base_view_app();

        //set bahasa

        $this->_set_language();

        //nama judul

        $this->_display_nama_judul();

        //nama menu

        $this->_display_nama_menu();

        //banner

        $this->_display_banner();

        //sosmed

      	 $this->_display_sosmed();

      	 //
      	 $this->_display_banner_atas();

      	 //label

      	 $this->_display_label();







	}

	

    final function base_load_common() {

        // define important variable

        define("BASEURL", $this->config->item('base_url'));

        // set smarty

        $this->smarty->template_dir = APPPATH. "views";

        //$this->smarty->compile_dir = "compilers";

        // load layout class

        $this->load->library('Layout');

        $this->layout->set_smarty($this->smarty);

    }



    protected function base_load_app() {

        // load themes (themes default : default)

        $this->layout->load_web_themes();

        // load base models

        //$this->load->model('profilmodel');

        // load javascript

		$this->_load_web_js();



        // load style



    }



    protected function base_view_app() {

        // display base link

        $this->_display_base_link();

        // display site data

        $this->_display_site_item();

       

        // display login

        $this->_display_user_login();

		//parse data elemen

		$this->_display_data_element();



        $this->_display_site_item();



    }

	

    private function _load_web_js() {

    	$this->layout->load_javascript("js/front/jquery.cslider.js");

        $this->layout->load_javascript("js/front/breakpoints.js");

		$this->layout->load_javascript("js/front/jquery/jquery-1.11.1.min.js");

		//-- bootstrap --

		$this->layout->load_javascript("js/front/scrollspy.js");

		$this->layout->load_javascript("js/front/bootstrap-progressbar/bootstrap-progressbar.js");

		$this->layout->load_javascript("js/front/bootstrap.min.js");

		//-- end bootstrap --

		$this->layout->load_javascript("js/front/masonry.pkgd.min.js");

		$this->layout->load_javascript("js/front/imagesloaded.pkgd.min.js");

		//-- bxslider --

		$this->layout->load_javascript("js/front/bxslider/jquery.bxslider.min.js");

		//-- flexslider --

		$this->layout->load_javascript("js/front/flexslider/jquery.flexslider.js");



		//-- smooth-scroll -->

		$this->layout->load_javascript("js/front/smooth-scroll/SmoothScroll.js");

		

		//-- carousel --

		$this->layout->load_javascript("js/front/jquery.carouFredSel-6.2.1-packed.js");

		

		$this->layout->load_javascript("js/front/rs-plugin/js/jquery.themepunch.plugins.min.js");

		$this->layout->load_javascript("js/front/rs-plugin/js/jquery.themepunch.revolution.min.js");

		$this->layout->load_javascript("js/front/rs-plugin/videojs/video.js");



		//-- jquery ui --

		$this->layout->load_javascript("js/front/jqueryui/jquery-ui.js");



		//-- Modules --

		$this->layout->load_javascript("js/front/modules/sliders.js");

		$this->layout->load_javascript("js/front/modules/ui.js");

		$this->layout->load_javascript("js/front/modules/retina.js");

		$this->layout->load_javascript("js/front/modules/animate-numbers.js");

		$this->layout->load_javascript("js/front/modules/parallax-effect.js");

		$this->layout->load_javascript("js/front/modules/settings.js");

		//$this->layout->load_javascript("js/front/modules/maps-google.js");

		$this->layout->load_javascript("js/front/modules/color-themes.js");



		

		$this->layout->load_javascript("js/front/j.placeholder.js");



		//-- Fancybox --

		$this->layout->load_javascript("js/front/fancybox/jquery.fancybox.pack.js");

		$this->layout->load_javascript("js/front/fancybox/jquery.mousewheel.pack.js");

		$this->layout->load_javascript("js/front/fancybox/jquery.fancybox.custom.js");

		//end 

		$this->layout->load_javascript("js/front/user.js");

		$this->layout->load_javascript("js/front/timeline.js");

		$this->layout->load_javascript("js/front/fontawesome-markers.js");

		//$this->layout->load_javascript("js/front/markerwithlabel.js");

		$this->layout->load_javascript("js/front/cookie.js");

		$this->layout->load_javascript("js/front/loader.js");

		$this->layout->load_javascript("js/front/scrollIt/scrollIt.min.js");

		$this->layout->load_javascript("js/front/modules/navigation-slide.js");	

		//custom functions, fungsi tambahan terkait applikasi

		$this->layout->load_javascript("js/front/custom.js");

		$this->layout->load_javascript("js/front/audioplayer/js/jplayer.playlist.min.js");

		$this->layout->load_javascript("js/front/audioplayer/js/jquery.jplayer.min.js");

		$this->layout->load_javascript("js/front/audioplayer.js");

		//-- datepicker

		$this->layout->load_javascript("js/admin/plugins/datepicker/bootstrap-datepicker.js");

		$this->layout->load_javascript("js/admin/plugins/daterangepicker/daterangepicker.js");



		// -- highcharts --

		$this->layout->load_javascript("js/charts/highcharts.js");

		$this->layout->load_javascript("js/charts/modules/exporting.js");

		$this->layout->load_javascript("js/charts/modules/data.js");

		//$this->layout->load_javascript("http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js");





	

    	$this->layout->load_javascript("js/front/bootstrap-select.js");

    	$this->layout->load_javascript("js/front/bootstrap-select.js.map");



    	



    	

		

		



    }

    private function _display_base_link() {

    	$this->load->library('session');

		$this->smarty->assign("BASEURL", BASEURL);

		$this->smarty->assign("url_login_view_admin", site_url("private/loginadmin/index"));

        $this->smarty->assign("url_login_process_admin", site_url("private/loginadmin/process_login"));

		$this->smarty->assign("url_lupa_pass_admin", site_url("private/lupapassword"));



		$this->smarty->assign("url_login_view", site_url("public/login/view"));

        $this->smarty->assign("url_login_process", site_url("public/login/process_login"));

		$this->smarty->assign("url_lupa_pass", site_url("public/lupapassword"));



        $this->smarty->assign("url_search_base", site_url("public/pencarian/index"));

        $search = $this->session->userdata('keyword');

        if(empty($search)){

            $this->smarty->assign("keyword_pencarian", $search );

        }else{

            $this->smarty->assign("keyword_pencarian", $search );

        }

    }



    private function _display_site_item() {

        // site data

        $this->arr_site_data = $this->sitemodel->get_site_data($this->config->item('web_portal_id'));

        if(!empty ($this->arr_site_data)) {

            $this->smarty->assign("site_title", $this->arr_site_data['judul_site']);

            $this->smarty->assign("site_description", $this->arr_site_data['meta_desc']);

            $this->smarty->assign("site_keyword", $this->arr_site_data['meta_key']);

        }



      



		$this->smarty->assign('homeurl', site_url('public/home'));

		$this->smarty->assign('baseurl', BASEURL);

		

		$this->smarty->assign('url_menu_anggota', site_url('public/asosiasi'));

		$this->smarty->assign('url_menu_berita_anggota', site_url('public/beritaanggota'));

		$this->smarty->assign('url_menu_kegiatan_anggota', site_url('public/kegiatananggota'));

		$this->smarty->assign('url_menu_profil', site_url('public/profil'));

		$this->smarty->assign('url_menu_profil_visi', site_url('public/profil/detail/3/visi'));

		$this->smarty->assign('url_menu_pengumuman', site_url('public/pengumuman'));

		$this->smarty->assign('url_menu_kegiatan_dmsi', site_url('public/kegiatandmsi'));

		$this->smarty->assign('url_menu_berita_dmsi', site_url('public/beritadmsi'));

		$this->smarty->assign('url_menu_berita_anggota', site_url('public/beritaanggota'));

		$this->smarty->assign('url_menu_video', site_url('public/video'));

		$this->smarty->assign('url_menu_aspirasi', site_url('public/aspirasi'));

		$this->smarty->assign('url_menu_regulasi', site_url('public/regulasi'));

		$this->smarty->assign('url_menu_download', site_url('public/download'));

		$this->smarty->assign('url_menu_kontak', site_url('public/kontak'));

		$this->smarty->assign('url_menu_registrasi', site_url('public/registrasi'));

		$this->smarty->assign('url_menu_opini', site_url('public/opini'));

		$this->smarty->assign('url_menu_sesebi', site_url('public/sesebi'));

		$this->smarty->assign('url_menu_foto', site_url('public/foto'));

	    $this->smarty->assign('url_menu_sponsor', site_url('public/sponsor'));



		$this->smarty->assign('url_menu_program', site_url('public/program'));

		$this->smarty->assign('url_menu_bagan', site_url('public/bagan'));

		$this->smarty->assign('url_menu_forum', site_url('public/forum'));

		 $this->smarty->assign('url_menu_harga', site_url('public/harga'));

		$this->load->model('informasimodel'); 

		

		$kategori = $this->informasimodel->get_list_kategori();

		foreach($kategori as $key=>$data):

			

				$kategori[$key]['url_detail'] = site_url('public/informasi/kategori/'.$data['id_kategori']);

			endforeach;

		$this->smarty->assign('informasifooter', $kategori);

		



	

        // page data

        $segments = $this->uri->total_segments();

        if(empty($segments)) {

            $params = array('public', 'home','index');

        }else {

            $params = array($this->uri->segment(1), $this->uri->segment(2), $this->uri->segment(3), 

            	 $this->uri->segment(4), $this->uri->segment(5) );

        }

        $current_page = $this->sitemodel->get_current_page($params);

        if(!empty($current_page)) {

            $this->smarty->assign('page_title', $current_page['title'] . " | ");

            $this->int_nav      = $current_page['id_nav'];

            $this->int_parent 	= $current_page['id_parent'];

        }



        // title

        if($this->uri->segment(2) <> ''):

        $title = 'DMSI | '.$this->uri->segment(2);

    	else:

    	$title = 'DMSI | Home';

    	endif;

        $this->smarty->assign('title', $title);



        $this->_set_language();

    }

	

	private function _display_data_element(){

		//get data kontak info

		$this->db->select('*');

		$this->db->from('kontak_m');

		$this->db->limit(1);

		$kontak = $this->db->get()->row_array();

		$this->smarty->assign('kontakinfo', $kontak);

		

		$this->load->model('asosiasimodel'); 

		

		$asosiasi = $this->asosiasimodel->get_data_asosiasi_all_public();

		foreach($asosiasi as $key=>$data):

				$asosiasi[$key]['url_detail'] = site_url('public/asosiasi/profil/'.$data['id_asosiasi'].'/'.url_title($data['nama_asosiasi']));

			endforeach;

		$this->smarty->assign('asosiasifooter', $asosiasi);

		//get data berita 

		 $this->load->library('datetimemanipulation');

		$this->db->select('*');

		$this->db->from('berita_m');

		$this->db->order_by('tanggal','DESC');

		$this->db->limit(4);

		$berita = $this->db->get()->result_array();

		if(!empty($berita)):

			foreach($berita as $key=>$row):

				if($this->act_lang  == 'en'):

					$berita[$key]['judul'] = $row['judul_english'];

					$berita[$key]['content'] = $row['content_english'];

					

				endif;

				$path = 'doc/berita/'.$row['id_berita'].'/';

				if(is_file($path.$row['image'])){

					$berita[$key]['image'] = BASEURL.$path.$row['image'];

				}else{

					$berita[$key]['image']= BASEURL.'doc/tmp.default.jpg';

				}

				if($this->act_lang == 'en'){

				$berita[$key]['url_detail'] = site_url('public/beritadmsi/detail/'.$row['id_berita'].'/'.url_title($row['judul_english']));

				$berita[$key]['tanggal'] = $this->datetimemanipulation->GetFullDateWithDayEn($row['tanggal']);

				}else{

					$berita[$key]['url_detail'] = site_url('public/beritadmsi/detail/'.$row['id_berita'].'/'.url_title($row['judul']));

				$berita[$key]['tanggal'] = $this->datetimemanipulation->GetFullDateWithDay($row['tanggal']);

				}

			endforeach;

		endif;

		$this->smarty->assign('berita_sidebar', $berita);

		

		//get data profil

		$this->db->select('*');

		$this->db->from('profil_m');

		$this->db->order_by('order_num','ASC');

		$profil = $this->db->get()->result_array();

		if(!empty($profil)):

			foreach($profil as $key=>$row):

				$profil[$key]['url_detail'] = site_url('public/profil/detail/'.$row['id_info'].'/'.url_title($row['judul']));

			endforeach;

		endif;

		$this->smarty->assign('profil_side', $profil);

		

		

		//get data kegiatan footer

		$this->db->select('*');

		$this->db->from('agenda_m');

		$this->db->order_by('tanggal_mulai', 'DESC');

		$this->db->limit(3);

		$data = $this->db->get()->result_array();

		if(!empty($data)):

			foreach($data as $key=>$row):

				

				if($this->act_lang == 'en'):

					$data[$key]['tanggal_mulai'] = $this->datetimemanipulation->GetFullDateWithDayEn($row['tanggal_mulai']);

				$data[$key]['tanggal_selesai'] = $this->datetimemanipulation->GetFullDateWithDayEn($row['tanggal_selesai']);

					if($row['id_asosiasi'] == '100'):

				

				$data[$key]['url_detail'] = site_url('public/kegiatandmsi/detail/'.$row['id_agenda'].'/'.url_title($row['judul_english']));

					else:

				$data[$key]['url_detail'] = site_url('public/kegiatananggota/detail/'.$row['id_agenda'].'/'.url_title($row['judul_english']));

				endif;	

				else:

				$data[$key]['tanggal_mulai'] = $this->datetimemanipulation->GetFullDateWithDay($row['tanggal_mulai']);

				$data[$key]['tanggal_selesai'] = $this->datetimemanipulation->GetFullDateWithDay($row['tanggal_selesai']);

				if($row['id_asosiasi'] == '100'):

				

				$data[$key]['url_detail'] = site_url('public/kegiatandmsi/detail/'.$row['id_agenda'].'/'.url_title($row['judul_agenda']));

					else:

				$data[$key]['url_detail'] = site_url('public/kegiatananggota/detail/'.$row['id_agenda'].'/'.url_title($row['judul_agenda']));

				endif;	

				endif;

			endforeach;

		endif;

		$this->smarty->assign("kegiatanfooter", $data);



	

		

	}



	

	

	

   

    private function _display_user_login() {

        // get id user

        $this->id_user = $this->session->userdata('id_user');

        if(!empty($this->id_user)) {

            $this->smarty->assign('user_login', true);

            // link

            $this->smarty->assign("url_logout_admin_process", site_url("private/loginadmin/process_logout_admin"));

            $this->smarty->assign("url_private", site_url("private/dashboard"));

            // load

            $this->load->model('accountmodel');

            // get data

            $data = $this->accountmodel->get_administrator_details($this->id_user);

			$data['admin_image'] = BASEURL.'doc/images/logo_icon.jpg';

			//foto

			$pathfoto = 'doc/admin/'.$data['id_user'].'/'.$data['photo'];

		if($data['jenis_kelamin'] == 'P'):

			if(!empty($data['photo']) AND is_file($pathfoto)) {

				$data['photo'] = BASEURL.$pathfoto;

			}else{

				$data['photo'] = BASEURL.'doc/images/default_female.gif';

			}

		endif;

		if($data['jenis_kelamin'] == 'L'):

			if(!empty($data['photo']) AND is_file($pathfoto)) {

				$data['photo'] = BASEURL.$pathfoto;

			}else{

				$data['photo'] = BASEURL.'doc/images/default_male.gif';

			}

		endif;



			$data['profile_url'] = site_url('private/account/status');

			$data['account_url'] = site_url('private/account/login');

			if($data['id_auth']== 5):

				$data['url_profil_museum'] = site_url('private/museum_info');

			endif;

			$this->user_data = $data;

			// parse data

            $this->smarty->assign('user_account', $data);

        }else {

			

            $this->smarty->assign('user_login', false);

        }

    }



    

	

	///--END Web Base Script ----

	

	

	///----PRIVATE AREA BASE SCRIPT----

	public function  PrivateAppBase() {

        // load smarty

        $this->base_load_common_private();

        // load app data

        $this->base_load_app_private();

        // view app data

        $this->base_view_app_private();

    }



    final function base_load_common_private() {

        // define important variable

        define("BASEURL", $this->config->item('base_url'));

        // set smarty

        $this->smarty->template_dir = APPPATH. "views";

        //$this->smarty->compile_dir = "compilers";

        // load layout class

        $this->load->library('Layout');

        $this->layout->set_smarty($this->smarty);





    }



    protected function base_load_app_private() {

        // load themes (themes default : default)

        $this->layout->load_web_themes("admin");

        // load base models



        // load javascript

		$this->_load_private_js();

        // load style



    }



    protected function base_view_app_private() {

        // display base link

        $this->_display_base_link_private();

        // display site data

        $this->_display_site_item_private();

		// run authority

        $this->_check_authority();

        // display top navigation

        $this->_display_top_navigation();

        // display sidebar navigation

        //$this->_display_sidebar_navigation();

        // display user login 

		$this->_display_user_login();


		//aspirasi baru
		$this->_load_aspirasi();

		//anggota baru
		$this->_load_anggota();




		

    }

    private function _load_aspirasi(){

    	$this->load->model('aspirasimodel');

    	//jumlah aspirasi

		$jumlah_aspirasi = $this->aspirasimodel->get_jumlah_aspirasi();

		$this->smarty->assign('jumlah_aspirasi', $jumlah_aspirasi);

		 //jumlah aspirasi verifikasi

        $jumlah_aspirasi_ver = $this->aspirasimodel->get_jumlah_aspirasi_verifikasi();

        $this->smarty->assign('jumlah_aspirasi_ver', $jumlah_aspirasi_ver);



         //jumlah aspirasi jawaban

        $jumlah_aspirasi_jaw = $this->aspirasimodel->get_jumlah_aspirasi_jawaban();

        $this->smarty->assign('jumlah_aspirasi_jaw', $jumlah_aspirasi_jaw);

		//data aspirasi

		$data_aspirasi = $this->aspirasimodel->get_data_aspirasi();

		$this->smarty->assign('data_aspirasi', $data_aspirasi);

		$this->smarty->assign("url_aspirasi_list", site_url("private/aspirasi"));

		$this->smarty->assign("url_aspirasi_verifikasi", site_url("private/aspirasi/process/verifikasi"));

		$this->smarty->assign("url_aspirasi_list_verifikasi", site_url("private/aspirasi/verifikasi"));

		$this->smarty->assign("url_aspirasi_list_jawaban", site_url("private/aspirasi/jawaban"));

		// by id

		$params = $this->uri->segment(4,0);

		$data_aspirasi_by_id = $this->aspirasimodel->get_data_aspirasi_by_id($params);

		$this->smarty->assign('data_aspirasi_by_id', $data_aspirasi_by_id);

		//read aspirasi

		$this->smarty->assign("url_aspirasi_hapus", site_url("private/aspirasi/process/hapus"));

		 $this->smarty->assign("url_aspirasi_jawab", site_url("private/aspirasi/process/jawab"));



    }

     private function _load_anggota(){

    	$this->load->model('registrasimodel');

    	//jumlah aspirasi

		$jumlah_anggota_baru = $this->registrasimodel->get_jumlah_anggota_baru();

		$this->smarty->assign('jumlah_anggota_baru', $jumlah_anggota_baru);

		// jumlah anggota baru
		$data_anggota_baru = $this->registrasimodel->get_list_anggota_baru();

		$this->smarty->assign('data_anggota_baru', $data_anggota_baru);

		 // jumlah anggota yang sudah di setujui
        $jumlah_anggota_disetujui = $this->registrasimodel->get_jumlah_anggota_disetujui();
        $this->smarty->assign('jumlah_anggota_disetujui', $jumlah_anggota_disetujui);

		$this->smarty->assign("url_anggota_list", site_url("private/registrasi"));
		$this->smarty->assign("url_anggota_disetujui", site_url("private/registrasi/disetujui"));

		



    }

	private function _load_private_js() {

		$this->layout->load_javascript("js/admin/jquery.min.js");

		$this->layout->load_javascript("js/admin/bootstrap.min.js");

		$this->layout->load_javascript("js/admin/jquery-ui.min.js");

		//-- Sparkline --

		$this->layout->load_javascript("js/admin/plugins/sparkline/jquery.sparkline.min.js");

		// -- highcharts --

		$this->layout->load_javascript("js/charts/highcharts.js");

		$this->layout->load_javascript("js/charts/modules/exporting.js");

		$this->layout->load_javascript("js/charts/modules/data.js");

		// -- jQuery Knob Chart --

		$this->layout->load_javascript("js/admin/plugins/jqueryKnob/jquery.knob.js");

		//-- daterangepicker

		$this->layout->load_javascript("js/admin/plugins/daterangepicker/daterangepicker.js");

		//-- datepicker

		$this->layout->load_javascript("js/admin/plugins/datepicker/bootstrap-datepicker.js");

		//--Bootstrap WYSIHTML5

		$this->layout->load_javascript("js/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js");

		//-- iCheck

		$this->layout->load_javascript("js/admin/plugins/iCheck/icheck.min.js");

		//-- AdminLTE App

		$this->layout->load_javascript("js/admin/adminlte/app.js");

		$this->layout->load_javascript("js/admin/adminlte/custom.js");

		$this->layout->load_javascript("js/ajaxupload.3.5.js");
		// lightbox
		

		





		//-- AdminLTE for demo purposes

		//$this->layout->load_javascript("js/admin/AdminLTE/demo.js");

		

	}

	private function _display_base_link_private() {

        $this->smarty->assign('url_process_logout', site_url('public/login/process_logout'));

		$this->smarty->assign('baseurl', BASEURL);

    }



    private function _display_site_item_private() {

        // site data

        $this->arr_site_data = $this->sitemodel->get_site_data($this->config->item('admin_portal_id'));

        if(!empty ($this->arr_site_data)) {

            $this->smarty->assign("site_title", $this->arr_site_data['judul_site']);

            $this->smarty->assign("site_description", $this->arr_site_data['meta_desc']);

            $this->smarty->assign("site_keyword", $this->arr_site_data['meta_key']);

        }

        // page data

        $params = array($this->uri->segment(1), $this->uri->segment(2), $this->uri->segment(3, 'index'));

        $current_page = $this->sitemodel->get_current_page($params);

        if(!empty($current_page)) {

            $this->smarty->assign('page_title', $current_page['title'] . " | ");

            $this->int_nav      = $current_page['id_nav'];

            $this->int_parent 	= $current_page['id_parent'];

        }

		

		

    }



    private function _check_authority() {

        // get id user

        $this->id_user = $this->session->userdata('id_user');

        // authority

        if(empty($this->id_user)) {

		    redirect('public/home');

        }else {

            $params = array($this->id_user, $this->config->item('admin_portal_id'), $this->uri->segment(1), $this->uri->segment(2), $this->uri->segment(3, 'index'));

            $result = $this->sitemodel->get_user_authority($params);

            if(!$result) {

		        redirect('public/home');

            }

        }

       

    }



    private function _display_top_navigation() {

        // get parent selected

        $this->int_parent_selected = $this->sitemodel->get_parent_group_by_idnav($this->int_parent, 0);

        if(empty($this->int_parent_selected)) {

            $this->int_parent_selected = $this->int_nav;

        }

		// site navigation

        $params = array($this->id_user, $this->config->item('admin_portal_id'), 0);

        $rs_id = $this->sitemodel->get_private_navigation_by_parent($params);

		$html = "";

		$sub_class = "";

        if($rs_id) {

            foreach($rs_id as $result) {

				$sub_menu = "";

				$sub_menu = $this->_display_sidebar_navigation($result['id_nav']);

				if(!empty($sub_menu)):

					$sub_class = " treeview";

				else:

					$sub_class = "";

				endif;

                // selected

                if($this->int_parent_selected == $result['id_nav'])

                    $selected = 'class="active '.$sub_class.'"';

                else

                    $selected = 'class="'.$sub_class.'"';

                // string html

                $html .= '<li '.$selected.'>';

                /*$html .= '<a href="'.site_url($result['app_path'].'/'.$result['module_path'].'/'.($result['page_path'] == 'index' ? '' : $result['page_path'])).'" >';

				*/

				

				if(!empty($sub_menu)):

					$html .= '<a href="#">';

					$html .= $result['title'];

					$html .= '<i class="fa fa-angle-left pull-right"></i>';

				else:

					$html .= '<a href="'.site_url($result['app_path'].'/'.$result['module_path'].'/'.($result['page_path'] == 'index' ? '' : $result['page_path'])).'" >';

					$html .= $result['title'];

				endif;

                $html .= '</a>';

				$html .= $sub_menu;

                $html .= "</li>\n";

            }

			$this->smarty->assign('site_navigation_menu_private', $html);

        }

    }



    private function _display_sidebar_navigation($int_parent_selected = 0) {

        // get parent selected

		if(empty($int_parent_selected)):

			$int_parent_selected = $this->sitemodel->get_parent_group_by_idnav($this->int_parent, $this->int_parent_selected);

		endif;

        if(empty($int_parent_selected)) {

            $int_parent_selected = $this->int_nav;

        }

        // parse sidebar menu

        $params = array($this->id_user, $this->config->item('admin_portal_id'), $int_parent_selected);

		$rs_id = $this->sitemodel->get_private_navigation_by_parent($params);

        $html = "";

        if($rs_id) {

			$html .= '<ul class="treeview-menu">';

            foreach($rs_id as $result) {

                // selected

                if($int_parent_selected == $result['id_nav'])

                    $selected = 'class="side-active"';

                else

                    $selected = '';

                // string html

                $html .= '<li '.$selected.'>';

                $html .= '<a href="'.site_url($result['app_path'].'/'.$result['module_path'].'/'.($result['page_path'] == 'index' ? '' : $result['page_path'])).'" >';

				$html .= '<i class="fa fa-angle-double-right"></i> ';

                $html .= $result['title'];

                $html .= '</a>';

                // sub display

                $html .= $this->_display_sidebar_sub_navigation($result['id_nav'], $int_parent_selected);

                $html .= "</li>\n";

            }

            $html .= "</ul>";

			return $html;

            

        }

    }



    private function _display_sidebar_sub_navigation($int_parent, $int_parent_selected) {

        // get parent selected

        $int_parent_selected = $this->sitemodel->get_parent_group_by_idnav($this->int_parent, $int_parent_selected);

        if(empty($int_parent_selected)) {

            $int_parent_selected = $this->int_nav;

        }

        // parse sub menu

        $params = array($this->id_user, $this->config->item('admin_portal_id'), $int_parent);

        $rs_id = $this->sitemodel->get_private_navigation_by_parent($params);

        $html = "";

        if($rs_id) {

            $html .= '<ul class="treeview-menu">';

            foreach($rs_id as $result) {

				

                // selected

                if($int_parent_selected == $result['id_nav'])

                    $selected = 'class="active"';

                else

                    $selected = '';

                // string html

                $html .= '<li>';

                $html .= '<a href="'.site_url($result['app_path'].'/'.$result['module_path'].'/'.($result['page_path'] == 'index' ? '' : $result['page_path'])).'" '.$selected.' >';

				$html .= '<i class="fa fa-angle-double-right"></i>';

                $html .= $result['title'];

                $html .= '</a>';

                // sub display

                $html .= $this->_display_sidebar_sub_navigation($result['id_nav'], $int_parent_selected);

                $html .= "</li>\n";

				

				

            }

            $html .= "</ul>";

        }

        return $html;

    }

	

	

	public function load_crud($output){

		if(!empty($output)):

			foreach($output->css_files as $file): 

				$this->layout->load_style_crud($file);

			endforeach;

			foreach($output->js_files as $filejs): 

				$this->layout->load_javascript_crud($filejs);	

			endforeach;

		endif;

	}

	/// LOG PROCESS

	public function savelog($params = array()){

		$this->load->model("logmodel");

		if(!empty($params)):

			$this->logmodel->process_log_add($params);

		endif;

	}

	public function getLogDataObjek($namaobjek = '', $limit_awal = 0, $limit_akhir = 5){

		$this->load->model("logmodel");

		$this->load->library("datetimemanipulation");

		$logdata = array();

		$params = array('%'.$namaobjek.'%',$limit_awal, $limit_akhir );

		if(!empty($params)):

			$logdata = $this->logmodel->get_list_log_objek_limit($params);

			if(!empty($logdata)):

				foreach($logdata as $key=>$rec):

					$logdata[$key]['tanggal'] = $this->datetimemanipulation->GetFullDate($rec['tanggal'], "in", "yes");

				endforeach;

			endif;

		endif;

		return $logdata;

	}

	

	public function getLogDataObjekID($namaobjek = '', $id_data = '',$limit_awal = 0, $limit_akhir = 5){

		$this->load->model("logmodel");

		$this->load->library("datetimemanipulation");

		$logdata = array();

		$params = array('%'.$namaobjek.'%',$id_data, $limit_awal, $limit_akhir );

		if(!empty($params)):

			$logdata = $this->logmodel->get_list_log_objek_id_limit($params);

			if(!empty($logdata)):

				foreach($logdata as $key=>$rec):

					$logdata[$key]['tanggal'] = $this->datetimemanipulation->GetFullDate($rec['tanggal'], "in", "yes");

				endforeach;

			endif;

		endif;

		return $logdata;

	}

	

	function getIntroText($text, $max =100){

		$intro = '';

		$text = strip_tags($text);

		if(strlen($text)>$max){

				$intro = substr($text,0,$max);

				$pos = strlen($intro) - strpos(strrev($intro), " "); 

				$intro = substr($text,0, $pos);

				if(strlen($intro) <= $max)$intro .= "...";

		}else{

			$intro =$text;

		}

		return $intro;

	}



	private function _set_language() {

		$uri_addr = $this->session->userdata('uri_adr');

		//echo $uri_addr;exit;

		// echo strpos($uri_addr, "process") ; exit;

		$this->act_lang = $this->session->userdata('act-lang');

		if(empty($this->act_lang)):

			$this->session->set_userdata('act-lang','id');

			$this->act_lang = 'id';

		endif;

		$lang = $this->uri->segment(3);	

		if($lang == 'en' OR $lang == 'id'):

			$this->session->set_userdata('act-lang', $lang);

			$this->act_lang = $lang;

			//$arr_uri = explode("/public/",$uri_addr);

			if(strpos($uri_addr, "process") > 1):

				redirect('public/home');

			else:

				redirect($uri_addr);

			endif;			

		endif;



		if($lang != 'process' OR $lang != 'loginadmin'):

			$this->smarty->assign("url_lang_id", site_url("public/lang/id"));

			$this->smarty->assign("url_lang_en", site_url("public/lang/en"));			

		else:

			$uri_addr = site_url('public/home');

			$this->smarty->assign("url_lang_id", site_url("public/lang/id"));

			$this->smarty->assign("url_lang_en", site_url("public/lang/en"));



		endif;

		



		$uri_addr = $this->uri->segment(1).'/'.$this->uri->segment(2).'/'.$this->uri->segment(3).'/'.$this->uri->segment(4).'/'.$this->uri->segment(5).'/'.$this->uri->segment(6);

                 

		$this->session->set_userdata('uri_adr', $uri_addr);

		//echo $this->session->userdata('uri_adr');exit;

		$this->smarty->assign("actlang", $this->act_lang);

		$this->smarty->assign("act_lang", $this->act_lang);

		

	}

	

	private function _display_nama_judul()

	{

		



		if($this->act_lang  == 'en'){

			$judul['berita_dmsi'] = "DMSI NEWS";

			$judul['berita_anggota'] = "DMSI MEMBER NEWS";

			$judul['anggota'] = "DMSI MEMBER";

			$judul['aspirasi'] = "ASPIRATION";

		}else{

			$judul['berita_dmsi'] = 'BERITA DMSI';

			$judul['berita_anggota'] = 'BERITA ANGGOTA DMSI';

			$judul['anggota'] = "ANGGOTA DMSI";

			$judul['aspirasi'] = "ASPIRASI";

		}



	$this->smarty->assign('judul', $judul);

	

	}



	private function _display_nama_menu()

	{

		if($this->act_lang  == 'en'){

			$menu['home'] = "Home";

			$menu['tentang_dmsi'] = "About DMSI";

			$menu['visi'] = "Vision and Mission";

			$menu['berita_dmsi'] = "News DMSI";

			$menu['event_dmsi'] = "Event DMSI";

			$menu['anggota_dmsi'] = "Member DMSI";

			$menu['profil_anggota'] = "Member Profil";

			$menu['berita_anggota'] = "News Members";

			$menu['event_anggota'] = "Event Member";

			$menu['informasi'] = "Information";

			$menu['wawasan'] = "Insight";

			$menu['opini'] = "Opinions";

			$menu['sesebi'] = "Various";

			$menu['infografis'] = "Infographics";

			$menu['program'] = "Action Programme DMSI";

			$menu['bagan'] = "Strategy Chart DMSI";

			$menu['bagan'] = "Strategy Chart DMSI";

			$menu['harga'] = "Market Prices";

			$menu['grafik'] = "Domestic and Export Prices";

			$menu['foto'] = "Photo Gallery";

			$menu['video'] = "Video Gallery";

			$menu['regulasi'] = "Regulation";

			$menu['aspirasi'] = "Aspiration";

			$menu['kontak'] = "Contact";

			$menu['menu_aktif'] = $this->uri->segment(2);

		}else{

			$menu['home'] = "Beranda";

			$menu['tentang_dmsi'] = "Tentang DMSI";

			$menu['visi'] = "Visi dan Misi";

			$menu['berita_dmsi'] = "Berita DMSI";

			$menu['event_dmsi'] = "Event DMSI";

			$menu['anggota_dmsi'] = "Anggota DMSI";

			$menu['profil_anggota'] = "Profil Anggota";

			$menu['berita_anggota'] = "Berita Anggota";

			$menu['event_anggota'] = "Event Anggota";

			$menu['informasi'] = "Informasi";

			$menu['wawasan'] = "Wawasan";

			$menu['opini'] = "Opini";

			$menu['sesebi'] = "Serba-Serbi";

			$menu['infografis'] = "Infografis";

			$menu['program'] = "Program Aksi DMSI";

			$menu['bagan'] = "Bagan Strategi DMSI";

			$menu['grafik'] = "Harga Domestik dan Ekspor";

			$menu['foto'] = "Galeri Foto";

			$menu['video'] = "Galeri Video";

			$menu['regulasi'] = "Regulasi";

			$menu['aspirasi'] = "Aspirasi";

			$menu['kontak'] = "Kontak";

			$menu['menu_aktif'] = $this->uri->segment(2);

		}



	$this->smarty->assign('menu', $menu);



	

	}



	private function _display_banner()

	{

		$this->load->model('bannermodel');

		//get data

        $databanner = $this->bannermodel->get_list_banner_public();

		if(!empty($databanner)):

			foreach($databanner as $k=>$row):

				



				if($this->act_lang == 'en'){

				$pathdok_en = 'doc/banner_en/'.$row['id_banner'].'/'.$row['banner_english'];

				if(!is_file($pathdok_en)):

					$databanner[$k]['banner'] = '';

				else:

					$databanner[$k]['banner'] = BASEURL.$pathdok_en;

				endif;

				}else{

				$pathdok = 'doc/banner/'.$row['id_banner'].'/'.$row['banner'];

				if(!is_file($pathdok)):

					$databanner[$k]['banner'] = '';

				else:

					$databanner[$k]['banner'] = BASEURL.$pathdok;

				endif;

				}

				// endif;

			endforeach;

		endif;

		$this->smarty->assign("databanner", $databanner);

	}

	private function _display_banner_atas()

	{
		  $this->load->model('bantasmodel');

        $this->load->library('notification');

		$data = $this->bantasmodel->get_bantas_info();

      

        $path = 'doc/bantas/'.$data['id_bantas']."/";

        if(is_file($path.$data['bantas'])){

            $url_hapus = site_url('private/bantas/process/hapusgambar/')."/".$data['id_bantas'];

            $data['bantas'] = '<img class="img-responsive" src="'.BASEURL.$path.$data['bantas'].'" border="0"><br />';

            

        }else{

            $data['bantas']= '-tidak ada gambar- ';

        }

        $this->smarty->assign("image_bantas", $data['bantas']);

	}




	private function _display_sosmed()

	{

		$this->load->model('sosmedmodel');

		//get data

        $datasosmed = $this->sosmedmodel->get_list_sosmed_public();

		$this->smarty->assign("datasosmed", $datasosmed);

	}



	private function _display_label(){

		if($this->act_lang == 'en'){

			$label['selengkapnya'] = 'More';

			$label['aspirasi'] = 'You can deliver the criticism, suggestions, questions to us through information and tools below will be displayed on the front page.';

			$label['pesan'] = 'Send a Message';

			$label['nama'] = 'Name';

			$label['pekerjaan'] = 'Jobs';

			$label['objek'] = 'Object';

			$label['tanggal'] = 'Date';

			$label['foto'] = 'Photo';

			$label['judul'] = 'Title';

			//aspirasi

			$label['isi_pesan'] = 'Message Body Aspiration';

			$label['validasi'] = 'Validation Code';

			$label['kirim_pesan'] = 'Send a message';

			$label['petunjuk'] = 'Instructions';

			$label['petunjuk1'] = 'Please Enter Your Full Name';

			$label['petunjuk2'] = 'fill the column by selecting the Object to which this aspiration in show';

			$label['petunjuk3'] = 'DMSI = Top Party DMSI';

			$label['petunjuk4'] = 'In addition to DI = One party DMSI Association Members';

			$label['petunjuk5'] = 'Email filled with your email';

			$label['petunjuk6'] = 'Dates stuffed with the date you sent the message this aspiration';

			$label['petunjuk7'] = 'Message message filled with Aspiration Aspiration you, suggest politely and in good';

			$label['petunjuk8'] = 'Validation code in the contents in accordance with the code on it';

			//kontak

			$label['kontak'] = 'Contact Us';

			$label['kontak_deskripsi'] = 'You can deliver the criticism, suggestions, questions to us through information and tools below.';

			$label['subjek'] = 'Subject';

			$label['pesan_kontak'] = 'the contents of the message';

			

			$label['bagikan'] = 'Share';

		}else{

			$label['selengkapnya'] = 'Selengkapnya';

			$label['aspirasi'] = 'Anda dapat menyampaikan kritik, saran, pertanyaan kepada kami melalui informasi dan sarana di bawah ini yang akan ditampilkan di Halaman Depan.';

			$label['pesan'] = 'Kirim Pesan';

			$label['nama'] = 'Nama';

			$label['pekerjaan'] = 'Pekerjaan';

			$label['objek'] = 'Objek';

			$label['tanggal'] = 'Tanggal';

			$label['foto'] = 'Foto';

			$label['judul'] = 'Judul';

			$label['isi_pesan'] = 'Isi Pesan Aspirasi';

			$label['validasi'] = 'Kode Validasi';

			$label['kirim_pesan'] = 'Kirim Pesan';

			$label['petunjuk'] = 'Petunjuk';

			$label['petunjuk1'] = 'Isikan Nama Anda Secara Lengkap';

			$label['petunjuk2'] = 'isikan Kolom Objek dengan memilih ke pihak mana Aspirasi ini di tunjukan';

			$label['petunjuk3'] = 'DMSI = Pihak Utama DMSI';

			$label['petunjuk4'] = 'Selain DMSI = Salah satu pihak Anggota Asosiasi DMSI';

			$label['petunjuk5'] = 'Email diisi dengan email Anda';

			$label['petunjuk6'] = 'Tanggal diisi dengan tanggal Anda mengirim pesan Aspirasi ini';

			$label['petunjuk7'] = 'Pesan Aspirasi diisi dengan pesan Aspirasi anda, di sarankan sopan dan baik';

			$label['petunjuk8'] = 'Kode validasi di isi sesuai dengan kode di atasnya';



			$label['kontak'] = 'Kontak Kami';

			$label['kontak_deskripsi'] = 'Anda dapat menyampaikan kritik, saran, pertanyaan kepada kami melalui informasi dan sarana di bawah ini.';

			$label['subjek'] = 'Subjek';

			$label['pesan_kontak'] = 'Isi Pesan';

			$label['bagikan'] = 'Bagikan';

		}



		$this->smarty->assign('label', $label);

	}





	  // display site data



	/// END LOG PROCESS

	//---END PRIVATE BASE SCRIPT--



}