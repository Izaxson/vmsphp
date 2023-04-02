<?php session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;

$con = mysqli_connect("localhost","root","","vehiclelog");

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
  
	if(isset($_POST['reject'])){
	$checkbox = $_POST['check'];
	for($i=0;$i<count($checkbox);$i++){
	$id = $checkbox[$i]; 
	mysqli_query($con,"UPDATE  trips set Application_status='Disapproved' WHERE id='".$id."'");
	$message = "Trip Disapproved  successfully !";
}
	
	
	
	echo $message;
	echo"<script>document.location='application.php'</script>";  

	
	}?>