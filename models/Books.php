<?php


class Books
{
    function get(){
       return get_result("SELECT * FROM books");
    }
    function new($data){
        global $db;
        $data = escape($data);

        $status = $db->query('INSERT INTO `books` SET 
            `title_book` = "'.$data['title_book'].'",
            `image` = "'.$data['image'].'",
            `print_date` = "'.$data['print_date'].'",
            `description` = "'.$data['description'].'",
            `active` = "'.$data['active'].'"
            ');


        return ['status' => $status, 'error' => $db->error];

    }
}

