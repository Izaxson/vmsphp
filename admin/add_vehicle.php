
<?php session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;

include 'dbcon.php';
	$veh_registration = $_POST['veh_registration'];
	
	
    {
 mysqli_query($con,"INSERT INTO vehicle_reg(veh_registration)
				VALUES('$veh_registration')") or die(mysqli_error($con));
  
			echo "<script type='text/javascript'>alert('Vehicle added Successfully !');</script>";
			echo "<script>window.location='vehicles.php'</script>"; 
    }
	
                
       	
date_default_timezone_set("Africa/Nairobi"); 
	$date = date("Y-m-d H:i:s");
	$user_id = $_SESSION['id'];	
	    $remarks="has added   vehicle   in the system  "; 
		mysqli_query($con,"INSERT INTO history_log(user_id,action,date) VALUES('$user_id','$remarks','$date')")or die(mysqli_error($con));

?>