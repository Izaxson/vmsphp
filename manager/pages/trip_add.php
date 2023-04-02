<?php 
session_start();
include('../dist/includes/dbcon.php');
	$id='';
	$veh_registration = $_POST['veh_registration'];
	$Date = $_POST['Date'];
	$first_reading = $_POST['first_reading'];
	$Second_reading = $_POST['Second_reading'];
	$distance=($Second_reading-$first_reading);
	$time_out = $_POST['time_out'];
	$time_in = $_POST['time_in'];
	$Purpose_of_journey = $_POST['Purpose_of_journey'];
	$branch = $_POST['branch'];
	$driver = $_POST['driver'];
   

	date_default_timezone_set("Africa/Nairobi"); 
	$date = date("Y-m-d H:i:s");
	$user_id = $_SESSION['id'];

	{

		{	
			$remarks="added a Trip record"; 
			mysqli_query($con,"INSERT INTO trips(veh_registration,Date,first_reading,Second_reading,distance,time_out,time_in,Purpose_of_journey,branch,driver) 
				VALUES('$veh_registration','$Date','$first_reading','$Second_reading','$distance','$time_out','$time_in','$Purpose_of_journey','$branch','$driver')") or die(mysqli_error($con));
			mysqli_query($con,"INSERT INTO history_log(user_id,action,date) VALUES('$user_id','$remarks','$date')")or die(mysqli_error($con));
		
			echo "<script type='text/javascript'>alert('Successfully added new Trip ! Waiting for Supervisor approval.');</script>";
			echo "<script>document.location='trip.php'</script>";  
		}
	
				
		
	}?>