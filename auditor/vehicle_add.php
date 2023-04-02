<?php 

include('../dist/includes/dbcon.php');

	$veh_registration = $_POST['veh_registration'];
	$Make = $_POST['Make'];
	$Colour = $_POST['Colour'];
	$body_type = $_POST['body_type'];
	$Engine_no = $_POST['Engine_no'];
	$Chassis_no	= $_POST['Chassis_no'];	
	$year_of_make = $_POST['year_of_make'];
	$Ratings = $_POST['Ratings'];
	$branch = $_POST['branch'];

	
	
			
			mysqli_query($con,"INSERT INTO vehicle_reg(veh_registration,Make,Colour,body_type,Engine_no,Chassis_no,year_of_make,Ratings,branch)
				VALUES('$veh_registration','$Make','$Colour','$body_type','$Engine_no','$Chassis_no','$year_of_make','$Ratings','$branch')") or die(mysqli_error($con));

			echo "<script type='text/javascript'>alert('Successfully added  Vehicle Particulars!');</script>";
					  echo "<script>document.location='vehicles.php'</script>";  
	
?>
