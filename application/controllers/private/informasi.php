<?php

class Informasi extends MY_Controller {

     function  __construct() {
        // load application base
       parent::__construct();
	   $this->PrivateAppBase();
    }

    public function index() {
        // template content
		
        $this->smarty->assign("template_content", "private/informasi/list");
        // load
        $this->load->model('informasimodel');
        $this->load->library('notification');
		 $this->load->library('pagination');

         //table grid
        $this->layout->load_javascript("js/admin/plugins/datatables/jquery.dataTables.js");
        $this->layout->load_javascript("js/admin/plugins/datatables/dataTables.bootstrap.js");
		
		//get data
        $data = $this->informasimodel->get_list_informasi_limit_private();
		if(!empty($data)):
			foreach($data as $k=>$row):
				$pathdok = 'doc/informasi/'.$row['id_informasi'].'/'.$row['image'];
				if(!is_file($pathdok)):
					$data[$k]['image'] = '';
				else:
					$data[$k]['image'] = BASEURL.$pathdok;
				endif;
				
			endforeach;
		endif;
		$this->smarty->assign("data", $data);
         $this->smarty->assign("no",1);
		//$this->smarty->assign("total", $totaldata);
        
        //parse url
        $this->smarty->assign('url_add', site_url('private/informasi/add'));
        $this->smarty->assign('url_list', site_url('private/informasi/index'));
		$this->smarty->assign('url_process', site_url('private/informasi/process/hapus'));
		$this->smarty->assign('url_edit', site_url('private/informasi/edit'));
        // notification
        $arr_notify = $this->notification->get_notification();
        // notification
        $this->smarty->assign("notification_msg", $arr_notify['message']);
        $this->smarty->assign("notification_status", (empty($arr_notify['message_status'])?'red':'green'));
       // display document
         $this->parser->parse('private/base-layout/document.html');
    }

    // switcher

    public function process($action) {
        switch($action) {
            case 'add':
                $this->process_add();
                break;
            case 'edit':
                $this->process_edit();
                break;
            case 'hapus':
                $this->process_hapus();
                break;
			case 'hapusgambar':
                $this->hapusgambar();
                break;
			case 'download':
				$this->download_lampiran();
				break;
            default :
            // default redirect
                redirect('private/berita/add');
                break;
        }
    }

    public function add() {
        // template content
        $this->smarty->assign("template_content", "private/informasi/add");
        //load
        $this->load->library('notification');
		$this->load->model('informasimodel');
        // url
		$listkategori = $this->informasimodel->get_list_kategori();
		$this->smarty->assign('listkategori', $listkategori);
		
        $this->smarty->assign("url_add", site_url("private/informasi/add"));
        $this->smarty->assign("url_list", site_url("private/informasi"));
        $this->smarty->assign("url_process", site_url("private/informasi/process/add"));
        // notification
        $arr_notify = $this->notification->get_notification();
        if(!empty($arr_notify['post'])) {
            $this->smarty->assign("data", $arr_notify['post']);
        }
        // notification
        $this->smarty->assign("notification_msg", $arr_notify['message']);
        $this->smarty->assign("notification_status", (empty($arr_notify['message_status'])?'red':'green'));
        // display document
         $this->parser->parse('private/base-layout/document.html');
    }

