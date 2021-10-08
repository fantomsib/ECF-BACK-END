<?php


class CI_Users extends Controller{

    public $modelUsers;
    public function __construct()
    {
        $this->modelUsers = new Users();
    }

    function login(){
        $data = $_POST;
        if(empty($data)){
            $this->render('users/login');
        }
    }


}