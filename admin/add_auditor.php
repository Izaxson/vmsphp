<?php session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;

include('../dist/includes/dbcon.php');
	//$id = $_POST['id'];
	
	$username =$_POST['username'];
	//$branch_id = $_POST['branch_id'];
	
	
	mysqli_query($con,"update user set  Role='1' where username='$username'")or die(mysqli_error($con));
	date_default_timezone_set("Africa/Nairobi"); 
	$date = date("Y-m-d H:i:s");
	$user_id = $_SESSION['id'];	
	    $remarks="has added  new Auditor  account  in the system at "; 
	
	mysqli_query($con,"INSERT INTO history_log(user_id,action,date) VALUES('$user_id','$remarks','$date')")or die(mysqli_error($con));
	echo "<script type='text/javascript'>alert('Successfully updated user details!');</script>";
	echo "<script>document.location='auditor.php'</script>";  

	
?>