<?php
header('Access-Control-Allow-Origin: *');
header("content-type:text/html;charset=utf8");
$con = mysqli_connect("localhost","root","root","test");
mysqli_query($con,"set names uft8");
$id = $_POST["id"];
$sql = "select * from goods where id=$id";
$res = mysqli_query($con,$sql);
$row = mysqli_fetch_assoc($res);
if($row){
    $arr = [
        "status" => 200,
        "msg" => "yes",
        "data" => $row
    ];
}else{
    $arr = [
        "status" => 404,
        "msg" => "data is not found"
    ];
}
echo json_encode($arr);
