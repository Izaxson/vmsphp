<?php
include('dbcon.php');

 if (isset($_POST['update']))
 { 
	 
	 $Veh_registration = $_POST['Veh_registration'];
	 
	
	 
	 mysqli_query($con,"UPDATE vehicle_reg SET veh_registration='$veh_registration', Make = '$Make', body_type = '$body_type', Engine_no = '$Engine_no' Chassis_no = '$Chassis_no' year_of_make = '$year_of_make' Ratings = '$Ratings' Seating_Capacity = '$Seating_Capacity'  where id='$id'")
	 or die(mysqli_error($con)); 
date_default_timezone_set("Africa/Nairobi"); 
	$date = date("Y-m-d H:i:s");
	$user_id = $_SESSION['id'];	
	    $remarks="has updated vehicle  records in the system at "; 
	
	mysqli_query($con,"INSERT INTO history_log(user_id,action,date) VALUES('$user_id','$remarks','$date')")or die(mysqli_error($con));
		echo "<script type='text/javascript'>alert('Successfully updated Vehicle details!');</script>";
		echo "<script>document.location='vehicles.php'</script>";
	
} 

