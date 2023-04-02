
<?php include 'header.php';
$con = mysqli_connect("localhost","root","","vehiclelog");

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

  date_default_timezone_set("Africa/Nairobi"); 

if(isset($_POST['Approve'])){
	$checkbox = $_POST['check'];
	for($i=0;$i<count($checkbox);$i++){
	$id = $checkbox[$i]; 
	mysqli_query($con,"UPDATE  trips SET Application_status='Approved' WHERE id='".$id."'");
	$message = "Trip Approved  successfully !";
}
}
$result = mysqli_query($con,"SELECT * FROM trips WHERE Application_status='PENDING'");
?>


  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <?php include 'main_sidebar.php';?>

        <!-- top navigation -->
       <?php include 'top_nav.php';?>      <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main"> 
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">					
						<div class = "x-panel">
	             <body>
<div><?php if(isset($message)) { echo $message; } ?>
</div>
<form method="post" action="approve.php">

<table class="table table-bordered">
<thead>
<tr>
    <th><input type="checkbox" id="checkAl"> Select All</th>
				
						<th>Vehicle Registration</th>
						<th>Date</th>
                        <th>First Reading </th>
                        <th>Second Reading</th>
						
						<th>Time out </th>
                        <th>Time In </th>
                        <th>Purpose of Journey </th>
						<th>Application Status</th>
						<th>Driver</th>
						<th>Station</th>
						
						<th>Action</th>
						<th>Action</th>
	
</tr>
</thead>
<?php
$i=0;
while($row = mysqli_fetch_array($result)) {
?>
<tr>
    <td><input type="checkbox" id="checkItem" name="check[]" value="<?php echo $row["id"]; ?>"></td>
						
						<td><?php echo $row['veh_registration'];?></td>
                        <td><?php echo $row['Date'];?></td>
                        <td><?php echo $row['first_reading'];?></td>
                        <td><?php echo $row['Second_reading'];?></td>
						<td><?php echo $row['time_out'];?></td>
						<td><?php echo $row['time_in'];?></td>
						<td><?php echo $row['Purpose_of_journey'];?></td>
						 <td><?php echo $row['Application_status'];?></td>
						 <td><?php echo $row['driver'];?></td>
						 <td><?php echo $row['branch'];?></td>
						 <td><p align="center"><button type="submit" class="btn btn-success" name="Approve">APPROVE</button></p></td>
						 <td><p align="center"><button type="submit" class="btn btn-danger" name="reject">REJECT</button></p></td>
						 
</tr>

<?php
$i++;
}
?>

</table>

</form>
<script>
$("#checkAl").click(function () {
$('input:checkbox').not(this).prop('checked', this.checked);
});

</script>
</body>

	<?php include 'datatable_script.php';?>
    <!-- /gauge.js -->
  
</html>
