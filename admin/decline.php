<?php session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;

include('../dist/includes/dbcon.php');
	if (isset($_POST['decline']))
{ 
         mysqli_query($con,"update trips set Application_status='Disapprove' where id='$id'")or die(mysqli_error($con));

}
	echo "<script type='text/javascript'>alert(' Application Rejected!');</script>";
	echo "<script>document.location='application.php'</script>";  

	
?>