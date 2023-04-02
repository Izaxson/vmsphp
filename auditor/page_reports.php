p
<?php include 'header.php';

$branch_id = $_GET['id'];

?>
  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
       <?php include 'main_sidebar.php';?>

        <!-- top navigation -->
       <?php include 'top_nav.php';?>
        <!-- /top navigation -->

        <!-- page content -->
        <div role="main"> 
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">	
					<div class = "x-panel">
						<div class="right_col" role="main">
								<?php					 
			$branch=$_GET['id'];
			$query=mysqli_query($con,"select * from branch where branch_id='$branch'")or die(mysqli_error());  
			$row=mysqli_fetch_array($query);
        
	?>      
                  <h5><b><?php echo $row['branch_name'];?></b> </h5>  
                  <h6>Address: <?php echo $row['branch_address'];?></h6>
                  <h6>Contact #: <?php echo $row['branch_contact'];?></h6>
				  <h5><b>Reports  as of today, <?php echo date("M d, Y ");?></b></h5>
                  
				  <a class = "btn btn-success btn-print" href = "" onclick = "window.print()"><i class ="glyphicon glyphicon-print"></i> Print</a>
				  <a class = "btn btn-primary btn-print" href = "reports.php"><i class ="glyphicon glyphicon-arrow-left"></i> Back </a>   

				  
				  
						 
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">		

					<?php 
					include 'dbcon.php';
						$query1=mysqli_query($con,"select * from fuel NATURAL join  branch ORDER BY branch_name")or die(mysqli_error($con));
						while ($row=mysqli_fetch_array($query1)){
						$id=$row['branch_id'];?>
						<a href  = "page_reports.php?id=<?php echo $row['branch_id'];?>">
						<div class = "col-md-6 col-6-12 col-6">
							
							<div class = "panel panel-success">
								<div class = "panel-heading">
									<i class = "center fa fa-building"></i>
								</div>
								<div class = "panel-body">
										<h1 class = ""><?php echo $row['branch_name'];?></h1>
								</div>
							</div>
							
						</div>
						</a>
						<?php } ?>						
				</div>
			</div>
        </div>		
								
					
         				  
       
            </table>
											
										  </div>
										</div>
							</div>
							</div>
					</div> 
						
						
						
						
						
						
						
						
					</div>								
				</div>
			</div>
        </div>		
        <!-- /page content -->

        <!-- footer content -->
      
        <!-- /footer content -->
      </div>
    </div>
	 <script src="vendors/jquery/dist/jquery.min.js"></script>
	<script src="js/highcharts.js"></script>
    <!-- Bootstrap -->
    <script src="js/exporting.js"></script>
	 
    <!-- FastClick -->
   
	<script type="text/javascript">
    $(document).ready(function() {
      var options = {
              chart: {
                  renderTo: 'graph',
                  type: 'column',
                  marginRight: 20,
                  marginBottom: 25
              },
              title: {
                  text: '',
                  x: -20 //center
              },
              subtitle: {
                  text: '',
                  x: -10
              },
              xAxis: {
                  categories: []
              },
              yAxis: {
                  
                  title: {
                      text: 'Total Monthly Sales'
                  },
                  plotLines: [{
                      value: 0,
                      width: 1,
                      color: '#808080'
                  }]
              },
              tooltip: {
                  formatter: function() {
                          return '<b>'+ this.series.name +'</b><br/>'+  Highcharts.numberFormat(this.y, 0)
                          this.x +': '+ this.y
                          
                  ;
                  }
              },
              legend: {
                  layout: 'vertical',
                  align: 'right',
                  verticalAlign: 'top',
                  x: 0,
                  y: 100,
                  borderWidth: 0
              },
              series: []
          }
          
          $.getJSON("data.php", function(json) {
			options.xAxis.categories = json[0]['name'];
            options.series[0] = json[1];
            //options.series[1] = json[2];
            
            
            
            chart = new Highcharts.Chart(options);
          });
      });
    </script>
	<?php include 'datatable_script.php';?>
    <!-- /gauge.js -->
  </body>
</html>
