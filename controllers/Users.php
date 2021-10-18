<?php


class CI_Users extends Controller{

    public $modelUsers;
    public function __construct()
    {
        $this->modelUsers = new Users();
    }

    function login(){
        $data = $_POST;
        $this->modelUsers->login($data['email'] ?? '', $data['password'] ?? '');
    }


}