
		  
  <div class="x_panel">
                  <div class="x_title">
                    <h2>Add Vehicle  <i class = "fa fa-car"></i></h2>
                    <ul class="nav navbar-right panel_toolbox"> 
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                     <form method="post" action="add_vehicle.php" enctype="multipart/form-data">
  
                   <div class="form-group">
                    <label for="date">Vehicle Registration Number.</label>
                    <div class="input-group col-md-12">
                       <input type="text" class="form-control pull-right" id="date" name="veh_registration" placeholder="Vehicle Registration Number" required>
                    </div><!-- /.input group -->
                 </div><!-- /.form group -->
				  <!-- <div class="form-group">
                    <label for="date">Vehicle Make.</label>
                    <div class="input-group col-md-12">
                       <input type="text" class="form-control pull-right" id="date" name="Make" placeholder="Vehicle Make" required>
                    </div><!-- /.input group -
                 </div>
				   <div class="form-group">
                    <label for="date">Vehicle Colour.</label>
                    <div class="input-group col-md-12">
                       <input type="text" class="form-control pull-right" id="date" name="Colour" placeholder="Vehicle Colour" required>
                    </div><!-- /.input group -
                 </div>
				   <div class="form-group">
                    <label for="date">Vehicle Body Type.</label>
                    <div class="input-group col-md-12">
                       <input type="text" class="form-control pull-right" id="date" name="body_type" placeholder="Vehicle body_type" required>
                    </div><!-- /.input group --
                 </div>
				   <div class="form-group">
                    <label for="date">Vehicle Engine No..</label>
                    <div class="input-group col-md-12">
                       <input type="text" class="form-control pull-right" id="date" name="Engine_no" placeholder="Vehicle Engine Number" required>
                    </div><!-- /.input group --
                 </div>
				   <div class="form-group">
                    <label for="date">Vehicle Chassis No..</label>
                    <div class="input-group col-md-12">
                       <input type="text" class="form-control pull-right" id="date" name="Chassis_no" placeholder="Vehicle Chassis Number" required>
                    </div><!-- /.input group --
                 </div>
				   <div class="form-group">
                    <label for="date">Vehicle Year of  Make.</label>
                    <div class="input-group col-md-12">
                       <input type="number" class="form-control pull-right" id="date" name="year_of_make" placeholder="Vehicle year_of_make">
                    </div><!-- /.input group --
                 </div>
				   <div class="form-group">
                    <label for="date">Vehicle Engine Rating.</label>
                    <div class="input-group col-md-12">
                       <input type="text" class="form-control pull-right" id="date" name="Ratings" placeholder="Vehicle Engine Rating" required>
                    </div><!-- /.input group --
                 </div>
				 <label for="date">TANK CAPACITY IN LITRES </label>
                    <div class="input-group col-md-12">
                      <select  name = "tank_capacity" class = "form-control">
							<option value = ""	></option>					 
							<B><option value = "30">30</option>	</B>				 
							<option value = "40 ">20</option>	
							<option value = "50 ">25</option>					
							<option value = "60 ">30</option>	
							<option value = "70 ">35</option>	
				 			<option value = "40 ">40</option>	
							<option value = "50 ">45</option>					
							<option value = "60 ">59</option>	
							<option value = "70 ">55</option>		
							<option value = "70 ">60</option>	
							<option value = "40 ">65</option>	
							<option value = "50 ">70</option>					
							<option value = "60 ">75</option>	
							<option value = "70 ">80</option>		
							<option value = "70 ">85</option>							
																 
						 </select>
                    </div>
			<!--	<div class="form-group">
                    <label for="date"></label>
                 	<div class="form-group">
                        <label for="date">BRANCH.</label>
                       <div class="input-group col-md-12">
                         <select  name = "branch" class = "form-control">
						 	<?php	
									include 'dbcon.php';								
										$query1=mysqli_query($con,"select * from  branch ORDER BY branch_id ASC")or die(mysqli_error($con));
										while ($row1=mysqli_fetch_array($query1)){
											$id=$row1['branch_id'];
							?>
							<option value = "<?php echo $row1['branch'];?>"><?php echo $row1['branch_name'];?></option>	
							<?php } ?>																 
						 </select>
                          <span class="fa form-control-feedback right" aria-hidden="true"></span>
                        </div>
                      </div>
					
			
					
					
					
					</div>-->					
               
                  <div class="form-group">
                    <div class="input-group">
                      <button class="btn btn-warning" id="daterange-btn" name="">
                        Add
                      </button>
					  <button class="btn" id="daterange-btn">
                        Clear
                      </button>
                    </div>
                  </div><!-- /.form group -->
				</form>	
				
                  </div>
                </div>