    public function process_add() {
        // load library
        $this->load->model('informasimodel');
        $this->load->library('notification');
		$this->load->library("uploader");
        // set rules
		$this->notification->check_post('id_kategori', 'id_kategori', 'required');
        $this->notification->check_post('judul', 'Judul', 'required');
        $this->notification->check_post('content', 'Konten', 'required');
		$this->notification->check_post('tanggal', 'Tanggal', 'required');
		$this->notification->check_post('keterangan_gambar', 'Keterangan Gambar', 'required');
        $this->notification->check_post('judul_english', 'Judul B. Inggris', 'required');
        $this->notification->check_post('content_english', 'Konten B. Inggris', 'required');
        $this->notification->check_post('caption_picture', 'Keterangan Gambar B. Inggris', 'required');
		// run
        if ($this->notification->valid_input()) {
            // params
            $params = array(
					'id_kategori' => $this->input->post('id_kategori'),
                    'judul' => $this->input->post('judul'),
                    'content' => $this->input->post('content'),
                    'tanggal' => $this->input->post('tanggal'),
					'keterangan_gambar' => $this->input->post('keterangan_gambar'),
                    'judul_english' => $this->input->post('judul_english'),
                    'content_english' => $this->input->post('content_english'),
                    'caption_picture' => $this->input->post('caption_picture'));
            // execute
            if($this->informasimodel->process_informasi_add($params)) {
				$id_informasi = $this->db->insert_id();
				 if (!empty($_FILES['image_informasi']['tmp_name'])) {
						// set file attachment
						$_FILES['image_informasi']['name'] = $id_informasi.'_'.$_FILES['image_informasi']['name'];
						$this->uploader->set_file($_FILES['image_informasi']);
						// set rules (kosongkan jika tidak menggunakan batasan sama sekali)
						$rules = array('allowed_filesize' => 5120000);
						$this->uploader->set_rules($rules);
						//$this->uploader->set_file_name();
						// direktori
						$dir = 'doc/informasi/' . $id_informasi . '/';
						// proses upload
						if ($this->uploader->upload_image($dir, 1000)) {
							$this->db->set("image",$this->uploader->get_file_name());
							$this->db->where("id_informasi", $id_informasi);
							$this->db->update("informasi_m");
							$_FILES['image_informasi']['name'] = 'kecil_'.$_FILES['image_informasi']['name'];
							$this->uploader->set_file($_FILES['image_informasi']);
							$this->uploader->upload_image($dir, 500);
						} else {
							//echo $this->upload->message;
							$this->notification->set_message("File Gambar gagal diupload");
							$this->notification->sent_notification(false);
						}
            		}
					
				    
                $this->notification->clear_post();
                $this->notification->set_message("Data berhasil disimpan");
                $this->notification->sent_notification(true);
            }else {
                $this->notification->set_message("Data gagal disimpan");
                $this->notification->sent_notification(false);
            }
        }else {
            $this->notification->sent_notification(false);
        }
        // default redirect
        redirect('private/informasi/add');
    }
	
    public function edit() {
        // template content

        $this->smarty->assign("template_content", "private/informasi/edit");
        // load
        $this->load->model('informasimodel');
        $this->load->library('notification');
		$this->load->library('DateTimeManipulation');
		
        // parse url
        $this->smarty->assign("url_add", site_url("private/informasi/add"));
        $this->smarty->assign("url_list", site_url("private/informasi"));
        $this->smarty->assign("url_process", site_url("private/informasi/process/edit"));
        // data
        /// GET DATA KATEGORI
		$kategori = $this->informasimodel->get_list_kategori();
		$this->smarty->assign("kategori", $kategori);

		
        $id_informasi = $this->uri->segment(4, 0);
        $data = $this->informasimodel->get_informasi_by_id($id_informasi);
      	
      
       
      
		$path = 'doc/informasi/'.$data['id_informasi']."/";
		if(is_file($path.$data['image'])){
			$url_hapus = site_url('private/informasi/process/hapusgambar/')."/".$data['id_informasi'];
			$data['image_informasi'] = '<img src="'.BASEURL.$path.$data['image'].'" height="200px" border="0"><br /><input type="button" value="Hapus Gambar" onClick="javascript:document.location=\''.$url_hapus.'\';">';
			
		}else{
			$data['image_informasi']= '-tidak ada gambar- ';
		}
		$this->smarty->assign("image_informasi", $data['image_informasi']);
		///ASIGN DATA variable nya ke smarty
		$this->smarty->assign("data", $data);


        // notification
        $arr_notify = $this->notification->get_notification();
        if(!empty($arr_notify['post'])) {
            $this->smarty->assign("data", $arr_notify['post']);
        }
        // notification
        $this->smarty->assign("notification_msg", $arr_notify['message']);
        $this->smarty->assign("notification_status", (empty($arr_notify['message_status'])?'red':'green'));
        // display document
         $this->parser->parse('private/base-layout/document.html');
    }
    
	
	
	
	public function process_edit() {
        // load library
        $this->load->model('informasimodel');
        $this->load->library('notification');
		 $this->load->library("uploader");
        // set rules
		$this->notification->check_post('id_kategori', 'id_kategori', 'required');
        $this->notification->check_post('judul', 'Judul', 'required');
        $this->notification->check_post('content', 'Konten', 'required');
        $this->notification->check_post('tanggal', 'Tanggal', 'required');
        $this->notification->check_post('keterangan_gambar', 'Keterangan Gambar', 'required');
        $this->notification->check_post('judul_english', 'Judul B. Inggris', 'required');
        $this->notification->check_post('content_english', 'Konten B. Inggris', 'required');
        $this->notification->check_post('caption_picture', 'Keterangan Gambar B. Inggris', 'required');
        // run
        if ($this->notification->valid_input()) {
            // params
            $params = array(
                    'id_kategori' => $this->input->post('id_kategori'),
                    'judul' => $this->input->post('judul'),
                    'content' => $this->input->post('content'),
                    'tanggal' => $this->input->post('tanggal'),
                    'keterangan_gambar' => $this->input->post('keterangan_gambar'),
                    'judul_english' => $this->input->post('judul_english'),
                    'content_english' => $this->input->post('content_english'),
                    'caption_picture' => $this->input->post('caption_picture'),
					 'id_informasi' => $this->input->post('id_informasi'));
            // execute
            if($this->informasimodel->process_informasi_edit($params)) {
				$id_informasi = $this->input->post('id_informasi');
				 if (!empty($_FILES['image_informasi']['name'])) {
						// set file attachment
						$_FILES['image_informasi']['name'] = $id_informasi.'_'.$_FILES['image_informasi']['name'];
						$this->uploader->set_file($_FILES['image_informasi']);
						// set rules (kosongkan jika tidak menggunakan batasan sama sekali)
						$rules = array('allowed_filesize' => 5120000);
						$this->uploader->set_rules($rules);
						//$this->uploader->set_file_name($id_berita);
						// direktori
						$dir = 'doc/informasi/' . $id_informasi . '/';
						// proses upload
						if ($this->uploader->upload_image($dir, 1000)) {
							$this->db->set("image", $this->uploader->get_file_name());
							$this->db->where("id_informasi", $id_informasi);
							$this->db->update("informasi_m");
							$_FILES['image_informasi']['name'] = 'kecil_'.$_FILES['image_informasi']['name'];
							$this->uploader->set_file($_FILES['image_informasi']);
							$this->uploader->upload_image($dir, 500);
						} else {
							$this->notification->set_message("Data gagal disimpan");
							$this->notification->set_message("File Gambar gagal diupload, ".$this->uploader->message);
							$this->notification->sent_notification(false);
						}
            		}
					if(!empty($_FILES['file']['name'])){
									$this->load->library("uploader");
									// set file attachment
									$this->uploader->set_file($_FILES['file']);
									// set rules (kosongkan jika tidak menggunakan batasan sama sekali)
									$rules = array('allowed_filesize' => 11200000);
									$this->uploader->set_rules($rules);
									// direktori
									$dir = 'doc/informasi/'.$id_informasi.'/';
								
									if ($this->uploader->upload_file($dir)) {
											$this->db->set("file_informasi",$this->uploader->get_file_name());
											$this->db->where("id_informasi", $id_informasi);
											$this->db->update("informasi_m");
											
									} else {
										//echo $this->upload->message;
										$this->notification->set_message("File Gambar gagal diupload");
										$this->notification->sent_notification(false);
									}
								}
				 
                $this->notification->clear_post();
                $this->notification->set_message("Data berhasil disimpan");
                $this->notification->sent_notification(true);
            }else {
                $this->notification->set_message("Data gagal disimpan");
                $this->notification->sent_notification(false);
            }
        }else {
            $this->notification->sent_notification(false);
        }
        // default redirect
        redirect('private/informasi/edit/'.$this->input->post('id_informasi'));
    }


   

