
<?php include 'header.php';


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
	             <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th>Vehicle Registration</th>
						<th>Date</th>
                        <th>First Reading </th>
                        <th>Second Reading</th>
						<th>Time out </th>
                        <th>Time In </th>
                        <th>Purpose of Journey </th>
						<th>Application Status</th>
						<th>Driver</th>
						<th>Action</th>
						<th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
<?php
		
		$query=mysqli_query($con,"select * from trips WHERE Application_status='Pending'")or die(mysqli_error());
		while($row=mysqli_fetch_array($query)){
		
?>
                      <tr>
						   <td><?php echo $row['veh_registration'];?></td>
                        <td><?php echo $row['Date'];?></td>
                        <td><?php echo $row['first_reading'];?></td>
                        <td><?php echo $row['Second_reading'];?></td>
						<td><?php echo $row['time_out'];?></td>
						<td><?php echo $row['time_in'];?></td>
						<td><?php echo $row['Purpose_of_journey'];?></td>
						 <td><?php echo $row['Application_status'];?></td>
						 <td><?php echo $row['driver'];?></td>
						
						 <td>  <form method="post" action="approve.php" enctype="multipart/form-data">                    
						<input type="hidden" name="approve_id" value="<?php echo $row['id'];?>">
						<button type="approve" name="approve" class="btn btn-success btn-xs"> Approve </button>
						</form>
						</td>
						
						  <td> <form method="post" action="decline.php" enctype="multipart/form-data">                    
						<input type="hidden" name="reject" value="<?php echo $row['id'];?>">
						<button type="reject" name="reject" class="btn btn-danger btn-xs"> Reject </button>
						</form>
						</td>
							
                      </tr>
                   
<?php }?>	
       	
									
                      </tr>
        <!--<div id="updateordinance//*<?php echo $row['id'];?>"*// class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">

              <div class="modal-body">
        <form class="form-horizontal" method="post" action="application_update.php" enctype='multipart/form-data'>
                
        <div class="form-group">
          <label class="control-label col-lg-3" for="name">Application Status</label>
          <div class="col-lg-9">
            <input type="hidden" name="id" value="<?php echo $id;?>">
            <select class="form-control" id="id" name="Application_status">  
              <option>Approved</option>
              <option>Disapproved</option>
              <option>Pending</option>
            </select>
          </div>
        </div>
             
        
        
              </div><br>
              <div class="modal-footer">
    <button type="submit" class="btn btn-primary">Save changes</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              </div>
        </form>
            </div>-->
      <?php ?>	
        </div><!--end of modal-dialog-->
 </div>
 <!--end of modal-->      
                 
<?php $i++;?>            
                    </tbody>
                    <tfoot>
                      <tr>
                       <th>Vehicle Registration</th>
						<th>Date</th>
                        <th>First Reading </th>
                        <th>Second Reading</th>
						
						<th>Time out </th>
                        <th>Time In </th>
                        <th>Purpose of Journey </th>
						<th>Application Status</th>
						<th>Driver</th>
						<th>Action</th>
						<th>Action</th>
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
