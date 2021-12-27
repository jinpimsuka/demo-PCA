<?php
include "./db.php";


if (isset($_SERVER['HTTP_ORIGIN'])) {
	// Decide if the origin in $_SERVER['HTTP_ORIGIN'] is one
	// you want to allow, and if so:
	header('Access-Control-Allow-Origin: *');
	header('Access-Control-Allow-Credentials: true');
	header('Access-Control-Max-Age: 1000');
}

if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
	if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD'])) {
			// may also be using PUT, PATCH, HEAD etc
			header("Access-Control-Allow-Methods: POST, GET, OPTIONS, PUT, DELETE");
	}

	if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS'])) {
			header("Access-Control-Allow-Headers: Accept, Content-Type, Content-Length, Accept-Encoding, X-CSRF-Token, Authorization");
	}
	exit(0);
}

$res = array('error' => false);
$action='';

if (isset($_GET['action'])) {
	
	$action=$_GET['action'];
}


//// input data (user)
if($action=='addusers'){

	$CID=$_POST['CID'];
	$HN=$_POST['HN'];
	$Prename=$_POST['Prename'];
	$f_name=$_POST['f_name'];
	$l_name=$_POST['l_name'];
	$HouseNo=$_POST['HouseNo'];
	$Moo=$_POST['Moo'];
	$Village=$_POST['Village'];
	$PCC=$_POST['PCC'];
	$Amphur=$_POST['Amphur'];
	$TypeArea=$_POST['TypeArea'];
	$Tel=$_POST['Tel'];
	$birhtdate=$_POST['birhtdate'];
	$status=$_POST['status'];
	$deaddate=$_POST['deaddate'];
	 
	//$sql="INSERT INTO `usersdata`(`id`, `name`) VALUES(NULL,'$name')";
	//$sql="INSERT INTO `person`(`ID_NUM`, `CID`, `HN`, `Prename`, `f_name`, `l_name`, `HouseNo`, `Moo`, `Village`, `PCC`, `Amphur`, `TypeArea`, `Tel`, `birhtdate`, `status`, `deaddate`) 
	//		VALUES (NULL,'$CID','$HN','$Prename','$f_name','$l_name','$HouseNo','$Moo','$Village','$PCC','$Amphur','$TypeArea','$Tel','$birhtdate','$status','$deaddate')";
	$sql="INSERT INTO `person`(`ID_NUM`, `CID`, `HN`, `Prename`, `f_name`, `l_name`, `HouseNo`, `Moo`, `Village`, `PCC`, `Amphur`, `TypeArea`, `Tel`, `birhtdate`, `status`, `deaddate`) 
			VALUES (NULL,'$CID','$HN', '$Prename', '$f_name', '$l_name', '$HouseNo', '$Moo', '$Village', '$PCC', '$Amphur', '$TypeArea', '$Tel', '$birhtdate', '$status','$deaddate')";
	
	$result=$conn->query($sql);
	if($result===true){
		$res['error']=false;
        $res['message']="User Added Successfully";
	}else{
		$res['error']=true;
        $res['message']="Somthing Went Wrong";
	}

}



$conn -> close();
header("Content-type: application/json");
echo json_encode($res);
die();
 ?>