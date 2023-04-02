<div id = "update<?php echo $id;?>" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-hidden="true">
					 <div class="modal-dialog modal-sm">
                      <div class="modal-content">

                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel2">Application Status</h4>
                        </div>
                        <div class="modal-body">
                         <form method = "POST" action = "update_user.php"> 
						   <input type="hidden" name="Application_status" value="<?php echo $id;?>">
								
								<label>Status</label>
								<select name = "status" class = "form-control">
									<option value = "active"><b>Approve</b></option>
									<option value = "inactive">Reject</option>						
								</select>
									<br/>
									
								
									
							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							<button  name = "approve" class="btn btn-primary">Save changes</button>
						</form>
						</div>
                        <div class="modal-footer">
                          
                        </div>
                      </div>
                    </div>
				</div>