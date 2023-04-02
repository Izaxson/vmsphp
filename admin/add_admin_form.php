  <div class="x_panel">
                  <div class="x_title">
                    <h2>Add Administrator <i class = "fa fa-users"></i></h2>
                    <ul class="nav navbar-right panel_toolbox"> 
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    <form class="form-horizontal form-label-left" action = "add_admin.php" method = "POST" enctype = "multipart/form-data">
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-3">Username</label>
                        <div class="col-md-9 col-sm-9 col-xs-9">
                          <input type="text" class="form-control" name = "username" required>
                          <span class="fa fa-key form-control-feedback right" aria-hidden="true"required ></span>
                        </div>
                      </div>
                                              
                                     

                      <div class="form-group">
                        <div class="col-md-9 col-md-offset-3">
                        
                          <button name = "update" class="btn btn-block btn-warning"><i class = "fa fa-save"></i> Add Administrator</button>
                        </div>
                      </div>

                    </form>
                  </div>
                </div>