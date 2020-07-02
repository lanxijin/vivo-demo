<?php
header('Access-Control-Allow-Origin: *');
header("content-type:text/html;charset=utf8");
$con = mysqli_connect("localhost","root","root","test");
mysqli_query($con,"set names utf8");

$username = $_POST["username"];
$password = $_POST["password"];
$sql = "select * from user where username='$username'";
$res = mysqli_query($con,$sql);
$row = mysqli_fetch_assoc($res);
if($row){
    $arr = [
        "msg" => "用户名被占用",
        "status" => 3
    ];
}else{
    $sql = "insert into user (username,password) values('$username','$password')";
    $res = mysqli_query($con,$sql);
    if($res){
        $arr = [
            "msg" => "注册成功",
            "status" => 200
        ];
    }else{
        $arr = [
            "msg" => "注册失败",
            "status" => 4
        ];
    }
}
echo json_encode($arr);