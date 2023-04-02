<?php 

include('../dist/includes/dbcon.php');

	$veh_registration = $_POST['veh_registration'];
	$Date = $_POST['Date'];
	$Tool_name = $_POST['Tool_name'];
	$Driver = $_POST['Driver'];	
	$Comments = $_POST['Comments'];
	
			
			mysqli_query($con,"INSERT INTO tools(veh_registration,Date,Tool_name,Driver,Comments)
				VALUES('$veh_registration','$Date','$Tool_name','$Driver','$Comments')")                                     or die(mysqli_error($con));

			echo "<script type='text/javascript'>alert('Successfully added  Tools record!');</script>";
					  echo "<script>document.location='tools.php'</script>";  
	
?>
