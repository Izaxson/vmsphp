<?php 
include 'dbcon.php';
	session_start();
	session_destroy();
	$user_id = $_SESSION['id'];	
	
	date_default_timezone_set("Africa/Nairobi"); 
	$date = date("Y-m-d H:i:s");
	    $remarks="has logged  out the system at "; 
	
	mysqli_query($con,"INSERT INTO history_log(user_id,action,date) VALUES('$user_id','$remarks','$date')")or die(mysqli_error($con));
?>
<script>
	window.location = 'index.php';
</script>