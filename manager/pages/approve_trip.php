<div id="updateordinance<?php echo $row['id'];?>" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
	<div class="modal-dialog">
	  <div class="modal-content" style="height:auto">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">Approve Trip</h4>
              </div>
              <div class="modal-body">
			  <form class="form-horizontal" method="post" action="trip_approve.php" enctype='multipart/form-data'>
        <div class="form-group">
          Are you sure you want to Approve this Trip ?
          <div class="col-lg-9">
            <input type="hidden" class="form-control" id="price" name="id" value="<?php echo $row['id'];?>" readonly>  
          </div>
        </div>
                
				
              </div>
              <div class="modal-footer">
		<button type="submit" class="btn btn-success">Approve</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              </div>
			  </form>
            </div>
			
        </div><!--end of modal-dialog-->
 </div>