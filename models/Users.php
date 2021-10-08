<?php


class Users
{
    function login($email, $password){

        $res = get_result('SELECT id_user, password FROM users WHERE email_user="'.escape($email).'"');

        if(empty($res)){
            return err('User not found');
        }

        $res = $res[0];

        if(!password_verify($password, $res['password'])){
            return err('Email or password not correct');
        }

        $this->create_token($res['id_user']);

    }

    function create_token($id_user){
        global $db;

        $token = md5(rand().time().$id_user);

        $db->query('INSERT INTO users_token SET token="'.$token.'", id_user="'.$id_user.'" date_expired=DATE_ADD(NOW(), INTERVAL 7 DAY)');
        setcookie('token', $token, time()+60*60*24*7);
        return $token;
    }

    function is_auth(){
        $token = $_COOKIE['token'] ?? '';
        $res = get_result('SELECT id_user FROM users_token WHERE token="'.escape($token).'" AND date_expired > NOW()');
        return !empty($res);
    }

    function register($data){
        global $db;
        $data = escape($data);

        $status = $db->query('INSERT INTO `users` SET 
            `email_user` = "'.$data['email_user'].'",
            `name_user` = "'.$data['name_user'].'",
            `surname_user` = "'.$data['surname_user'].'",
            `data_of_birth` = "'.$data['data_of_birth'].'",
            `password` = "'.password_hash($data['password'],PASSWORD_BCRYPT).'"
            `code_postale_user` = "'.$data['code_postale_user'].'"
            `role` = 1
        ');


        return $status;
    }
}
/*
 *
 */