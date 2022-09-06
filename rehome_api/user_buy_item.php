<?php
// header('Content-type: application/json');
require __DIR__. '/__db__connect.php';
//project_cloversky_member.html
// $mid =$_POST['user'];
if(isset($_SESSION["user"])) {
    $mid = $_SESSION["user"]['userno'];  
    // $sql = "SELECT a.*, b.* FROM `order_list` as a ,`order_no` as b where a.id = b.id and a.userno= $mid order by a.id desc ";
        $sql = "SELECT a.*, b.* FROM `order_list` as a ,`order_no` as b where a.id = b.id  order by a.id desc ";
    //  print_r($sql);
    $rs = $mysqli->query($sql);
    while ($result = $rs->fetch_assoc())
    {
        $statistic[] = $result;
    }
}
echo json_encode($statistic, JSON_UNESCAPED_UNICODE);

