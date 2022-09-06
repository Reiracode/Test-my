<?php
header('Content-type: application/json');
header('Set-Cookie: cross-site-cookie=name; SameSite=None; Secure');
require __DIR__. '/__db__connect.php';

if(!isset($_GET["id"])){
    $querystring = "1=1";
}else{
    $q_id = (int)$_GET["id"];
    $querystring = "`listno` = $q_id";
}


// $sql = "SELECT * FROM `shop_itemlist` ";
$sql = "SELECT a.*, max(img_no) as imgno  FROM `shop_itemlist` as a, `shop_itemimg` as b where a.id = b.id  GROUP BY  b.id" ;

$rs = $mysqli->query($sql);

$statistic['success'] = "true";

while ($result = $rs->fetch_assoc())
{
    $statistic['items'][] = $result;
    // $statistic['user']['items'] = $result;
}


echo json_encode($statistic, JSON_UNESCAPED_UNICODE);

