<?php session_start();?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Battery Records | <?php include('../dist/includes/title.php');?></title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet" href="../dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="../plugins/select2/select2.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="../dist/css/skins/_all-skins.min.css">
    <style>
      
    </style>
 </head>
 <?php include('../dist/includes/dbcon.php');?>
 <?php $branch=$_SESSION['branch'];
$query=mysqli_query($con,"select * from branch where branch_id='$branch'")or die(mysqli_error($con));
  $row=mysqli_fetch_array($query);
           $branch_name=$row['branch_name'];?>
		   

  <!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
  <body class="hold-transition skin-<?php echo $_SESSION['skin'];?> layout-top-nav">
    <div class="wrapper">
      <?php include('../dist/includes/header.php');
      include('../dist/includes/dbcon.php');
      ?>
      <!-- Full Width Column -->
      <div class="content-wrapper">
        <div class="container">
          <!-- Content Header (Page header) -->
          <section class="content-header">
            <h1>
              <a class="btn btn-lg btn-warning" href="home.php">Back</a>
              
            </h1>
            <ol class="breadcrumb">
              <li><a href="home.php"><i class="fa fa-dashboard"></i> Home</a></li>
              <li class="active">Battery</li>
            </ol>
          </section>

          <!-- Main content -->
          <section class="content">
            <div class="row">
            
			
            <div class="col-xs-9">
              <div class="box box-primary">
    
                <div class="box-header">
                  <h3 class="box-title">Battery Record</h3>
                </div><!-- /.box-header -->
                <div class="box-body"style="overflow-x:auto;">
				
                  <table id="example1" class="table table-bordered table-striped" class="table-responsive">
                    <thead>
                      <tr>
					   <th>Vehicle Registration</th>
                        <th>Date</th>
						<th>Battery No.</th>
                        <th>Make</th>
                        <th>Size</th>
						<th>Speedometer Reading</th>
						<th>Comment</th>
						<th>Driver </th>
					
						
						
                      </tr>
                    </thead>
                    <tbody>
