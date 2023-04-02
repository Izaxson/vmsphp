<?php 
include 'dbcon.php';
	$username = $_POST['username'];
	
	
	
	
	
	
		 mysqli_query($con,"UPDATE user SET Role='2' WHERE  username='$username'")
	 or die(mysqli_error($con)); 

		echo "<script type='text/javascript'>alert('Successfully updated Supervisor details!');</script>";
		echo "<script>document.location='supervisor.php'</script>";
	
	date_default_timezone_set("Africa/Nairobi"); 
	$date = date("Y-m-d H:i:s");
	$user_id = $_SESSION['id'];	
	    $remarks="has added  supervisor account   in the system at "; 
		mysqli_query($con,"INSERT INTO history_log(user_id,action,date) VALUES('$user_id','$remarks','$date')")or die(mysqli_error($con));


?>