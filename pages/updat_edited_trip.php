<?php session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;

include('../dist/includes/dbcon.php');
	$id = $_POST['id'];

	$Second_reading = $_POST['Second_reading'];
	
	$time_in = $_POST['time_in'];


			
			
	mysqli_query($con,"update trips set Second_reading='$Second_reading',time_in='$time_in'")or die(mysqli_error($con));
	
	echo "<script type='text/javascript'>alert('Successfully updated Trip Record!');</script>";
	echo "<script>document.location='edit_trip.php'</script>";  

	
?>
