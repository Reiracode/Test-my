<?php
    require __DIR__. '/__db__connect.php';
    // header('Content-type: application/json');
    $method = $_SERVER['REQUEST_METHOD']; 
    // -----  login  
    // isset :檢查user是否已登入系統
    // session_start():存取session
    //   -----  logout 
    // unset($_SESSION['user']): 清除session中的顧客資料
    // sha1 加密？

    if(isset($_POST['userno'])){   
        // print_r("---['userno'] key--". $_POST['userno']."\n"); 
        $sql = sprintf("SELECT  `userno` ,`boss_id` ,`depno` 
            FROM `sysuser` WHERE  `userno`='%s' AND `password`='%s'",
            $mysqli->escape_string($_POST['userno']),
            sha1($_POST['password'])
        );

        // sha1  db varchar255
        // printf("Connect : %s\n", $sql);
        $rs = $mysqli->query($sql);

        if($rs->num_rows==1){
            $row = $rs->fetch_assoc();

            $_SESSION['user'] = $row;
            $_SESSION['user']['method'] =$method;
            $_SESSION['user']['IsLogin'] = true;
            $_SESSION['user']['LoginMessage'] = "登入成功,將回到商品列表頁面";
            echo json_encode($_SESSION['user'], JSON_UNESCAPED_UNICODE);
        }else{
            $_SESSION['user'] = "";
            $result['error'] = "usersssss not found";
            $result['IsLogin'] = false;
            $result['LoginMessage'] = "帳號密碼錯誤";
            echo json_encode($result, JSON_UNESCAPED_UNICODE);
        }

    }
