<?php 

include('../dist/includes/dbcon.php');

	$veh_registration = $_POST['veh_registration'];
	$Date_in = $_POST['Date_in'];
	$Date_out = $_POST['Date_out'];
	$Speedometer_reading = $_POST['Speedometer_reading'];
	$Garage = $_POST['Garage'];
	$Nature_of_service	= $_POST['Nature_of_service'];	
	$Next_service = $_POST['Next_service'];
	$branch = $_POST['branch'];


	
	
			
			mysqli_query($con,"INSERT INTO service(veh_registration,Date_in,Date_out,Speedometer_reading,Garage,Nature_of_service,Next_service,branch)
				VALUES('$veh_registration','$Date_in','$Date_out','$Speedometer_reading','$Garage','$Nature_of_service','$Next_service','$branch')") or die(mysqli_error($con));

			echo "<script type='text/javascript'>alert('Successfully added  Service Record!');</script>";
					  echo "<script>document.location='service.php'</script>";  
	
?>
