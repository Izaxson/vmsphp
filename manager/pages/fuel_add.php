<?php 

include('../dist/includes/dbcon.php');

	$veh_registration = $_POST['veh_registration'];
	$Date = $_POST['Date'];
	$Fuel = $_POST['Fuel'];
	$Lubricant = $_POST['Lubricant'];
	$Speedometer_reading	= $_POST['Speedometer_reading'];	
	$Filling_station = $_POST['Filling_station'];
	$Litres_fuelled = $_POST['Litres_fuelled'];
	$Amount = $_POST['Amount'];
	


	
	
			
			mysqli_query($con,"INSERT INTO fuel(veh_registration,Date,Fuel,Lubricant,Speedometer_reading,Filling_station,Litres_fuelled,Amount)
				VALUES('$veh_registration','$Date','$Fuel','$Lubricant','$Speedometer_reading','$Filling_station','$Litres_fuelled','$Amount')") or die(mysqli_error($con));

			echo "<script type='text/javascript'>alert('Successfully added  Fuel Record!');</script>";
					  echo "<script>document.location='fuel.php'</script>";  
	
?>
