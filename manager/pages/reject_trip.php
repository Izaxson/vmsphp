<?php
session_start();
include("../dist/includes/dbcon.php");
$Approved_Date=date('Y-m-d'); 
$Approved_by=$_SESSION['name'];

$user_id=$_SESSION['id'];
$id = $_POST['id'];
	
	$query=mysqli_query($con,"select * from trips where id='$id'")or die(mysqli_error($con));
			$row=mysqli_fetch_array($query);
			$id=$row['id'];
			
$result=mysqli_query($con,"UPDATE  trips set Application_status='rejected',Approved_by='$Approved_by',Approved_Date='$Approved_Date' WHERE id='".$id."'");
			date_default_timezone_set("Africa/Nairobi"); 
			$date = date("Y-m-d H:i:s");
	
	$remarks="Rejected trip record  ";
mysqli_query($con,"INSERT INTO history_log(user_id,action,date) VALUES('$user_id','$remarks','$date')")or die(mysqli_error($con));

echo "<script>document.location='request.php'</script>";  
?>