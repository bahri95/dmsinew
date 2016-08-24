<?php
class Administrator extends MY_Controller {

    function  __construct() {
        // load application base
       parent::__construct();
       $this->Webappbase();
    }
    public function index() {
        // load library
        redirect('private/loginadmin');
    }
}