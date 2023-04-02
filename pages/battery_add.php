<?php 
session_start();
include('../dist/includes/dbcon.php');

	$veh_registration = $_POST['veh_registration'];
	$Date = $_POST['Date'];
	$battery_no = $_POST['battery_no'];
	$Make = $_POST['Make'];	
	$Size = $_POST['Size'];
	$Speedometer_reading = $_POST['Speedometer_reading'];
	$branch = $_POST['branch'];

	$Comment = $_POST['Comment'];
	
	date_default_timezone_set("Africa/Nairobi"); 
	$date = date("Y-m-d H:i:s");
	$user_id = $_SESSION['id'];	

	{		{
		$remarks="has Added battery record in the system at "; 
		mysqli_query($con,"INSERT INTO battery(veh_registration,Date,battery_no,Make,Size,Speedometer_reading,branch,Comment)
				VALUES('$veh_registration','$Date','$battery_no','$Make','$Size','$Speedometer_reading','$branch','$Comment')")    or die(mysqli_error($con));
		mysqli_query($con,"INSERT INTO history_log(user_id,action,date) VALUES('$user_id','$remarks','$date')")or die(mysqli_error($con));
						echo "<script type='text/javascript'>alert('Successfully added  battery record!');</script>";
					echo "<script>document.location='battery.php'</script>";  
					  
	}
	}?>
