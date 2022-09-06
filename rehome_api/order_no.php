<?php
// header('Content-type: application/json');
require __DIR__. '/__db__connect.php';

    $mid = $_SESSION["user"]['userno'];   
    // echo $mid ;
    $sql = "SELECT * FROM `order_no` WHERE `userno` = $mid order by datatime ";
    $rs = $mysqli->query($sql);
    while ($result = $rs->fetch_assoc())
    {
        $statistic = $result;
    }

    $list = $statistic["id"];
    $sql2 = "SELECT * FROM `order_list` WHERE `id` = $list ";
    $rs2 = $mysqli->query($sql2);
    while ($result2 = $rs2->fetch_assoc())
    {
        $statistic["list"][] = $result2;
    }
echo json_encode($statistic, JSON_UNESCAPED_UNICODE);
