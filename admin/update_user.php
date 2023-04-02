<?php session_start();
include('dbcon.php');

 if (isset($_POST['update']))
 { 
	 $id = $_POST['user_id'];
	 $name = $_POST['name'];
	 $username = $_POST['username'];
	 $password = $_POST['password'];
	 $status = $_POST['status'];
	
	 
	 if($password=="")
	 {
		 
	 mysqli_query($con,"UPDATE user SET username='$username', name = '$name', status = '$status' where user_id='$id'")
	 or die(mysqli_error($con)); 
	 }
	 
	 
	 
	 
	 date_default_timezone_set("Africa/Nairobi"); 
	$date = date("Y-m-d H:i:s");
	$user_id = $_SESSION['id'];	
	    $remarks="has updated user account records in the system at "; 
	
	mysqli_query($con,"INSERT INTO history_log(user_id,action,date) VALUES('$user_id','$remarks','$date')")or die(mysqli_error($con));
		echo "<script type='text/javascript'>alert('Successfully updated user details!');</script>";
		echo "<script>document.location='user.php'</script>";
	
} 

