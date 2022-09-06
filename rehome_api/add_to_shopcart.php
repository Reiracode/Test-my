<?php
// header('Content-type: application/json');
require __DIR__. '/__db__connect.php';
//step2.html 送出訂單
// for cloversey website checkout
// db:order_list/order_no
// $result['info'] = 'recip_ifno 已失效';
// $result['newno'] = 訂單編號
    if(isset($_POST['data'])){
        // string
        // $sql_orderno="";
        if(isset($_SESSION['recip_ifno'])){
            $userno = $_SESSION['user']['userno'];
            $recip_ifno= "";
            $recip_key= "";
            foreach($_SESSION['recip_ifno'] as $key=>$obj) {
                $recip_key .= "`".$key."`,";
                $recip_ifno .= "'".$obj."',";
            }

            $sqlid="INSERT INTO order_no (`userno`,$recip_key `datatime`) "
                    ."VALUES ('$userno',$recip_ifno NOW())";  
//  print_r("---sqlid-----".$sqlid."\n" );  
            if ($mysqli->query($sqlid) === TRUE) {
                $order_max_no = $mysqli->insert_id;
                // echo "New record created successfully". "\n" ;
                $result['newno'] = sprintf('%011d', $order_max_no);
            } else {
                $order_max_no= "error";
                // echo "Error: <br>" . $mysqli->error;
                $result['newno'] = "error";
            }
        } else {
            $result['info'] = 'recip_ifno 已失效';
        }
            
        // autoincreamnent_no:order_id
        // $sqlid="INSERT INTO order_no (`userno`,`recip_name`,`recip_street`,`recip_city`,`recip_state`,`recip_mobile`,`recip_mail`,`recip_ps`,`datatime`) "
        // ."VALUES ($userno,$recip_ifno NOW())";  

        //*******string to array:json_decode($_POST['data'], true) ********** 
        //json_decode array(1) {[0]=>array(4) {
        // // table: order_list
        // print_r("----POST['data']:string(97) --". "\n" );
        // var_dump($_POST['data']);
        // print_r("----json_decode,true string to array(POST['data']:-array(1) --". "\n" );
        $post_data = json_decode($_POST['data'], true);

        $list_val="";
        foreach($post_data as $value) {  
            $obj = ($value);
            // print_r("------obj foreach------");
            // var_dump($value);
            $linkname="";
            $linkey="";
            foreach($value as $key=>$listvalue) {
                // print_r("[key]:". $key ."-[value]:".$listvalue. "\n"  );
                $linkname.= "`".$key."`,";
                $linkey .=  "'".$listvalue ."',"; 
            }    
            // print_r("---32linkey-----".$linkey."\n" );    
            $list_val .= " ('" .$order_max_no. "','" .$userno."'," .$linkey.  "NOW()),";    
        }

        $list_val = trim($list_val,",");

        $sql_orderlist= "INSERT INTO order_list (`id`,`userno`, $linkname datatime) "
                        ."VALUES $list_val"; 

        //  print_r("---sql_orderlist-----".$sql_orderlist."\n" );    
        $mysqli->query($sql_orderlist);
        
        if($mysqli->affected_rows > 0){
            $result['success'] = true; 
            $result['info'] = '訂單已建立';
        }else{
            $result['success'] = false; 
            $result['info'] = '訂單未完成，請洽客服人員';
        }

        $user_name = $post_data[0]['name'];
        // echo $user_name . "\n";  

    } else {
        $result['success'] = false;
        $result['info'] = '沒有 POST 資料';
    }


echo json_encode($result, JSON_UNESCAPED_UNICODE);
// echo json_encode($_SESSION['recip_ifno'], JSON_UNESCAPED_UNICODE);
// echo json_encode($_SESSION['user'], JSON_UNESCAPED_UNICODE);
