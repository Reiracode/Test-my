<?php
require __DIR__. '/__db__connect.php';
//收件人資料step1: 寫入$_SESSION['recip_ifno'] 
$result = ['success' => true,];

if (!empty($_POST)){
    // var_dump($_POST);
    if(mb_strlen($_POST['recip_name'], 'UTF-8')<2){
        $result['success'] = false;
        $result['err']['recip_name'] = '姓名請大於兩個中文字!';
    }

    if(mb_strlen($_POST['recip_street'], 'UTF-8')< 5){
        $result['success'] = false;
        $result['err']['recip_street'] = '地址過短';
    }

    if(!preg_match('/^09[0-9]{8}$/', $_POST['recip_mobile'])){
        $result['success'] = false;
        $result['err']['recip_mobile'] = '請輸入正確手機格式!';
    }   

    if(filter_var($_POST['recip_mail'], FILTER_VALIDATE_EMAIL) === false){
        $result['success'] = false;
        $result['err']['recip_mail'] = '請輸入正確email格式';
    }
  

    $_SESSION['recip_ifno'] = [];
    foreach($_POST as $key=>$obj) {
        $_SESSION['recip_ifno'][$key] = $obj;
    }

    $result['recip_ifno'] = $_SESSION['recip_ifno'];

} else {
    $result['success'] = false;
    $result['info'] = '沒有 POST 資料';
};

echo json_encode($result, JSON_UNESCAPED_UNICODE);