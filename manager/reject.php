<?php

$con = mysqli_connect("localhost","root","","vehiclelog");

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

  date_default_timezone_set("Africa/Nairobi"); 

if(isset($_POST['reject'])){
	$checkbox = $_POST['check'];
	for($i=0;$i<count($checkbox);$i++){
	$id = $checkbox[$i]; 
	mysqli_query($con,"UPDATE  trips SET Application_status='Disapproved' WHERE id='".$id."'");
	$message = "Trip Disapproved  successfully !";
}
}
$result = mysqli_query($con,"SELECT * FROM trips WHERE Application_status='PENDING'");
?>