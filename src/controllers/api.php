<?php
header('Content-type: application/json;charset=utf-8');
loadModel('Api');



$param = "'1 = 1'";
if (count($_GET) > 1) {
    $param = '';
    foreach ($_GET as $key => $value) {
        if ($key  != 'url') {
            $param .= "{$key}='{$value}' AND ";
        }
    }
    $param = rtrim($param, 'AND ');
}

$faixa = new Api();
if(count($faixa->getCep($param))>0){
    echo json_encode($faixa->getCep($param),JSON_UNESCAPED_UNICODE);
}else{
    echo json_encode(["erro"=>"Parametro invalido ou não contém registro"],JSON_UNESCAPED_UNICODE);
}

