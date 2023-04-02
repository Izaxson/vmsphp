<div id = "update<?php echo $id;?>" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-hidden="true">
					 <div class="modal-dialog modal-sm">
                      <div class="modal-content">

                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel2">Edit User Details</h4>
                        </div>
                        <div class="modal-body">
                         <form method = "POST" action = "update_user.php"> 
						   <input type="hidden" name="user_id" value="<?php echo $id;?>">
								<label>Full name</label>
									<input type="text" name = "name" class="form-control" value = "<?php echo $row['name'];?>">
									<br/>								
								<label>Username</label>
									<input type="text" name = "username" class="form-control" value = "<?php echo $row['username'];?>">
									<br/>
								<label>Password</label>
									<input type="password" name = "password" class="form-control" placeholder="Enter to Change Password">
									<br/>
								<label>Status</label>
								<select name = "status" class = "form-control">
									<option value = "active">Active</option>
									<option value = "inactive">Inactive</option>						
								</select>
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