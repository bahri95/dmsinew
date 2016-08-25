<?php
// important * untuk application base dari halaman ini

class Bagan extends MY_Controller {

    function  __construct() {
        // load application base
       parent::__construct();
	   $this->Webappbase();
	   $this->load->library('datetimemanipulation');
    }

    public function index() {
    	 $this->smarty->assign('template_content',"web/bagan/list.html");
        // load
		$this->load->model('baganmodel');
         $result = $this->baganmodel->get_data_bagan();
	
       if(!empty($result)):
			foreach($result as $key=>$data):
				$path = 'doc/bagan/'.$data['id_bagan']."/";
				if(is_file($path.$data['image'])){
					$result[$key]['image'] = BASEURL.$path.$data['image'];
					
				}else{
					$result[$key]['image']= BASEURL.'doc/tmp.default.jpg';
				}
				
			endforeach;
		endif;
		
		$this->smarty->assign("bagan_list", $result);
		$this->smarty->assign("page_modul", 'bagan');
		$this->smarty->assign("page_modul_url", site_url('public/bagan'));
	
        // display document
        $this->parser->parse('web/base-layout/document.html');
    }
  

}