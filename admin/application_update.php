<?php session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;

include('../dist/includes/dbcon.php');
	$id = $_POST['id'];
	$Application_status =$_POST['Application_status'];
	
	
	mysqli_query($con,"update trips set ','Application_status='Application_status', where id='$id'")or die(mysqli_error());
	
	echo "<script type='text/javascript'>alert('Successfully Updated application status!');</script>";
	echo "<script>document.location='application.php'</script>";  

	
?>
