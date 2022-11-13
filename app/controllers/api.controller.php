<?php
require_once './app/views/api.view.php';

    class ApiController{
        protected $view;
        protected $data;
        protected $module;
        public function __construct() {
            $this->view = new ApiView();
            $this->data = file_get_contents("php://input");
        }
    

        protected function getData() {
            return json_decode($this->data);
        }
    
    }
?>