<?php 

include('../dist/includes/dbcon.php');

	$veh_registration = $_POST['veh_registration'];
	$Date = $_POST['Date'];
	$make = $_POST['make'];
	$size = $_POST['size'];
	$Speedometer_reading = $_POST['Speedometer_reading'];
	$Position = $_POST['Position'];
	$Comments	 = $_POST['Comments'];	

	
	
			
			mysqli_query($con,"INSERT INTO tyres(veh_registration,Date,make,size,Speedometer_reading,Position,Comments)
				VALUES('$veh_registration','$Date','$make','$size','Speedometer_reading','$Position','$Comments')") or die(mysqli_error($con));

			echo "<script type='text/javascript'>alert('Successfully added  Tyres record!');</script>";
					  echo "<script>document.location='tyres.php'</script>";  
	
?>
