<?php
		include('../dist/includes/dbcon.php');
		$query=mysqli_query($con,"select * from trips ")or die(mysqli_error());
			
			$distance=0;
		while($row=mysqli_fetch_array($query)){
				$id=$row['id'];
				$distance= $row['Second_reading']-$row['first_reading'];
				
		{
			mysqli_query($con,"update trips set distance='$distance' where id='$id'")or die(mysqli_error($con));
		}
		
?>
                      
	<?php }?>