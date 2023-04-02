<?php 
session_start();
include('../dist/includes/dbcon.php');
		
	$veh_registration = $_POST['veh_registration'];
	$Date_in = $_POST['Date_in'];
	$Date_out = $_POST['Date_out'];
	$Speedometer_reading = $_POST['Speedometer_reading'];
	$Garage = $_POST['Garage'];
	$Nature_of_service	= $_POST['Nature_of_service'];	
	//$Next_service = $_POST['Next_service'];
	$Next_service=($Speedometer_reading+5000);
	$branch = $_POST['branch'];
	$driver = $_POST['driver'];
	
	date_default_timezone_set("Africa/Nairobi"); 
	$date = date("Y-m-d H:i:s");
	$user_id = $_SESSION['id'];
	
	{
		{
			$remarks="added a Service record"; 
			mysqli_query($con,"INSERT INTO service(veh_registration,Date_in,Date_out,Speedometer_reading,Garage,Nature_of_service,Next_service,branch,driver)
				VALUES('$veh_registration','$Date_in','$Date_out','$Speedometer_reading','$Garage','$Nature_of_service','$Next_service','$branch','$driver')") or die(mysqli_error($con));
			mysqli_query($con,"INSERT INTO history_log(user_id,action,date) VALUES('$user_id','$remarks','$date')")or die(mysqli_error($con));
			echo "<script type='text/javascript'>alert('Successfully added  Service Record!');</script>";
					echo "<script>document.location='service.php'</script>";  
		}
	}?>
