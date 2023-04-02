<?php session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;

include('../dist/includes/dbcon.php');
	$id= $_POST['id'];
	$veh_registration = $_POST['veh_registration'];
	$Date = $_POST['Date'];
	$first_reading = $_POST['first_reading'];
	$Second_reading = $_POST['Second_reading'];
	$distance=($Second_reading-$first_reading);
	$time_out = $_POST['time_out'];
	$time_in = $_POST['time_in'];
	$Purpose_of_journey = $_POST['Purpose_of_journey'];
	
	
		mysqli_query($con,"update trips set veh_registration='$veh_registration',Date='$Date',first_reading='$first_reading',Second_reading='$Second_reading',distance='$distance',time_out='$time_out',time_in='$time_in',Purpose_of_journey='$Purpose_of_journey' where id='$id'  ")or die(mysqli_error($con));
		//mysqli_query($con,"INSERT INTO trips(veh_registration,Date,first_reading,Second_reading,distance,time_out,time_in,Purpose_of_journey,branch,driver,shift) 
				//VALUES('$veh_registration','$Date','$first_reading','$Second_reading','$distance','$time_out','$time_in','$Purpose_of_journey','$branch','$driver','$shift')") or die(mysqli_error($con));
	
	echo "<script type='text/javascript'>alert('Successfully updated trip record!');</script>";
echo "<script>document.location='trip_editor.php'</script>";  
	
	
	
	
	
	
?>;