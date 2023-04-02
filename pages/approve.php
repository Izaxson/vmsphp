<?php session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;

		$con = mysqli_connect("localhost","root","","vehiclelog");

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  };

	$sql=("update trips set Application_status='Approved' where id='$_GET['id']");
	mysqli_query($con,$sql "update trips set Application_status='Approved' where id='$_GET['id']")or die(mysqli_error());
	
	header("refresh:2; url=new.php");
	
	


	
?>