<?php 
session_start();
include('../dist/includes/dbcon.php');
	
	$veh_registration = $_POST['veh_registration'];
	$Date = $_POST['Date'];
	$Fuel = $_POST['Fuel'];
	
	$Speedometer_reading	= $_POST['Speedometer_reading'];	
	$Filling_station = $_POST['Filling_station'];
	$Litres_fuelled = $_POST['Litres_fuelled'];
	$Amount = $_POST['Amount'];
	$branch = $_POST['branch'];
	$driver = $_POST['driver'];
	
	date_default_timezone_set("Africa/Nairobi"); 
	$date = date("Y-m-d H:i:s");
	$user_id = $_SESSION['id'];

	{
	
	
		{	
				$remarks="added a Fuel record";
				mysqli_query($con,"INSERT INTO fuel(veh_registration,Date,Fuel,Speedometer_reading,Filling_station,Litres_fuelled,Amount,branch,driver)
				VALUES('$veh_registration','$Date','$Fuel','$Speedometer_reading','$Filling_station','$Litres_fuelled','$Amount','$branch','$driver')") or die(mysqli_error($con));
				mysqli_query($con,"INSERT INTO history_log(user_id,action,date) VALUES('$user_id','$remarks','$date')")or die(mysqli_error($con));
			
			echo "<script type='text/javascript'>alert('Successfully added  Fuel Record!');</script>";
			echo "<script>document.location='fuel.php'</script>";  
					  
	
	  
 
		}	
	
	}?>
