<?php session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;

include('../dist/includes/dbcon.php');
	$veh_registration = $_POST['veh_registration'];
	$Date = $_POST['Date'];
	$Tool_name = $_POST['Tool_name'];
	$Driver = $_POST['Driver'];
	$Comments = $_POST['Comments'];	
	
	
	mysqli_query($con,"update tools set veh_registration='$veh_registration','Date='$Date',Tool_name='$Tool_name',Driver='$Driver',Comments='$Comments' where tool_id='$tool_id'")or die(mysqli_error());
	
	echo "<script type='text/javascript'>alert('Successfully updated Tools Record!');</script>";
	echo "<script>document.location='tools.php'</script>";  

	
?>