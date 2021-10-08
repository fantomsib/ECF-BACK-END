<?php
include DIR.'/models/Books.php';

class CI_Books
{
    function __construct(){
        $this->model = new Books();
    }

    function get(){
        return $this->model->get();
    }
    function new(){
        return $this->model->new(get_post(['title_book', 'image', 'print_date', 'description', 'active']));
    }
}