
<?php include 'header.php';?>
  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
       <?php include 'main_sidebar.php';?>

        <!-- top navigation -->
       <?php include 'top_nav.php';?>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main"> 
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class = "col-md-4 col-lg-4 col-xs-4">
						<?php include 'add_vehicles_form.php';?>
					</div>
					<div class = "col-md-8 col-lg-8 col-xs-8">
						<div class = "x-panel">
						 <table id="datatable" class="table table-striped table-bordered">
							 <thead>
								<tr>
                         <th>Vehicle Reg</th>
                        <th> Make</th>
                       	<th> Colour</th>
                        <th>Body Type</th>
						<th>Engine No</th>
                        <th>Chassis No.</th>
					    <th>Year of Make </th>
						<th>Engine Ratings</th>
						<th>Seating Capacity No</th>
                      
					    
					
                     </tr>
							 </thead>
							 <tbody>
									<?php	
									include 'dbcon.php';								
										$query1=mysqli_query($con,"select * from vehicle_particulars ORDER BY id ASC")or die(mysqli_error($con));
										while ($row1=mysqli_fetch_array($query1)){
											$id=$row1['id'];
											
									?>  
								<tr>
									
									<td><?php echo $row1['Veh_registration'];?></td>
									<td><?php echo $row1['Make'];?></td>
									<td><?php echo $row1['Colour'];?></td>
									<td><?php echo $row1['body_type'];?></td>
									<td><?php echo $row1['Engine_no'];?></td>
									<td><?php echo $row1['Chassis_no'];?></td>
									<td><?php echo $row1['year_of_make'];?></td>
									<td><?php echo $row1['Ratings'];?></td>
									<td><?php echo $row1['Seating_Capacity'];?></td>
									
									<td>
										<a href="#update<?php echo $id;?>" class="btn btn-success btn-xs" data-toggle = "modal" data-target="#update<?php echo $id;?>"><i class = "fa fa-pencil"></i> Edit</a>
										
									</td>
																
								</tr>
										<?php include 'update_vehicle_modal.php';?>
								<?php }?>
							 </tbody>								
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
           <?php include('../dist/includes/footer.php');?> <a href="#"></a>
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
