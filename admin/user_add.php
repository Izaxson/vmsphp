<?php 

include('../dist/includes/dbcon.php');

	$name = $_POST['name'];
	$username = $_POST['username'];
	$password = $_POST['password'];
	$status = $_POST['status'];
	$branch_id = $_POST['branch_id'];

		$pass=md5($password);
		$salt="a1Bz20ydqelm8m1wql";
		$pass=$salt.$pass;
	
			
			mysqli_query($con,"INSERT INTO user(name,username,password,status,branch,Role)
			VALUES('$name','$username','$pass','active','3')")or die(mysqli_error($con));
date_default_timezone_set("Africa/Nairobi"); 

	$date = date("Y-m-d H:i:s");
	$user_id = $_SESSION['id'];	
	    $remarks="has added new  user account records in the system at "; 
	
	mysqli_query($con,"INSERT INTO history_log(user_id,action,date) VALUES('$user_id','$remarks','$date')")or die(mysqli_error($con));





			echo "<script type='text/javascript'>alert('Successfully added new user!');</script>";
					//  echo "<script>document.location='user.php'</script>";  
	
?>