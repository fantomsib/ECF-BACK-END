<?php

function show($a){
    echo '<pre>';
    var_dump($a);
    echo '</pre>';
}

function get_result($query){
    global $db;
    $sql =  $db->query($query);
    $res = [];
    while($row = $sql->fetch_assoc()){
        $res[] = $row; // array_push($res, $row)
    }
    return $res;
}

function escape($data){
    global $db;

    if(!is_array($data)){
       return $db->real_escape_string($data);
    }
    foreach($data as $key=>$value){
        $data[$key] = $db->real_escape_string($value);
    }
    return $data;
}

function get_post($fields){
    $res = [];
    foreach ($_POST as $key=>$value){
        if(in_array($key, $fields)){
            $res[$key] = $value;
        }
    }
    return $res;
}

$_err = [];
function err($msg){
    header("Content-Type: application/json; charset=utf-8");
    echo json_encode(['status' => false, 'error' => $msg], 256);
    exit;
}