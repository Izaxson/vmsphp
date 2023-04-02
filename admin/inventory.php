
<?php include 'header.php';
 $branch=$_SESSION['branch'];
$query=mysqli_query($con,"select * from branch where branch_id='$branch'")or die(mysqli_error($con));
  $row=mysqli_fetch_array($query);
           $branch_name=$row['branch_name'];
$branch_id = $_GET['id'];
 date_default_timezone_set("Africa/Nairobi"); 
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
	<?php					 
			$branch=$_GET['id'];
			$query=mysqli_query($con,"select * from branch where branch_id='$branch'")or die(mysqli_error());  
			$row=mysqli_fetch_array($query);
        
	?>      
                  <h5><b><?php echo $row['branch_name'];?></b> </h5>  
                  <h6>Address: <?php echo $row['branch_address'];?></h6>
                  <h6>Contact #: <?php echo $row['branch_contact'];?></h6>
				  <h5><b>Trip Reports  as of today, <?php echo date("M d, Y h:i a");?></b></h5>
                  
				  <a class = "btn btn-success btn-print" href = "" onclick = "window.print()"><i class ="glyphicon glyphicon-print"></i> Print</a>
							<a class = "btn btn-primary btn-print" href = "home.php"><i class ="glyphicon glyphicon-arrow-left"></i> Back to Homepage</a>   
						
                  <table class="table table-bordered table-striped">
                    <thead>
					
                      <tr>
					  
                         <th>Vehicle Registration</th>
						<th>Date</th>
                        <th>First Reading </th>
                        <th>Second Reading</th>
						<th>Distance</th>
						<th>Time out </th>
			            <th>Time In </th>
                        <th>Purpose of Journey </th>
						<th>Driver</th>
						<th>Station</th>
						<th>Application Status</th>
						<th>Action by</th>
						<th>Action Date</th>
                       
                      </tr>
                    </thead>
                    <tbody>
							<?php
									$branch=$_GET['id'];
									$query=mysqli_query($con,"select * from trips   where branch='$branch_name' AND Application_status='Approved'")or die(mysqli_error());
									$distance=0;
									while($row=mysqli_fetch_array($query)){
										$diff=$row['Second_reading']-$row['first_reading'];
										$distance+=$diff;
							?>
                      <tr>
					   <td><?php echo $row['veh_registration'];?></td>
                        <td><?php echo $row['Date'];?></td>
                        <td><?php echo $row['first_reading'];?></td>
                        <td><?php echo $row['Second_reading'];?></td>
						 <td><?php echo $row['distance'];?></td>
						<td><?php echo $row['time_out'];?></td>
						<td><?php echo $row['time_in'];?></td>
						<td><?php echo $row['Purpose_of_journey'];?></td>
					
						 <td><?php echo $row['driver'];?></td>
						 <td><?php echo $row['branch'];?></td>
						 
					 <td><?php 
							if ($row['Application_status']=='Approved') 
							echo "<span class='badge bg-green'>Approved</span>";
							elseif($row['Application_status']=='Pending'){
							echo "<span class='badge bg-orange'>Pending</span>"; 
                         } 
                         else
                          echo "<span class='badge bg-red'>Rejected</span>";
                        ?>

                      </td>
					  <td><?php echo $row['Approved_by'];?></td>
                       
						   <td><?php echo $row['Approved_Date'];?></td>                    
                      </tr>

<?php }?>					  
                    </tbody>
                    <tfoot>
                      <tr>
                        <th colspan="3">Distance covered in Kms</th>
                        
						
						<th colspan="2"><?php echo number_format($distance);?></th>
						
                        
                      </tr>					  
                    </tfoot>
                  </table>
                </div>
						</div>
				</div>
			</div>
        </div>		
        <!-- /page content -->
	
        <!-- footer content -->
        <footer>
          <div class="pull-right">
            <div class="pull-right">
           <?php include('../dist/includes/footer.php');?><a href="#"></a>
          </div> <a href="#"></a>
          </div>
		    
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

	<?php include 'datatable_script.php';?>
    <!-- /gauge.js -->
  </body>
</html>
