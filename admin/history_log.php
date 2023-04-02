
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
						<img src="Capture.PNG" alt="sgs logo" width="450" height="120">
					</div>
					<div class = "col-md-8 col-lg-8 col-xs-8">
						<div class = "x-panel">
						 <table id="datatable" class="table table-striped table-bordered table-responsive">
						 
							 <thead>
								<tr>
									<th>Fullname</th>
									<th>Activity</th>
									<th>Time</th>
																		
								</tr>
							 </thead>
							 <tbody>
									<?php	
									include 'dbcon.php';								
										$query1=mysqli_query($con,"select * from history_log NATURAL JOIN user order by date desc ")or die(mysqli_error($con));
										while ($row=mysqli_fetch_array($query1)){
											$id=$row['user_id'];
											
									?>  
								<tr>
									<td><?php echo $row['name']?></td>
									<td><?php echo $row['action'];?></td>
									<td><?php echo $row['date'];?></td>
									
									
																
								</tr>
								<?php }?>
								   <tfoot>
                      <tr>
                        <th>Activity Log</th>
				
				  <a class = "btn btn-warning btn-print" href = "" onclick = "window.print()"><i class ="glyphicon glyphicon-print"></i> Print</a>
				  <a class = "btn btn-warning btn-print" href = "dashboard.php"><i class ="glyphicon glyphicon-arrow-left"></i> Back to Homepage</a>
				</div>
                      </tr>
                    </tfoot>
							 </tbody>								
						 </table>
						</div>
					</div>//
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
