
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Fuel Report | <?php include('../dist/includes/title.php');?></title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
      <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- daterange picker -->
  <link rel="stylesheet" href="../plugins/daterangepicker/daterangepicker-bs3.css">
  <!-- bootstrap datepicker -->
  <link rel="stylesheet" href="../plugins/datepicker/datepicker3.css">
  <!-- iCheck for checkboxes and radio inputs -->
  <link rel="stylesheet" href="../plugins/iCheck/all.css">
  <!-- Bootstrap Color Picker -->
  <link rel="stylesheet" href="../plugins/colorpicker/bootstrap-colorpicker.min.css">
  <!-- Bootstrap time Picker -->
  <link rel="stylesheet" href="../plugins/timepicker/bootstrap-timepicker.min.css">
  <!-- Select2 -->
  <link rel="stylesheet" href="../plugins/select2/select2.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="../dist/css/skins/_all-skins.min.css">
  <script type="text/javascript" src="../dist/js/jquery.min.js"></script>
<script type="text/javascript" src="../dist/js/moment.min.js"></script>
<link rel="stylesheet" type="text/css" href="../dist/css/bootstrap.css" />
 
<!-- Include Date Range Picker -->
<script type="text/javascript" src="../plugins/daterangepicker/daterangepicker.js"></script>
<link rel="stylesheet" type="text/css" href="../plugins/daterangepicker/daterangepicker.css" />
    <style type="text/css">
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
          
      }
    </style>
 </head>
