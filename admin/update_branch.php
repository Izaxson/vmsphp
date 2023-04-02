<?php session_start();
include('dbcon.php');

 if (isset($_POST['update']))
 { 
	 $id = $_POST['branch_id'];
	 $branch_name = $_POST['branch_name'];
	 $branch_address = $_POST['branch_address'];
	 $branch_contact = $_POST['branch_contact'];
	 $skin = $_POST['skin'];

	
	 
	 mysqli_query($con,"UPDATE branch SET branch_name='$branch_name', branch_address = '$branch_address', branch_contact = '$branch_contact', skin = '$skin' where branch_id='$id'")
	 or die(mysqli_error($con)); 



date_default_timezone_set("Africa/Nairobi"); 
	$date = date("Y-m-d H:i:s");
	$user_id = $_SESSION['id'];	
	    $remarks="has updated branch  records in the system at "; 
	
	mysqli_query($con,"INSERT INTO history_log(user_id,action,date) VALUES('$user_id','$remarks','$date')")or die(mysqli_error($con));
		echo "<script type='text/javascript'>alert('Successfully updated Branch details!');</script>";
		echo "<script>document.location='branch.php'</script>";
	
} 

