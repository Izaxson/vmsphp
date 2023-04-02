<div id = "update<?php echo $id;?>" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-hidden="true">
					 <div class="modal-dialog modal-sm">
                      <div class="modal-content">

                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel2">Edit Trip</h4>
                        </div>
                        <div class="modal-body">
                         <form method = "POST" action ="vehicle_update.php"> 
						   <input type="hidden" name="user_id" value="<?php echo $id;?>">
									<div class="form-group">
                        <label for="date">Vehicle Registration.</label>
                       <div class="input-group col-md-12">
                         <select  name = "branch_id" class = "form-control">
						 	<?php	
									include 'dbcon.php';								
										$query1=mysqli_query($con,"select * from  vehicle_reg ORDER BY branch_id ASC")or die(mysqli_error($con));
										while ($row1=mysqli_fetch_array($query1)){
											$id=$row1['branch_id'];
							?>
							<option value = "<?php echo $row1['branch_id'];?>"><?php echo $row1['veh_registration'];?></option>	
							<?php } ?>																 
						 </select>
                          <span class="fa form-control-feedback right" aria-hidden="true"></span>
                        </div>
                      </div>							
								<label>Date</label>
									<input type="text" name = "Date" class="form-control" value = "<?php echo $row['Date'];?>">
									<br/>
								<label>First Reading</label>
									<input type="text" name = "first_reading" class="form-control" value = "<?php echo $row['first_reading'];?>">
									<br/>
								<label>Second Reading</label>
								<input type="text" name = "Second_reading" class="form-control" value = "<?php echo $row['Second_reading'];?>">
								<label>Engine  Number.</label>
									<input type="text" name = "Engine_no" class="form-control" value = "<?php echo $row['Engine_no'];?>">
									<br/>								
								<label>Chassis No.</label>
									<input type="text" name = "Chassis_no" class="form-control" value = "<?php echo $row['Chassis_no'];?>">
									<br/>
									<div class="form-group ">
						<div class="input-group">
						<label for="name">Year Of Make</label>		
						  </div>
						<select class="form-control select2" name="year_of_make" tabindex="1" required>
							<option>2017</option>
							<option>2018</option>
							<option>2019</option>
							
								  
						</select>
					</div>
								<label>Engine Rating</label>
								<input type="text" name = "Ratings" class="form-control" value = "<?php echo $row['Ratings'];?>">
									<br/>
									<label>Seating Capacity</label>
								<input type="text" name = "Seating_Capacity" class="form-control" value = "<?php echo $row['Seating_Capacity'];?>">
									<br/>
								<div class="form-group">
                        <label for="date">Branch.</label>
                       <div class="input-group col-md-12">
                         <select  name = "branch_id" class = "form-control">
						 	<?php	
									include 'dbcon.php';								
										$query1=mysqli_query($con,"select * from branch ORDER BY branch_id ASC")or die(mysqli_error($con));
										while ($row1=mysqli_fetch_array($query1)){
											$id=$row1['branch_id'];
							?>
							<option value = "<?php echo $row1['branch_id'];?>"><?php echo $row1['branch_name'];?></option>	
							<?php } ?>																 
						 </select>
                          <span class="fa form-control-feedback right" aria-hidden="true"></span>
                        </div>
                      </div>
									<br/>
							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							<button  name = "update" class="btn btn-primary">Save changes</button>
						</form>
						</div>
                        <div class="modal-footer">
                          
                        </div>
                      </div>
                    </div>
				</div>