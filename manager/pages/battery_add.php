<?php 

include('../dist/includes/dbcon.php');

	$veh_registration = $_POST['veh_registration'];
	$Date = $_POST['Date'];
	$battery_no = $_POST['battery_no'];
	$Make = $_POST['Make'];	
	$Size = $_POST['Size'];
	$Speedometer_reading = $_POST['Speedometer_reading'];
	$Comment = $_POST['Comment'];
			
			mysqli_query($con,"INSERT INTO battery(veh_registration,Date,battery_no,Make,Size,Speedometer_reading, Comment)
				VALUES('$veh_registration','$Date','$battery_no','$Make','$Size','$Speedometer_reading','$Comment')")                                     or die(mysqli_error($con));

			echo "<script type='text/javascript'>alert('Successfully added  battery record!');</script>";
					  echo "<script>document.location='battery.php'</script>";  
	
?>
