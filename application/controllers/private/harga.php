<?php
    class Harga extends MY_Controller {
        
        function  __construct() {
            // load application base
            parent::__construct();
            $this->PrivateAppBase();
        }

        public
        function index() {
            // template content
            $this->smarty->assign("template_content", "private/harga/list");
            // load
            $this->load->model('hargamodel');
            $this->load->library('notification');
            $this->load->library('pagination');
            $this->layout->load_javascript("js/admin/plugins/datatables/jquery.dataTables.js");
            $this->layout->load_javascript("js/admin/plugins/datatables/dataTables.bootstrap.js");
            //get kategori harga
            if($this->hargamodel->get_list_harga_private()){
            $datakatharga = $this->hargamodel->get_list_katharga();
            $this->smarty->assign("katharga", $datakatharga);
            $id_katharga = $this->input->post('id_katharga');
            $this->smarty->assign("id_katharga", $id_katharga);
            // get data
            $data = $this->hargamodel->get_list_harga_private();
            $this->smarty->assign("data", $data);
            //data harga domestik
            $datadomestik = $this->hargamodel->get_list_harga_domestik_tabel();
            $this->smarty->assign("datadomestik", $datadomestik);
            //data harga ekspor
            $dataekspor = $this->hargamodel->get_list_harga_ekspor_tabel();
            $this->smarty->assign("dataekspor", $dataekspor);
            $this->smarty->assign("no",1);
            }
            //$this->smarty->assign("total", $totaldata);
            // parse url
            $this->smarty->assign('url_add', site_url('private/harga/add'));
            $this->smarty->assign('url_grafik', site_url('private/harga/grafik'));
            $this->smarty->assign('url_list', site_url('private/harga/index'));
            $this->smarty->assign('url_process', site_url('private/harga/process/hapus'));
            $this->smarty->assign('url_edit', site_url('private/harga/edit'));
            // max tahun
            if($this->hargamodel->get_list_harga_grafik() <> ''){
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
            }
            // notification
            $arr_notify = $this->notification->get_notification();
            // notification
            $this->smarty->assign("notification_msg", $arr_notify['message']);
            $this->smarty->assign("notification_status", (empty($arr_notify['message_status'])?'red':
            'green'));
            // display document
            $this->parser->parse('private/base-layout/document.html');
        }

        // switcher
        public
        function process($action) {
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
                default :
                    // default redirect
                    redirect('private/berita/add');
                    break;
            }

    }

    public
    function add() {
        // template content
        $this->smarty->assign("template_content", "private/harga/add");
        //load
        $this->load->library('notification');
        $this->load->model('hargamodel');
        //get kategori harga
        $datakatharga = $this->hargamodel->get_list_katharga();
        $this->smarty->assign("katharga", $datakatharga);
        //get kategori harga
        $databulan = $this->hargamodel->get_list_bulan();
        $this->smarty->assign("bulan", $databulan);
        // url
        $this->smarty->assign("url_add", site_url("private/harga/add"));
        $this->smarty->assign("url_list", site_url("private/harga"));
        $this->smarty->assign("url_process", site_url("private/harga/process/add"));
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
        $this->load->model('hargamodel');
        $this->load->library('notification');
        // set rules
        $this->notification->check_post('tahun', 'Tahun', 'required');
        $this->notification->check_post('id_bulan', 'Bulan', 'required');
        $this->notification->check_post('rupiah', 'Harga Rupiah', 'required');
        $this->notification->check_post('dolar', 'Harga Dolar', 'required');
        // run
        $param = array('id_katharga' => $this->input->post('id_katharga'),                    'tahun' => $this->input->post('tahun'),                    'id_bulan' => $this->input->post('id_bulan'));
        
        if($this->hargamodel->get_list_harga($param)){
            $this->notification->set_message("Data sudah di input");
            $this->notification->sent_notification(false);
        } else {
            
            if ($this->notification->valid_input()) {
                // params
                $params = array('id_katharga' => $this->input->post('id_katharga'),                    'tahun' => $this->input->post('tahun'),                    'id_bulan' => $this->input->post('id_bulan'),                    'rupiah' => $this->input->post('rupiah'),'dolar' => $this->input->post('dolar'),'sumber' => $this->input->post('sumber'));
                // execute
                
                if($this->hargamodel->process_harga_add($params)) {
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

        }

        // default redirect
        redirect('private/harga/add');
    }

    public
    function edit() {
        // template content
        $this->smarty->assign("template_content", "private/harga/edit");
        // load
        $this->load->model('hargamodel');
        $this->load->library('notification');
        $this->load->library('DateTimeManipulation');
        // get katharga
        $listkatharga = $this->hargamodel->get_list_katharga();
        $this->smarty->assign('listkatharga', $listkatharga);
        // get bulan
        $listbulan = $this->hargamodel->get_list_bulan();
        $this->smarty->assign('listbulan', $listbulan);
        // parse url
        $this->smarty->assign("url_add", site_url("private/harga/add"));
        $this->smarty->assign("url_list", site_url("private/harga"));
        $this->smarty->assign("url_process", site_url("private/harga/process/edit"));
        // data
        $id_harga = $this->uri->segment(4, 0);
        $data = $this->hargamodel->get_harga_by_id($id_harga);
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
        $this->load->model('hargamodel');
        $this->load->library('notification');
        // set rules
        $this->notification->check_post('tahun', 'Tahun', 'required');
        $this->notification->check_post('id_bulan', 'Bulan', 'required');
        $this->notification->check_post('rupiah', 'Harga Rupiah', 'required');
        $this->notification->check_post('dolar', 'Harga Dolar', 'required');
        // run
        
        if ($this->notification->valid_input()) {
            // params
            $params = array('id_katharga' => $this->input->post('id_katharga'),                    'tahun' => $this->input->post('tahun'),                    'id_bulan' => $this->input->post('id_bulan'),                    'rupiah' => $this->input->post('rupiah'),'dolar' => $this->input->post('dolar'),'sumber' => $this->input->post('sumber'),'id_harga' => $this->input->post('id_harga'));
            // execute
            
            if($this->hargamodel->process_harga_edit($params)) {
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
        redirect('private/harga/edit/'.$this->input->post('id_harga'));
    }

    public
    function process_hapus() {
        // load library
        $this->load->library('notification');
        $this->load->library('uploader');
        $this->load->model('hargamodel');
        // set rules
        $this->notification->check_post('id_harga', 'id', 'required');
        // run
        
        if ($this->notification->valid_input()) {
            // params
            $params = $this->input->post('id_harga');
            
            if(is_array($params)):
            // execute
            foreach($params as $id):
            $berita = $this->hargamodel->get_harga_by_id($id);
            $this->hargamodel->process_harga_delete($id);
            endforeach;
            $this->notification->clear_post();
            $this->notification->set_message("Data berhasil dihapus");
            $this->notification->sent_notification(true); else :
            $this->notification->set_message("Tidak ada data yang terpilih untuk dihapus!");
            $this->notification->sent_notification(false);
            endif;
        }

        // default redirect
        redirect('private/harga');
    }

}