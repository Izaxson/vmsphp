<?php 
session_start();
include('../dist/includes/dbcon.php');

	$veh_registration = $_POST['veh_registration'];
	$Date = $_POST['Date'];
	$Tool_name = $_POST['Tool_name'];
	$Driver = $_POST['Driver'];	
	$Comments = $_POST['Comments'];
	$branch = $_POST['branch'];
	
		date_default_timezone_set("Africa/Nairobi"); 
	$date = date("Y-m-d H:i:s");
	$user_id = $_SESSION['id'];	
			
{			{			
			$remarks="has Added tool record in the system at "; 
			mysqli_query($con,"INSERT INTO tools(veh_registration,Date,Tool_name,Driver,Comments,branch)
				VALUES('$veh_registration','$Date','$Tool_name','$Driver','$Comments','$branch')")  or die(mysqli_error($con));
		mysqli_query($con,"INSERT INTO history_log(user_id,action,date) VALUES('$user_id','$remarks','$date')")or die(mysqli_error($con));
			echo "<script type='text/javascript'>alert('Successfully added  Tools record!');</script>";
				 echo "<script>document.location='tools.php'</script>";  
					  			  
	
			}
}?>
