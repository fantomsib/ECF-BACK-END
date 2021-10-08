<?php

spl_autoload_register(function ($class_name) {

    if(strpos($class_name, 'CI_') !== FALSE){
        $class_name = substr($class_name, 3);
        $class_name = ucfirst($class_name);
        include DIR . '/controllers/' . $class_name . '.php';
    }else{
        if(file_exists(DIR.'/models/'.$class_name.'.php')){
            include DIR . '/models/'.$class_name.'.php';
        }
    }
});


$URL = substr($_SERVER['REQUEST_URI'], 1);
$url_split = explode('/', $URL);

$controller = $url_split[0];

if(!$controller){
    $controller = 'index';
}
if(sizeof($url_split) === 1){
$method = 'index';
}else{
$method = $url_split[1];
}

require 'controllers/'.$controller.'.php';
$obj = 'CI_'.$controller;
$obj = new $obj;

//ob_start();
//   );
//    define(' ', ob_get_contents());
//ob_end_clean();
$res = call_user_func([$obj, $method]);
header("Content-Type: application/json; charset=utf-8");
echo json_encode($res, 256);