    public function process_hapus() {
        // load library
        $this->load->library('notification');
		$this->load->library('uploader');
        $this->load->model('informasimodel');
        // set rules
        $this->notification->check_post('id_informasi', 'id', 'required');
        // run
        if ($this->notification->valid_input()) {
            // params
            $params = $this->input->post('id_informasi');
			if(is_array($params)):
				// execute
				foreach($params as $id):
					$informasi = $this->informasimodel->get_informasi_by_id($id);
					$this->informasimodel->process_informasi_delete($id);
					$this->uploader->remove_dir('doc/informasi/'.$id."/");
					

				endforeach;
				$this->notification->clear_post();
				$this->notification->set_message("Data berhasil dihapus");
				$this->notification->sent_notification(true);
			else:
				$this->notification->set_message("Tidak ada data yang terpilih untuk dihapus!");
				$this->notification->sent_notification(false);
			endif;
        }
        // default redirect
		redirect('private/informasi');

    }
	
	public function hapusgambar() {
        // load library
        $this->load->library('notification');
		$this->load->library('uploader');
        $this->load->model('informasimodel');
        // set rules
        $id_informasi = $this->uri->segment(5, 0);
        // run
        if (!empty($id_informasi)) {
            // params
          		$this->db->set('image','');
				$this->db->where('id_informasi' , $id_informasi);
				$this->db->update('informasi_m');
				
				$this->uploader->remove_dir('doc/informasi/'.$id_informasi."/");
				$this->notification->set_message("Gambar berhasil dihapus");
				$this->notification->sent_notification(true);
        }
        // default redirect
		redirect('private/informasi/edit/'.$id_informasi);

    }
}