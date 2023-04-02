<?php session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;
include("../dist/includes/dbcon.php");
$Approved_Date=date('Y-m-d'); 
$Approved_by=$_SESSION['name'];


// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
  
	
  
	if(isset($_POST['Approve'])){
	$checkbox = $_POST['check'];
	for($i=0;$i<count($checkbox);$i++){
	$id = $checkbox[$i]; 
	mysqli_query($con,"UPDATE  trips set Application_status='Approved',Approved_by='$Approved_by',Approved_Date='$Approved_Date' WHERE id='".$id."'");
	
	$message = "Trip Approved  successfully !";

	}
	//mysqli_query($con,"INSERT INTO trips(Approved_by) 
				//VALUES('$Approved_by')") or die(mysqli_error($con));
	
	
	
	//echo $message;
	echo"<script>document.location='tripapproval.php'</script>";  

	
	}
	
	else
	if(isset($_POST['reject'])){
	$checkbox = $_POST['check'];
	for($i=0;$i<count($checkbox);$i++){
	$id = $checkbox[$i]; 
	mysqli_query($con,"UPDATE  trips set Application_status='Rejected',Approved_by='$Approved_by', Approved_Date='$Approved_Date' WHERE id='".$id."'");
	$message = "Trip Rejected  successfully !";

	}
	//mysqli_query($con,"INSERT INTO trips(Approved_by) 
				//VALUES('$Approved_by')") or die(mysqli_error($con));
	
	
	
	//echo $message;
	echo"<script>document.location='tripapproval.php'</script>"; 
		
		
		
		
		
	}
	
	
	
	
	
	
	?>