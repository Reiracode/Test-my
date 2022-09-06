<?php

require __DIR__. '/__db__connect.php';

// $login['success'] = (isset($_SESSION['user'])) ? "Y" : "N" ;
//  echo json_encode($login, JSON_UNESCAPED_UNICODE);

// $login = [
//     'success' => "N",
// ];
 

$login['success'] = (isset($_SESSION['user'])) ? $_SESSION['user'] : "N" ;
 echo json_encode( $login['success'], JSON_UNESCAPED_UNICODE);

//  echo $_SESSION["user"];


 
