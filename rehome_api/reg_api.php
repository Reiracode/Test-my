<?php
require __DIR__. '/__db__connect.php';
// $method = $_SERVER['REQUEST_METHOD'];
date_default_timezone_set("Asia/Taipei");
// $result = array();
 
/*************************
    Form Error Checking
*************************/
if (!isset($_POST['username']) || empty($_POST['username'])){   
    //  $result['error'] = 'Please Enter Username';
    $errors[]= 'Please Enter Username';
}
if (!isset($_POST['userno']) || empty($_POST['userno'])){   
    //  $result['error']  = 'Please Enter Userno';
    $errors[]= 'Please Enter Userno';
}
if (!isset($_POST['email']) || empty($_POST['email'])){   
    //  $result['error']  = 'Please Enter email';
    $errors[]= 'Please Enter email';
}   

if (empty($errors)) {
// if (empty($result['error'])) {
    $Userno = $_POST['userno'];
    $prep_stmt = "SELECT `userno` FROM sysuserss WHERE userno = ? LIMIT 1";
    $stmt = $mysqli->prepare($prep_stmt);

    if ($stmt) {
        $stmt->bind_param('s', $Userno);
        $stmt->execute();
        $stmt->store_result();

        if ($stmt->num_rows == 1) {
            $errors[] ="That userno already exists";
        }
        $stmt->close();
    } else {
        $errors[] ="Database error";
    }

    $Email = $_POST['email'];
    $prep_stmt = "SELECT `email` FROM sysuserss WHERE email = ? LIMIT 1";
    $stmt = $mysqli->prepare($prep_stmt);
    if ($stmt) {
        $stmt->bind_param('s', $Email);
        $stmt->execute();
        $stmt->store_result();

        if ($stmt->num_rows == 1) {
            $errors[] ="That Email already exists";
        }
        $stmt->close();
    } else {
        $errors[] ="Database error";
    }

    if (empty($errors)) {
    // if (empty($result['error'])) {
        $stmt = $mysqli ->prepare("INSERT INTO `sysuserss` (`userno`, `username`, `password`, `depno`, `email`, `regdate`)
        VALUES (?,?,?,?,?,?)") ;
        
        $stmt->bind_param("ssssss", $userno, $username, $password, $depno, $email,$insertdate);
        $userno = $_POST['userno'];
        $username = $_POST['username'];
        $password =  sha1($_POST['password']);
        $depno =  $_POST['depno'];
        $email = $_POST['email'];
        $insertdate = date("Y-m-d H:i:s");

        // プリペアドステートメントの実行
        if ($stmt->execute()) {
            $result['success'] = true; 
            // printf("%d row inserted.\n", $stmt->affected_rows);
            $affected_rows =  $stmt->affected_rows;

            if($affected_rows == 1){
                $result['info'] = '完成註冊，請於左方登入頁面進行登入';
                $result['userno'] = $userno; 
                echo json_encode($result, JSON_UNESCAPED_UNICODE);
            }elseif($affected_rows == -1){
                // $result['success'] = false;
                $errors[] ="新增資料失敗";
                //  $result['error'] = 'E新增資料失敗';
            }
            // ステートメントの終了
            $stmt->close();
            // 接続の終了
            $mysqli->close();
        } else {
            // echo $query->error;
        }
    } 
    else {
        //  echo json_encode($result, JSON_UNESCAPED_UNICODE);
        echo json_encode($errors, JSON_UNESCAPED_UNICODE);
       
    }
} else {
    //  $result['error'] = '資料有誤XXX';
    // echo json_encode($errors, JSON_UNESCAPED_UNICODE);
}   



