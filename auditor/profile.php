
<?php include 'header.php';?>
    <style type="text/css">
	<?php
		    $id=$_SESSION['id'];
		      $query=mysqli_query($con,"select * from user where user_id='$id'")or die(mysqli_error());
				$row=mysqli_fetch_array($query);
		  ?>
	
	
	
	
	
	
	
	
	
	
      h5,h6{
        text-align:center;
      }
		

      @media print {
          .btn-print {
            display:none !important;
		  }
		  .main-footer	{
			display:none !important;
		  }
		  .box.box-primary {
			  border-top:none !important;
		  }
		  .angel{
			  display:none !important;
		  }
		  .hide-section{
			 display:none; 
			 }
		  
          
      }
    </style>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
       <?php include 'main_sidebar.php';?>

        <!-- top navigation -->
       <?php include 'top_nav.php';?>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main"> 
			<div class = "row">
				<div class = "col-md-12 col-lg-12 hide-section">
			<div class = "panel">
				<!--<div class="panel-heading">
				  <h3 class="box-title">Change Password</h3>
				  <a class = "btn btn-warning btn-print" href = "" onclick = "window.print()"><i class ="glyphicon glyphicon-print"></i> Print</a>
				  <a class = "btn btn-warning btn-print" href = "home.php"><i class ="glyphicon glyphicon-arrow-left"></i> Back to Homepage</a>
				</div>-->
				<div class="box-body">
				
				  <!-- /.form group -->
				   <form id = "formE"method="post" action="profile_update.php" onsubmit="return myFunction()">
  
                  <div class="form-group">
                    <label for="date">Full Name</label>
                    <div class="input-group col-md-12">
                      <input type="text" class="form-control pull-right" width='50%' value="<?php echo $row['name'];?>" name="name" placeholder="Full Name" readonly>
                    </div><!-- /.input group -->
                  </div><!-- /.form group -->
				  <div class="form-group">
                    <label for="date">Username</label>
                    <div class="input-group col-md-12">
                      <input type="text" class="form-control pull-right" style width='50%' value="<?php echo $row['username'];?>" name="username" placeholder="Username" readonly>
                    </div><!-- /.input group -->
                  </div><!-- /.form group -->
				  <div class="form-group">
                    <label for="date">Change Password</label>
                    <div class="input-group col-md-12">
                      <input type="password" class="form-control pull-right" id="password" name="password" placeholder="Type new password">
                    </div><!-- /.input group -->
                  </div><!-- /.form group -->
				  <div class="form-group">
                    <label for="date">Confirm New Password</label>
                    <div class="input-group col-md-12">
                      <input type="password" class="form-control pull-right" id="cfmPassword" name="newpassword" placeholder="Reenter new password">
                    </div><!-- /.input group -->
                  </div><!-- /.form group -->
				  <hr>
					<div class="form-group">
                    <label for="date">Enter Old Password to confirm changes</label>
                    <div class="input-group col-md-12">
                      <input type="password" class="form-control pull-right" id="date" name="passwordold" placeholder="Type old password" required>
                    </div><!-- /.input group -->
					
                  </div><!-- /.form group -->
				  
                  <div class="form-group">
                    <div class="input-group">
                      <input class = "btn btn-warning" type="submit" value="Submit">
					  <button class="btn" id="daterange-btn">
                        Clear
                      </button>
                    </div>
                  </div><!-- /.form group -->
				</form>	
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->  
				
				</div>			
			</div>
			
			
			<div class="row">
								
				
				<div class="col-md-12 col-sm-12 col-xs-12">					
					<div id="graph"></div>
					
                  
							   
						
												
			
                    
                   

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

		<script type="text/javascript"src="vendors/jquery/dist/jquery.min.js"></script>
		<script type="text/javascript"src="js/highcharts.js"></script>
		<script type="text/javascript"src="js/exporting.js"></script>
		<script type="text/javascript">
        $(document).ready(function() {
            var options = {
                chart: {
                    renderTo: 'graph',
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false,
										spacingBottom: 50,
                },
                title: {
                    text: '',
										style: { fontFamily: '\'Lato\', sans-serif', lineHeight: '18px', fontSize: '26px' }
                },
                tooltip: {
                    formatter: function() {
                        return '<b>'+ this.point.name +'</b>: '+ Highcharts.numberFormat(this.percentage, 2) +' %';
                    }
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: true,
                            color: '#000000',
														style: { fontFamily: '\'Lato\', sans-serif', lineHeight: '18px', fontSize: '14px' },
                            connectorColor: '#000000',
                            formatter: function() {
                                return '<b>'+ this.point.name +'</b>: '+ Highcharts.numberFormat(this.percentage, 2) +' %';
                            }
                        }
                    }
                },
                series: [{
                    type: 'pie',
                    name: 'Employability Rate',
                    data: []
                }]
            }
            
            $.getJSON("datapie.php", function(json) {
                options.series[0].data = json;
                chart = new Highcharts.Chart(options);
            });
            
            
            
        });   
        </script>

    <!-- /gauge.js -->
  </body>
</html>
