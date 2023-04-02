<?php session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;
 include('../dist/includes/dbcon.php');

	$veh_registration = $_POST['veh_registration'];
	$branch = $_POST['branch_id'];
	$make = $_POST['make'];
	$colour = $_POST['colour'];
	$body_type = $_POST['body_type'];
	$engine_no = $_POST['engine_no'];
	$chassis_no = $_POST['chassis_no'];
	$yom = $_POST['yom'];
	$engine_rating = $_POST['engine_rating'];
	$seating_capacity = $_POST['seating_capacity'];
	
	
	
	
	mysqli_query($con,"update vehicle_reg  set veh_registration='$veh_registration',branch='$branch', make='$make',colour='$colour',body_type='$body_type',engine_no='$engine_no',chassis_no='$chassis_no',yom='$yom',engine_rating='$engine_rating',seating_capacity='$seating_capacity',branch='$branch_name' where id='$id'")or die(mysqli_error($con));
	date_default_timezone_set("Africa/Nairobi"); 
	$date = date("Y-m-d H:i:s");
	$user_id = $_SESSION['id'];	
	    $remarks="has updated vehicle record   vehicle   in the system at "; 
		mysqli_query($con,"INSERT INTO history_log(user_id,action,date) VALUES('$user_id','$remarks','$date')")or die(mysqli_error($con));
	echo "<script type='text/javascript'>alert('Successfully Added  Vehicle Particulars!');</script>";
	echo "<script>document.location='vehicles.php'</script>";  

?>