<?php
		
		$query=mysqli_query($con,"select * from battery  WHERE branch='$branch_name'")or die(mysqli_error());
		while($row=mysqli_fetch_array($query)){
		
?>
                      <tr>
					  <td><?php echo $row['veh_registration'];?></td>
                        <td><?php echo $row['Date'];?></td>
                        <td><?php echo $row['battery_no'];?></td>
                        <td><?php echo $row['Make'];?></td>
						<td><?php echo $row['Size'];?></td>
						<td><?php echo $row['Speedometer_reading'];?></td>
						<td><?php echo $row['Comment'];?></td>
						<td><?php echo $_SESSION['name'];?></td>
						
						
						
						                       
						
                                    </tr>
				<div id="updateordinance<?php echo $row['id'];?>" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
	<div class="modal-dialog">
	  <div class="modal-content" style="height:auto">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">Update battery Records</h4>
              </div>
              <div class="modal-body"></div>
			  <div>
			  <form class="form-horizontal" method="post" action="battery_update.php" enctype='multipart/form-data'>
			  <li><a><i class="glyphicon glyphicon-stats text-red"></i> </i>Reports per branch <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
					<?php 
					include 'dbcon.php';
						$query1=mysqli_query($con,"select * from branch ORDER BY branch_name")or die(mysqli_error($con));
						while ($row=mysqli_fetch_array($query1)){
						$id=$row['branch_id'];?>
                      <li><a href="inventory.php?id=<?php echo $row['branch_id'];?>"><?php echo $row ['branch_name'];?></a></li>  
					<?php }?>
                    </ul>
                  </li>
          <div class="form-group">
            <select class="form-control select2" style="width:100%" name="veh_registration" required>
                <?php
				include('dist/includes/dbcon.php');

                   $query3=mysqli_query($con,"select * from vehicle_reg order by veh_registration")or die(mysqli_error($con));
                      while($row3=mysqli_fetch_array($query3)){
                ?>
                    <option value="<?php echo $row3['veh_registration'];?>"><?php echo $row3['veh_registration'];?></option>
                  <?php }?>
                </select>
          </div>
		  
                
				<div class="form-group">
					<label for="name">Date</label>
					<div class="input-group col-md-12"><input type="hidden" class="form-control" id="Date" name="Date" value="<?php echo $row['Date'];?>" required>  
					  <input type="Date" class="form-control" id="Date" name="Date" value="<?php echo $row['Date'];?>" required>  
					</div>
				</div> 
			
				<div class="form-group">
                    <label for="date">Battery No.</label>
                    <div class="input-group col-md-12">
                      <textarea class="form-control pull-right" id="battery_no" name="battery_no" placeholder="Battery Number" required><?php echo $row['battery_no'];?></textarea>
                    </div><!-- /.input group -->
                 </div><!-- /.form group -->
               <div class="form-group">
                    <label for="date">Make #</label>
                    <div class="input-group col-md-12">
                      <input type="text" class="form-control pull-right" id="Make" name="Make" placeholder="Make # of Battery" value="<?php echo $row['Make'];?>" required>
                    </div><!-- /.input group -->
                  </div><!-- /.form group -->    
				 <div class="form-group">
                    <label for="date">Size #</label>
                    <div class="input-group col-md-12">
                      <input type="text" class="form-control pull-right" id="Size" name="Size" placeholder="Size # of Battery" value="<?php echo $row['Size'];?>" required>
                    </div><!-- /.input group -->
                  </div><!-- /.form group --> 
				   <div class="form-group">
                    <label for="date">Speedometer_reading #</label>
                    <div class="input-group col-md-12">
                      <input type="text" class="form-control pull-right" id="Size" name="Speedometer_reading" placeholder="Size # of Battery" value="<?php echo $row['Speedometer_reading'];?>" required>
                    </div><!-- /.input group -->
                  </div><!-- /.form group --> 
				   <!-- /.form group --> 
				   <div class="form-group">
                    <label for="date">Comment #</label>
                    <div class="input-group col-md-12">
                      <input type="text" class="form-control pull-right" id="Comment" name="Comment" placeholder="Comment # of Battery" value="<?php echo $row['Comment'];?>" required>
                    </div><!-- /.input group -->
                  </div><!-- /.form group -->
				   <div class="form-group">
                    <label for="date">Station </label>
                    <div class="input-group col-md-12">
                      <input type="text" class="form-control pull-right" id="date" name="branch" value="<?php echo $branch_name;?>" readonly>
                    </div><!-- /.input group -->
                  </div>
				    <div class="form-group">
                    <label for="date">Driver </label>
                    <div class="input-group col-md-12">
                      <input type="text" class="form-control pull-right" id="date" name="branch" value="<?php echo $driver;?>" readonly>
                    </div><!-- /.input group -->
                  </div>
				   
				
              </div><hr>
            <div class="form-group">
                    <div class="input-group">
                      <button class="btn btn-warning" id="daterange-btn" name="">
                        Save
                      </button>
					  <button class="btn btn-warning" id="daterange-btn">
                        Clear
                      </button>
                    </div>
                  </div>
			  </form>
			  </div>
            </div>
			
        </div><!--end of modal-dialog-->
 </div>
 <!--end of modal-->   	  
                 
<?php }?>					  
                    </tbody>
                    <tfoot>
                      <tr>
					  <th>Vehicle Registration</th>
                        <th>Date</th>
                        <th>Battery No</th>
                        <th>Make</th>
                        <th>Size</th>
						<th>Speedometer reading</th>
						<th>Comments</th>
						<th>Driver </th>
					
					
					
						
                      </tr>					  
                    </tfoot>
                  </table>
                </div><!-- /.box-body -->
 
            </div><!-- /.col -->
			
			
          </div><!-- /.row -->
	  <div class="col-md-3">
              <div class="box box-primary">
                <div class="box-header">
                  <h3 class="box-title">Add New Battery </h3>
                </div>
                <div class="box-body">
                  <!-- Date range -->
                  <form method="post" action="battery_add.php" enctype="multipart/form-data">
			 <div class="col-md-4">
          	  
          					  </div
					  <div class="form-group">
					 <div class="form-group">
	            <select class="form-control select2" style="width:80%" name="veh_registration" required>
                <?php
				include('dist/includes/dbcon.php');

                   $query3=mysqli_query($con,"select * from vehicle_reg order by veh_registration")or die(mysqli_error($con));
                      while($row3=mysqli_fetch_array($query3)){
                ?>
                    <option value="<?php echo $row3['veh_registration'];?>"><?php echo $row3['veh_registration'];?></option>
                  <?php }?>
                </select>
          </div>
			<label for="date">Date</label>
						<div class="input-group col-md-12">
						  <input type="Date" class="form-control pull-right" id="Date" name="Date" placeholder="Date" required>
						</div><!-- /.input group -->
					  <!-- /.form group -->
		         <div class="form-group">
                    <label for="date">Battery Number</label>
                    <div class="input-group col-md-12">
                      <input type="text" class="form-control pull-right" id="date" name="battery_no" placeholder="Battery Number" required>
                    </div><!-- /.input group -->
                  </div><!-- /.form group -->
               <div class="form-group">
                    <label for="date"> Make</label>
                    <div class="input-group col-md-12">
                      <input type="text" class="form-control pull-right" id="date" name="Make" placeholder="Make # of battery" required>
                    </div><!-- /.input group -->
                  </div><!-- /.form group -->    
				  <div class="form-group">
                    <label for="date"> Size</label>
                    <div class="input-group col-md-12">
                      <input type="text" class="form-control pull-right" id="date" name="Size" placeholder="Size # of battery" required>
                    <!-- /.input group -->
                  </div><!-- /.form group --> 
				    <div class="form-group">
                    <label for="date"> Speedometer Reading</label>
                    <div class="input-group col-md-12">
                      <input type="text" class="form-control pull-right" id="date" name="Speedometer_reading" placeholder="Speedometer_reading" required>
                    </div><!-- /.input group -->
                  </div><!-- /.form group --> 
				   <div class="form-group">
                    <label for="date">Station </label>
                    <div class="input-group col-md-12">
                      <input type="text" class="form-control pull-right" id="date" name="branch" value="<?php echo $branch_name;?>" readonly>
                    </div><!-- /.input group -->
                  </div>
				     <div class="form-group">
                    <label for="date">Driver </label>
                    <div class="input-group col-md-12">
                      <input type="text" class="form-control pull-right" id="date" name="Driver" value=" <?php echo $_SESSION['name'];?>" readonly>
                    </div><!-- /.input group -->
                  </div>
				    <div class="form-group">
                    <label for="date"> Comment</label>
                    <div class="input-group col-md-12">
                       <textarea class="form-control pull-right" id="date" name="Comment" placeholder="Comment" required></textarea>
                    </div><!-- /.input group -->
                  </div><!-- /.form group --> 
					  <div class="form-group">
                    <div class="input-group">
                      <button class="btn btn-warning" id="daterange-btn" name="">
                        Save
                      </button>
					  <button class="btn btn-warning" id="daterange-btn">
                        Clear
                      </button>
                    </div>
                  </div><!-- /.form group -->
				  </form>	
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col (right) -->
            
          </section><!-- /.content -->
        </div><!-- /.container -->
      </div><!-- /.content-wrapper -->
      <?php include('../dist/includes/footer.php');?>
    </div><!-- ./wrapper -->

    <!-- jQuery 2.1.4 -->
    <script src="../plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    <script src="../plugins/select2/select2.full.min.js"></script>
    <!-- SlimScroll -->
    <script src="../plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="../plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="../dist/js/app.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="../dist/js/demo.js"></script>
    <script src="../plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="../plugins/datatables/dataTables.bootstrap.min.js"></script>
    
    <script>
      $(function () {
        $("#example1").DataTable();
        $('#example2').DataTable({
          "paging": true,
          "lengthChange": false,
          "searching": false,
          "ordering": true,
          "info": true,
          "autoWidth": false
        });
      });
    </script>
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
        $('#reservationtime').daterangepicker({timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A'});
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
          $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
        }
        );

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
  </body>
</html>
