<?php session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;

include('../dist/includes/dbcon.php');

	$id = $_SESSION['id'];
	$name =$_POST['name'];
	$username =$_POST['username'];
	$password =$_POST['password'];
	$old =$_POST['passwordold'];
	
	$pass=md5($old);
	$salt="a1Bz20ydqelm8m1wql";
	$pass=$salt.$pass;
	
	$passnew=md5($password);
	$salt="a1Bz20ydqelm8m1wql";
	$passnew=$salt.$passnew;
	
	
	
	date_default_timezone_set("Africa/Nairobi"); 
	$date = date("Y-m-d H:i:s");
	$user_id = $_SESSION['id'];	
	    $remarks="has updated  account password  in the system at "; 
		mysqli_query($con,"INSERT INTO history_log(user_id,action,date) VALUES('$user_id','$remarks','$date')")or die(mysqli_error($con));
		$query=mysqli_query($con,"select password from user where user_id='$id'")or die(mysqli_error());
			$row=mysqli_fetch_array($query);
	
				$passold=$row['password'];
				
				if ($passold==$pass)
				{
					if ($password<>"")
					{
						mysqli_query($con,"update user set name='$name',username='$username',password='$passnew' where user_id='$id'")or die(mysqli_error($con));
					}
					else
					{
						mysqli_query($con,"update user set name='$name',username='$username' where user_id='$id'")or die(mysqli_error($con));
					}
					
					$_SESSION['name']=$name;
					echo "<script type='text/javascript'>alert('Successfully updated user details!');</script>";
					echo "<script>document.location='profile.php'</script>";  
				}
				else
				{
					echo "<script type='text/javascript'>alert('Password mismatch!');</script>";
					echo "<script>document.location='profile.php'</script>";  
				}
				
?>
