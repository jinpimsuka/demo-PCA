<?php
include "./db.php";


if (isset($_SERVER['HTTP_ORIGIN'])) {
	// Decide if the origin in $_SERVER['HTTP_ORIGIN'] is one
	// you want to allow, and if so:
	header('Access-Control-Allow-Origin: *');
	header('Access-Control-Allow-Credentials: true');
	header('Access-Control-Max-Age: 1000');
}

$res = array('error' => false);
$action='';

if (isset($_GET['action'])) {
	
	$action=$_GET['action'];
}

//// admin login
if($action=='login'){
    $username=$_POST['username'];
    $password=$_POST['password'];
	$sql="Select * from users_fmcrh where username='".$username."' AND password='".$password."' ";
    $result=$conn->query($sql);
    $num=mysqli_num_rows($result);
    if($num > 0){
        $res['message']="Login Successfuly";
    }
    else{
        $res['error']=true;
        $res['message']="Your Login Username or Password is invalid";
    }
}



$conn -> close();
header("Content-type: application/json");
echo json_encode($res);
die();
 ?>