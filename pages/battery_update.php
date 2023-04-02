<?php session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;

include('../dist/includes/dbcon.php');
	$veh_registration = $_POST['veh_registration'];
	$Date = $_POST['Date'];
	$battery_no = $_POST['battery_no'];
	$Make = $_POST['Make'];	
	$Size = $_POST['Size'];
	$Speedometer_reading = $_POST['Speedometer_reading'];
	$Comment = $_POST['Comment'];
	
	mysqli_query($con,"update battery set veh_registration='$veh_registration','Date='$Date',battery_no='$battery_no',Make='$Make',Size='$Size',Speedometer_reading='$Speedometer_reading',Comment='$Comment' where id='$id'")or die(mysqli_error());
	
	echo "<script type='text/javascript'>alert('Successfully updated Battery details!');</script>";
	echo "<script>document.location='battery.php'</script>";  
	$date = date("d-m-Y H:i:s");
 $_SESSION['id']=$id;	
	  $_SESSION['name']=$name;		
	   $id=$row['user_id'];
           $_SESSION['branch']=$row['branch_id'];
		    $_SESSION['name']=$row['name'];

		$remarks="has Updated battery record in the system at ";  
		mysqli_query($con,"INSERT INTO history_log(user_id,action,date) VALUES('$id','$remarks','$date')")or die(mysqli_error($con));
	
?>