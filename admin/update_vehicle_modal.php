<div id = "update<?php echo $id;?>" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-hidden="true">
					 <div class="modal-dialog modal-sm">
                      <div class="modal-content">

                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel2">Edit Vehicle Particulars</h4>
                        </div>
                        <div class="modal-body">
                         <form method = "POST" action = "vehicle_update.php"> 
						   <input type="hidden" name="user_id" value="<?php echo $id;?>">
								<label>Vehicle Registration Number.</label>
									<input type="text" name = "veh_registration" class="form-control" readonly value = "<?php echo $row['veh_registration'];?>">
									<br/>	
									<!--
									<div class="form-group">
                        <label for="date">DEPARTMENT.</label>
                       <div class="input-group col-md-12">
                         <select  name = "branch_id" class = "form-control">
						 	<?php	
									include 'dbcon.php';								
										$query1=mysqli_query($con,"select * from  department ORDER BY dept_id ASC")or die(mysqli_error($con));
										while ($row1=mysqli_fetch_array($query1)){
											$id=$row1['dept_id'];
							?>
							<option value = "<?php echo $row1['dept_id'];?>"><?php echo $row1['dept_name'];?></option>	
							<?php } ?>																 
						 </select>
                          <span class="fa form-control-feedback right" aria-hidden="true"></span>
                        </div>
                      </div>
									
									<div class="form-group">
                        <label for="date">station.</label>
                       <div class="input-group col-md-12">
                         <select  name = "branch_id" class = "form-control">
						 	<?php	
									include 'dbcon.php';								
										$query1=mysqli_query($con,"select * from  branch ORDER BY branch_id ASC")or die(mysqli_error($con));
										while ($row1=mysqli_fetch_array($query1)){
											$id=$row1['branch_id'];
							?>
							<option value = "<?php echo $row1['branch_id'];?>"><?php echo $row1['branch_name'];?></option>	
							<?php } ?>																 
						 </select>
                          <span class="fa form-control-feedback right" aria-hidden="true"></span>
                        </div>
                      </div>		-->			
								
							
									<br/>
							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							<button  name = "update" class="btn btn-warning">Save changes</button>
						</form>
						</div>
                        <div class="modal-footer">
                          
                        </div>
                      </div>
                    </div>
				</div>