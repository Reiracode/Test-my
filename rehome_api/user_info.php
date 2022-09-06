<?php
// header('Content-type: application/json');
require __DIR__. '/__db__connect.php';

// $mid =$_POST['user'];
// if(isset($_SESSION["user"])) {
    
// }

echo json_encode($_SESSION['recip_ifno'], JSON_UNESCAPED_UNICODE);
