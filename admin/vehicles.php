
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
						<?php include 'add_vehicle_form.php';?>
					</div>
							   <div class="right_col" role="main"> 
			
					<div class = "col-md-8 col-lg-8 col-xs-8">
						<div class = "x-panel">
						<div class="box-body"style="overflow-x:auto;">
						 <table id="datatable" class="table table-striped table-bordered table-responsive">
						 
							 <thead>
								<tr>
									<th>VEHICLE REGISTRATION</th>
							
															
															
								</tr>
							 </thead>
							 <tbody>
									<?php	
									include 'dbcon.php';								
										$query1=mysqli_query($con,"select * from vehicle_reg  order by id desc ")or die(mysqli_error($con));
										while ($row=mysqli_fetch_array($query1)){
											$id=$row['id'];
											
									?>  
								<tr>
									<td><?php echo $row['veh_registration']?></td>
							
								<?php }?>
								   <tfoot>
                    
                    </tfoot>
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
            <a href="#"></a>
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
