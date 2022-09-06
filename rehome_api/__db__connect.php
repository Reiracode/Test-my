<?php
    $mysqli = new mysqli('localhost','root', '', 'reirasys');
    $mysqli->query("SET NAMES utf8");
    $SERVER_NAME = $_SERVER['SERVER_NAME'];//127.0.0.1

    //react reiraAapp
    if ($SERVER_NAME == "localhost"){ 
        $port = ":3000";
    }

    //webpack_rehome use
    // if ($SERVER_NAME == "localhost"){
    //     // webpack_home
    //     $port = ":8081";
    //     //Test-my js
    //     //  $port = ":8080";
    // }else {
    //     // react
    //     $port = ":3000";
    // }

    // if ($SERVER_NAME == "127.0.0.1"){
    //     // sass 
    //     $port = ":8081";
    // }else {
    //     // react
    //     $port = ":3000";
    // }
    header("Access-Control-Allow-Origin: http://" .$SERVER_NAME.$port);
    header("Access-Control-Allow-Credentials: true");   
    header("Access-Control-Allow-Headers: Origin, Methods, Content-Type, Accept");
 
// unset($_SESSION['user']);
    if(!isset($_SESSION)){
        session_start();
    }

