<html>
<head><title>
Update Records
</title></head>
<body>

<?php
$con = mysqli_connect("localhost","root","","vehiclelog");

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

  date_default_timezone_set("Africa/Nairobi"); 
?>

<table>
					<thead>
                      <th>
                        <th>Vehicle Registration</th>
						<th>Date</th>
                        <th>First Reading </th>
						<th>Action</th>
                      
					
                      </th>
                    </thead>
					
				
<?php		
			$con = mysqli_connect("localhost","root","","vehiclelog");

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

			$sql="SELECT *FROM trips where Application_status='Pending'";	
            $records= mysqli_query ($con,$sql);
			while ($row= mysqli_fetch_array($records)){
					echo "<tr>";
					echo"<td>".$row['veh_registration']."></td>";  
					echo"<td>".$row['Date']."></td>"; 
					echo"<td>".$row['first_reading'].">"; 
				 	echo"<td><a href=approve.php?id=".$row['id']."></a></td>";
					//echo"<td><input type=submit>";
				   echo"</tr>";

}

?>
</table>
</body>
</html>