<?php 
session_start();
include 'dbcon.php';
	$username = $_POST['username'];
	$password = $_POST['password'];
	$name = $_POST['name'];
	$status = $_POST['status'];
	$branch_id = $_POST['branch_id'];
	
	$pass1=md5($password);
	$salt="a1Bz20ydqelm8m1wql";
	$pass1=$salt.$pass1;
	
	date_default_timezone_set("Africa/Nairobi"); 
	$date = date("Y-m-d H:i:s");
	$user_id = $_SESSION['id'];
	
	$remarks="has Added new user record in the system at "; 
		mysqli_query($con,"INSERT INTO user
		(username,password,name,status,branch_id,Role) 
		VALUES
		('$username','$pass1','$name','$status', '$branch_id','3')")
		or die(mysqli_error($con));  
		mysqli_query($con,"INSERT INTO history_log(user_id,action,date) VALUES('$user_id','$remarks','$date')")or die(mysqli_error($con));
		
		
		
		
			echo "<script type='text/javascript'>alert('Data Successfully Saved!');</script>";
			echo "<script>window.location='user.php'</script>";   
	


?>