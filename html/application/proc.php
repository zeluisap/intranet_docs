<?php

include "bootstrap.php";
$configSection = getenv('TESTE_CONFIG') ? getenv('TESTE_CONFIG') : "general";
$bootstrap = new Bootstrap($configSection);

$processo = $filename = "";
if (isset($argv[1]) && $argv[1]) {
    $processo = $argv[1];
}

if (isset($argv[2]) && $argv[2]) {
    $filename = $argv[2];
}

try {

    if (empty($processo)) {
        throw new Exception("Falha! Nenhum Processo Informado!");
    }

    include_once 'controllers/DesenvolvimentoController.php';

    $controller = new DesenvolvimentoController(new Zend_Controller_Request_Simple(), new Zend_Controller_Response_Cli());
    if (!method_exists($controller, $processo)) {
        throw new Exception("Falha! Processo Nao Existe!");
    }
    
    $controller->$processo($filename);
    
} catch (Exception $ex) {
    $erro = new stdClass();
    $erro->erro = $ex->getMessage();
    print_r($erro);
    die();
}
