<?php 
session_start();
include('../dist/includes/dbcon.php');
	
	$veh_registration = $_POST['veh_registration'];
	$Date = $_POST['Date'];
	$first_reading = $_POST['first_reading'];
	$Second_reading = $_POST['Second_reading'];
	$distance = $_POST['distance'];
	$time_out = $_POST['time_out'];
	$time_in = $_POST['time_in'];
	$Purpose_of_journey = $_POST['Purpose_of_journey'];
	
	
	

	
	$query2=mysqli_query($con,"select * from trips where id='$id'")or die(mysqli_error($con));
		$count=mysqli_num_rows($query2);
		$row=mysqli_fetch_array($query2);
			$id=$row['trip_id'];

		if ($count>0)
		{
			mysqli_query($con,"update trips set ',Application_Status='pending' where id='$id'")or die(mysqli_error());
	
			echo "<script type='text/javascript'>alert('Application submitted for approval!');</script>";
			echo "<script>document.location='trip.php'</script>";  
		}
		else
		{	
			
			mysqli_query($con,"INSERT INTO trips(veh_registration,Date,first_reading,Second_reading,distance,time_out,time_in,Purpose_of_journey) 
				VALUES('$veh_registration','$Date','$first_reading','$Second_reading','distance','$time_out','$time_in,'$Purpose_of_journey")or die(mysqli_error($con));

			$id=mysqli_insert_id($con);
			//$_SESSION['cid']=$id;
			echo "<script type='text/javascript'>alert('Successfully added new Trip ! Waiting for admin approval.');</script>";
			echo "<script>document.location='trip.php'</script>";  
		}
?>