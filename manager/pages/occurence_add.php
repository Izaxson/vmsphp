<?php 
session_start();
include('../dist/includes/dbcon.php');

	$veh_registration = $_POST['veh_registration'];
	$Date = $_POST['Date'];
	$Occurence = $_POST['Occurence'];
	$driver = $_POST['driver'];
	$branch = $_POST['branch'];
	
	
date_default_timezone_set("Africa/Nairobi"); 
	$date = date("Y-m-d H:i:s");
	$user_id = $_SESSION['id'];	

	{
	
	{	$remarks="has Added  occurence record  in the system at "; 
			mysqli_query($con,"INSERT INTO occurence(veh_registration,Date,Occurence,driver,branch)
				VALUES('$veh_registration','$Date','$Occurence','$driver','$branch')") or die(mysqli_error($con));
			mysqli_query($con,"INSERT INTO history_log(user_id,action,date) VALUES('$user_id','$remarks','$date')")or die(mysqli_error($con));
			echo "<script type='text/javascript'>alert('Successfully added  Occurence Record!');</script>";
					 echo "<script>document.location='occurence.php'</script>";  
	}
	}
?>