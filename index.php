<?php

require_once(dirname(__FILE__) . '/src/config/config.php');



$uri = 
    parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);

//echo $uri;
$uri = explode("/", $uri);
$uri = $uri[2];
$uri = str_replace(".php", "", $uri);
$uri = rtrim($uri, '/');


if($uri === '/' || $uri === '' || $uri === '/index.php'){
    //echo "<script>window.location.replace('https://documenter.getpostman.com/view/18645491/UVJhCu3Q')</script>";
}

if(file_exists(CONTROLLER_PATH . "/{$uri}.php")){
    require_once(CONTROLLER_PATH . "/{$uri}.php");
}