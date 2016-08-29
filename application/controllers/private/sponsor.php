<?php
    class Sponsor extends MY_Controller {
        
        function  __construct() {
            // load application base
            parent::__construct();
            $this->PrivateAppBase();
        }

        public
        function index() {
            // template content
            $this->smarty->assign("template_content", "private/sponsor/list");
            // load
            $this->load->model('sponsormodel');
            $this->load->library('notification');
            $this->load->library('pagination');
            $this->layout->load_javascript("js/admin/plugins/datatables/jquery.dataTables.js");
            $this->layout->load_javascript("js/admin/plugins/datatables/dataTables.bootstrap.js");
            $data = $this->sponsormodel->get_list_sponsor();
            
            if(!empty($data)):
            foreach($data as $k=>$row):
            $pathdok = 'doc/sponsor/'.$row['id_sponsor'].'/'.$row['image_sponsor'];
            
            if(!is_file($pathdok)):
            $data[$k]['image_sponsor'] = ''; else :
            $data[$k]['image_sponsor'] = BASEURL.$pathdok;
            endif;
            endforeach;
            endif;
            $this->smarty->assign("data", $data);
            $this->smarty->assign("no",1);
            //parse url
            $this->smarty->assign('url_add', site_url('private/sponsor/add'));
            $this->smarty->assign('url_list', site_url('private/sponsor/index'));
            $this->smarty->assign('url_process', site_url('private/sponsor/process/hapus'));
            $this->smarty->assign('url_edit', site_url('private/sponsor/edit'));
            // notification
            $arr_notify = $this->notification->get_notification();
            // notification
            $this->smarty->assign("notification_msg", $arr_notify['message']);
            $this->smarty->assign("notification_status", (empty($arr_notify['message_status'])?'red':
            'green'));
            // display document
            $this->parser->parse('private/base-layout/document.html');
        }

        public
        function process($action) {
            switch($action) {
                case 'add':
                    $this->process_add();
                    break;
                case 'edit':
                    $this->process_edit();
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
                        redirect('private/sponsor/add');
                        break;
                }

        }

        public
        function add() {
            // template content
            $this->smarty->assign("template_content", "private/sponsor/add");
            //load
            $this->load->library('notification');
            $this->load->model('sponsormodel');
            // url
            $this->smarty->assign("url_add", site_url("private/sponsor/add"));
            $this->smarty->assign("url_list", site_url("private/sponsor"));
            $this->smarty->assign("url_process", site_url("private/sponsor/process/add"));
            // notification
            $arr_notify = $this->notification->get_notification();
            
            if(!empty($arr_notify['post'])) {
                $this->smarty->assign("data", $arr_notify['post']);
            }

            // notification
            $this->smarty->assign("notification_msg", $arr_notify['message']);
            $this->smarty->assign("notification_status", (empty($arr_notify['message_status'])?'red':
            'green'));
            // display document
            $this->parser->parse('private/base-layout/document.html');
        }

        public
        function process_add() {
            // load library
            $this->load->model('sponsormodel');
            $this->load->library('notification');
            $this->load->library("uploader");
            // set rules
            $this->notification->check_post('nama_sponsor', 'Nama Sponsor', 'required');
            // run
            
            if ($this->notification->valid_input()) {
                // params
                $params = array('nama_sponsor' => $this->input->post('nama_sponsor'));
                // execute
                
                if($this->sponsormodel->process_sponsor_add($params)) {
                    $id_sponsor = $this->db->insert_id();
                    
                    if (!empty($_FILES['image_sponsor']['tmp_name'])) {
                        $datasponsor= $this->sponsormodel->get_sponsor_by_id($id_asosiasi);
                        $_FILES['image_sponsor']['name'] = $id_sponsor.'_'.$_FILES['image_sponsor']['name'];
                        //hapus foto lama
                        //$logo_lama = 'doc/asosiasi/'.$id_asosiasi.'/'.$this->input->post('logo_lama');
                        //if(is_file($logo_lama)):
                        //unlink($logo_lama);
                        //$this->db->set("logo_asosiasi",'');
                        //$this->db->where("id_asosiasi", $id_asosiasi);
                        //$this->db->update("asosiasi_m");
                        //endif;
                        $config['upload_path']= "./doc/sponsor/".$id_sponsor.'/';
                        $config['allowed_types']= 'gif|jpg|png|jpeg';
                        //$config['file_type']    = 'image/png';
                        $config['file_name']= $_FILES['image_sponsor']['name'];
                        
                        if(!is_dir($config['upload_path'])):
                        mkdir($config['upload_path']);
                        endif;
                        $this->load->library('upload', $config);
                        
                        if ($this->upload->do_upload("image_sponsor")) {
                            $data = $this->upload->data();
                            $image_sponsor = $data['file_name'];
                            $this->db->set("image_sponsor",$image_sponsor);
                            $this->db->where("id_sponsor", $id_sponsor);
                            $this->db->update("sponsor_m");
                        }

                    }

                    $this->notification->clear_post();
                    $this->notification->set_message("Data berhasil disimpan");
                    $this->notification->sent_notification(true);
                } else {
                    $this->notification->set_message("Data gagal disimpan");
                    $this->notification->sent_notification(false);
                }

            } else {
                $this->notification->sent_notification(false);
            }

            // default redirect
            redirect('private/sponsor/add');
        }

        public
        function edit() {
            // template content
            $this->smarty->assign("template_content", "private/sponsor/edit");
            // load
            $this->load->model('sponsormodel');
            $this->load->library('notification');
            $this->load->library('DateTimeManipulation');
            // parse url
            $this->smarty->assign("url_add", site_url("private/sponsor/add"));
            $this->smarty->assign("url_list", site_url("private/sponsor"));
            $this->smarty->assign("url_process", site_url("private/sponsor/process/edit"));
            // data
            /// GET DATA album
            $sponsor = $this->sponsormodel->get_list_sponsor();
            $this->smarty->assign("sponsor", $sponsor);
            $id_sponsor = $this->uri->segment(4, 0);
            $data = $this->sponsormodel->get_sponsor_by_id($id_sponsor);
            $path = 'doc/sponsor/'.$id_sponsor."/";
            
            if(is_file($path.$data['image_sponsor'])){
                $url_hapus = site_url('private/sponsor/process/hapusgambar/')."/".$data['id_sponsor'];
                $data['image_sponsor_edit'] = '<img src="'.BASEURL.$path.$data['image_sponsor'].'" border="0" height="200px;"><br /><input type="button" value="Hapus Gambar" onClick="javascript:document.location=\''.$url_hapus.'\';">';
            } else {
                $data['image_sponsor']= '-tidak ada gambar- ';
            }

            $data['image'] = $data['image_sponsor'];
            $this->smarty->assign("image_sponsor_edit", $data['image_sponsor_edit']);
            ///ASIGN DATA variable nya ke smarty
            $this->smarty->assign("data", $data);
            // notification
            $arr_notify = $this->notification->get_notification();
            
            if(!empty($arr_notify['post'])) {
                $this->smarty->assign("data", $arr_notify['post']);
            }

            // notification
            $this->smarty->assign("notification_msg", $arr_notify['message']);
            $this->smarty->assign("notification_status", (empty($arr_notify['message_status'])?'red':
            'green'));
            // display document
            $this->parser->parse('private/base-layout/document.html');
        }

        public
        function process_edit() {
            // load library
            $this->load->model('sponsormodel');
            $this->load->library('notification');
            $this->load->library("uploader");
            // set rules
            $this->notification->check_post('nama_sponsor', 'Nama Sponsor', 'required');
            // run
            
            if ($this->notification->valid_input()) {
                // params
                $params = array( 'nama_sponsor' => $this->input->post('nama_sponsor'), 'id_sponsor' => $this->input->post('id_sponsor'));
                // execute
                
                if($this->sponsormodel->process_sponsor_edit($params)) {
                    
                    if (!empty($_FILES['image_sponsor']['tmp_name'])) {
                        $id_sponsor = $this->input->post('id_sponsor');
                        $datasponsor= $this->sponsormodel->get_sponsor_by_id($id_sponsor);
                        $_FILES['image_sponsor']['name'] = $id_sponsor.'_'.$_FILES['image_sponsor']['name'];
                        //hapus foto lama
                        $logo_lama = 'doc/sponsor/'.$id_sponsor.'/'.$this->input->post('logo_lama');
                        
                        if(is_file($logo_lama)):
                        unlink($logo_lama);
                        $this->db->set("image_sponsor",$image_sponsor);
                        $this->db->where("id_sponsor", $id_sponsor);
                        $this->db->update("sponsor_m");
                        endif;
                        $config['upload_path']= "./doc/sponsor/".$id_sponsor.'/';
                        $config['allowed_types']= 'gif|jpg|png|jpeg';
                        //$config['file_type']    = 'image/png';
                        $config['file_name']= $_FILES['image_sponsor']['name'];
                        
                        if(!is_dir($config['upload_path'])):
                        mkdir($config['upload_path']);
                        endif;
                        $this->load->library('upload', $config);
                        
                        if ($this->upload->do_upload("image_sponsor")) {
                            $data = $this->upload->data();
                            $image_sponsor = $data['file_name'];
                            $this->db->set("image_sponsor",$image_sponsor);
                            $this->db->where("id_sponsor", $id_sponsor);
                            $this->db->update("sponsor_m");
                        }

                    }

                    $this->notification->clear_post();
                    $this->notification->set_message("Data berhasil disimpan");
                    $this->notification->sent_notification(true);
                    redirect('private/sponsor/edit/'.$this->input->post('id_sponsor'));
                } else {
                    $this->notification->set_message("Data gagal disimpan");
                    $this->notification->sent_notification(false);
                }

            } else {
                $this->notification->sent_notification(false);
            }

            // default redirect
            redirect('private/sponsor/edit/'.$this->input->post('id_sponsor'));
        }

        public
        function process_hapus() {
            // load library
            $this->load->library('notification');
            $this->load->library('uploader');
            $this->load->model('sponsormodel');
            // set rules
            $this->notification->check_post('id_sponsor', 'id', 'required');
            // run
            
            if ($this->notification->valid_input()) {
                // params
                $params = $this->input->post('id_sponsor');
                
                if(is_array($params)):
                // execute
                foreach($params as $id):
                $sponsor = $this->sponsormodel->get_sponsor_by_id($id);
                $this->sponsormodel->process_sponsor_delete($id);
                $this->uploader->remove_dir('doc/sponsor/'.$id."/");
                endforeach;
                $this->notification->clear_post();
                $this->notification->set_message("Data berhasil dihapus");
                $this->notification->sent_notification(true); else :
                $this->notification->set_message("Tidak ada data yang terpilih untuk dihapus!");
                $this->notification->sent_notification(false);
                endif;
            }

            // default redirect
            redirect('private/sponsor');
        }

        public
        function hapusgambar() {
            // load library
            $this->load->library('notification');
            $this->load->library('uploader');
            $this->load->model('sponsormodel');
            // set rules
            $id_sponsor = $this->uri->segment(5, 0);
            // run
            
            if (!empty($id_sponsor)) {
                // params
                $this->db->set('image_sponsor','');
                $this->db->where('id_sponsor' , $id_sponsor);
                $this->db->update('sponsor_m');
                $this->uploader->remove_dir('doc/sponsor/'.$id_sponsor."/");
                $this->notification->set_message("Gambar berhasil dihapus");
                $this->notification->sent_notification(true);
            }

            // default redirect
            redirect('private/sponsor/edit/'.$id_sponsor);
        }

    }