<?php include 'header.php';?>
    <style type="text/css">
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
				<div class="panel-heading">
				  <h3 class="box-title">Fuel  Report Per Station</h3>
				 
				</div>
				<div class="box-body">
				
				  <!-- /.form group -->
				    <form method="post">
					<div class="form-group col-md-6">
						<label>From:</label>

						<div class="input-group">
						  <div class="input-group-addon">
							<i class="fa fa-calendar"></i>
						  </div>
						<input type="date" name="date1" class="form-control pull-left active" style="width:30%" id="reservation"  required >
					</div>
					<label>To:</label>
					<div class="input-group">
						  <div class="input-group-addon">
							<i class="fa fa-calendar"></i>
						  </div>
						<input type="date" name="date2" class="form-control pull-left active" style="width:30%" id="reservation" required >
					</div>
					
                <!-- /.input group -->
					</div>
					<label>Vehicle Registration:</label>
					<div class="form-group">
            <select class="form-control select2" style="width:20%" name="veh_registration" required>
			<?php
				include('dist/includes/dbcon.php');

                   $query3=mysqli_query($con,"select * from vehicle_reg order by veh_registration")or die(mysqli_error($con));
                      while($row3=mysqli_fetch_array($query3)){
                ?>
                    <option value="<?php echo $row3['veh_registration'];?>"><?php echo $row3['veh_registration'];?></option>
                  <?php }?>
                </select>
          </div>
		  	  <label>Station:</label>
		    <div class="form-group">
                       <select class="form-control select2" style="width:20%" name="branch" required>
			<?php
				include('dist/includes/dbcon.php');

                   $query3=mysqli_query($con,"select * from branch order by branch_name")or die(mysqli_error($con));
                      while($row3=mysqli_fetch_array($query3)){
                ?>
                    <option value="<?php echo $row3['branch_name'];?>"><?php echo $row3['branch_name'];?></option>
                  <?php }?>
                </select>
                  </div>
              <!-- /.form group --><br>
					<button type="submit" class="btn btn-warning" name="display">Display</button>
				</form>
				
				
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->  
				
				</div>			
			</div>
			
			
			
			<?php
		if (isset($_POST['display']))
	{
		$date1=$_POST['date1'];
		$date2=$_POST['date2'];
		$veh_registration=$_POST['veh_registration'];
	//	$date=explode('-',$date);
		$branch=$_POST['branch'];		
			$start=date("Y/m/d",strtotime($date1));
			$end=date("Y/m/d",strtotime($date2));
		
		?>
		<div class="col-md-12">
		

        
 
                  
                  
				  <h5><img src="Capture.PNG" alt="sgs logo" width="400" height="100"><br><b>  <?php echo $_POST['branch'];?>  <br> FUEL  REPORT FOR   <?php echo $_POST['veh_registration'];?><br> AS OF <?php echo date("M d Y",strtotime($start))." to ".date("M d Y",strtotime($end));?></b></h5>
                  
				  <a class = "btn btn-warning btn-print" href = "" onclick = "window.print()"><i class ="glyphicon glyphicon-print"></i> Print</a>
							<a class = "btn btn-warning btn-print" href = "home.php"><i class ="glyphicon glyphicon-arrow-left"></i> Back to Homepage</a>   
						
		
			<table id="example1" class="table table-bordered table-striped">
			 <div class="box-body"style="overflow-x:auto;">
                    <thead>
                       <tr>
                         <th>Vehicle Reg</th>
                        <th> Date </th>
                       	<th>Fuel </th>
                        <th>Lubricant</th>
						<th>Speedometer Reading</th>
                        <th>Filling Station</th>
						<th>Driver</th>
					    <th>Litres Fuelled</th>
						<th>Amount</th>
					
                     </tr>
                    </thead>
                    <tbody>
<?php
	$query=mysqli_query($con,"select * from fuel where Date>='$start' and Date<='$end' AND   branch='$branch' AND veh_registration='$veh_registration' ORDER BY Date ASC ")or die(mysqli_error($con));
		$amount=0;	$litres=0;$avg_fuel=0;
									while($row=mysqli_fetch_array($query)){
										$total=$row['Amount'];
										$amount+=$total;
										$total_litres=$row['Litres_fuelled'];
										$litres+=$total_litres;
										$avg_fuel=$amount/$litres
?>
            <tr>
			     <td><?php echo $row['veh_registration'];?></td>
                       <td><?php echo $row['Date'];?></td>
                       <td><?php echo $row['Fuel'];?></td>
						<td><?php echo $row['Lubricant'];?></td>
                        <td><?php echo $row['Speedometer_reading'];?></td>
						<td><?php echo $row['Filling_station'];?></td>
						<td><?php echo $row['driver'];?></td>
						<td><?php echo $row['Litres_fuelled'];?></td>
						<td><?php echo $row['Amount'];?></td>
			
		
 <?php }?>                       
                      </tr>
		
                    </tbody>
                      <tfoot>
                      <tr>
                        <th colspan="3">Fuel Amount</th>
                        
						
						<th colspan="2"> Ksh <?php echo number_format($amount);?> </th>
						
                        
                      </tr>					  
                       <tr>
                        <th colspan="3">Litres  Fuelled</th>
                        
						
						<th colspan="2"><?php echo number_format($litres);?> Litres</th>
						
                        
                      </tr>	
					  <tr>
                        <th colspan="3">Estimated Average Price per Litre</th>
                        
						<th colspan="2">Ksh.<?php echo number_format($avg_fuel);?> </th>
						
						
                        
                      </tr>
                      <tr>
                        <th>Prepared by:</th>
                       
                      </tr>  
					 
<?php
    $id=$_SESSION['id'];
    $query=mysqli_query($con,"select * from user where user_id='$id'")or die(mysqli_error($con));
    $row=mysqli_fetch_array($query);
 
?>                      
                      
                        <th><?php echo $row['name'];?></th>
                        
                      			  
        </tfoot>
       </table>
		</div>
            
          </section><!-- /.content -->
        </div><!-- /.container -->
      </div><!-- /.content-wrapper -->
	
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
	<?php include('../dist/includes/footer.php');}?> <a href="www.abdotechsolutions.co.ke"></a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>
		   <script src="../plugins/jQuery/jQuery-2.2.0.min.js"></script>
	<!-- Bootstrap 3.3.6 -->
	<script src="../bootstrap/js/bootstrap.min.js"></script>
	<!-- Select2 -->
	<script src="../plugins/select2/select2.full.min.js"></script>
	<!-- InputMask -->
	<script src="../plugins/input-mask/jquery.inputmask.js"></script>
	<script src="../plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
	<script src="../plugins/input-mask/jquery.inputmask.extensions.js"></script>
	<!-- date-range-picker -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
	<script src="../plugins/daterangepicker/daterangepicker.js"></script>
	<!-- bootstrap datepicker -->
	<script src="../plugins/datepicker/bootstrap-datepicker.js"></script>
	<!-- bootstrap color picker -->
	<script src="../plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
	<!-- bootstrap time picker -->
	<script src="../plugins/timepicker/bootstrap-timepicker.min.js"></script>
	<!-- SlimScroll 1.3.0 -->
	<script src="../plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<!-- iCheck 1.0.1 -->
	<script src="../plugins/iCheck/icheck.min.js"></script>
	<!-- FastClick -->
	<script src="../plugins/fastclick/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="../dist/js/app.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="../dist/js/demo.js"></script>
		<script type="text/javascript"src="vendors/jquery/dist/jquery.min.js"></script>
		<script type="text/javascript"src="js/highcharts.js"></script>
		<script type="text/javascript"src="js/exporting.js"></script>
		    <script>
  $(function () {
    //Initialize Select2 Elements
    $(".select2").select2();

    //Datemask dd/mm/yyyy
    $("#datemask").inputmask("dd/mm/yyyy", {"placeholder": "dd/mm/yyyy"});
    //Datemask2 mm/dd/yyyy
    $("#datemask2").inputmask("mm/dd/yyyy", {"placeholder": "mm/dd/yyyy"});
    //Money Euro
    $("[data-mask]").inputmask();

    //Date range picker
    $('#reservation').daterangepicker();
    //Date range picker with time picker
    $('#reservationtime').daterangepicker({timePicker: true, timePickerIncrement: 30, format: 'YY/MM/DD h:mm A'});
    //Date range as a button
    $('#daterange-btn').daterangepicker(
        {
          ranges: {
            'Today': [moment(), moment()],
            'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
            'Last 7 Days': [moment().subtract(6, 'days'), moment()],
            'Last 30 Days': [moment().subtract(29, 'days'), moment()],
            'This Month': [moment().startOf('month'), moment().endOf('month')],
            'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
          },
          startDate: moment().subtract(29, 'days'),
          endDate: moment()
        },
        function (start, end) {
          $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
        }
    );

   //Date picker
    $('#datepicker').datepicker({
      autoclose: true
    });

    //iCheck for checkbox and radio inputs
    $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
      checkboxClass: 'icheckbox_minimal-blue',
      radioClass: 'iradio_minimal-blue'
    });
    //Red color scheme for iCheck
    $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
      checkboxClass: 'icheckbox_minimal-red',
      radioClass: 'iradio_minimal-red'
    });
    //Flat red color scheme for iCheck
    $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
      checkboxClass: 'icheckbox_flat-green',
      radioClass: 'iradio_flat-green'
    });

    //Colorpicker
    $(".my-colorpicker1").colorpicker();
    //color picker with addon
    $(".my-colorpicker2").colorpicker();

    //Timepicker
    $(".timepicker").timepicker({
      showInputs: false
    });
  });
</script>
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
