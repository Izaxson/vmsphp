
<?php include 'header.php';?>
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
						<div class="box-body"style="overflow-x:auto;">
						  <table id="" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th>Activity Log</th>
				
				  <a class = "btn btn-warning btn-print" href = "" onclick = "window.print()"><i class ="glyphicon glyphicon-print"></i> Print</a>
				  <a class = "btn btn-warning btn-print" href = "dashboard.php"><i class ="glyphicon glyphicon-arrow-left"></i> Back to Homepage</a>
				</div>
                      </tr>
                    </thead>
                    <tbody>
<?php
		
		$query=mysqli_query($con,"select * from history_log natural join user order by date desc")or die(mysqli_error());
		while($row=mysqli_fetch_array($query)){
		
?>
                      <tr>
                        <td><?php echo $row['name']." ".$row['action']." last ".$row['date'];?></td>
                       
                      </tr>
				   	  
                 
<?php }?>					  
                    </tbody>
                    <tfoot>
                      <tr>
                        <th>Activity Log</th>
                 
                      </tr>					  
                    </tfoot>
                  </table>
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
