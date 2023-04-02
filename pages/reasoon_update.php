<?php session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;

include('../dist/includes/dbcon.php');
	$id = $_POST['id'];
	$Rejection _Reason =$_POST['Rejection_Reason'];
	$Approval_date = $_POST['Approval_date'];
	$Approved_by =$_POST['Approved_by']
	
	mysqli_query($con,"update trip set Rejection_Reason='$Rejection_Reason',Approval_date='$Approval_date,Approved_by='$Approved_by
	where id='$id'")or die(mysqli_error($con));
	
	//echo "<script type='text/javascript'>alert('Successfully added creditor details!');</script>";
	echo "<script>document.location='application.php'</script>";  

	
?>

