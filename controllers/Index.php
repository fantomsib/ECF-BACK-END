<?php


class CI_Index extends Controller{

    public $modelUsers;
    public function __construct()
    {
        $this->modelUsers = new Users();
    }

    function index(){

        if($this->modelUsers->is_auth()){
            $this->redirect('home');
        }else{
            $this->redirect('users/login');
        }
        //if()

    }




}