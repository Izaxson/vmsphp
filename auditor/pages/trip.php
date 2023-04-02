<?php session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Trips | <?php include('../dist/includes/title.php');?></title>
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
              <a class="btn btn-lg btn-primary" href="application.php">Add Trip </a>
            </h1>
            <ol class="breadcrumb">
              <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
              <li class="active">Trip</li>
            </ol>
          </section>

          <!-- Main content -->
          <section class="content">
            <div class="row">
	          
			
            <div class="col-xs-12">
              <div class="box box-primary">
    
                <div class="box-header">
                  <h3 class="box-title">Trips List</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th>Vehicle Registration</th>
						<th>Date</th>
                        <th>First Reading </th>
                        <th>Second Reading</th>
						<th>Distance(Kms) </th>
						<th>Time out </th>
                        <th>Time In </th>
                        <th>Purpose of Journey </th>
						<th>Application Status</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
<?php
		
		$query=mysqli_query($con,"select * from trips")or die(mysqli_error());
		while($row=mysqli_fetch_array($query)){
		
?>
                      <tr>
					  <td><?php echo $row['veh_registration'];?></td>
                        <td><?php echo $row['Date'];?></td>
                        <td><?php echo $row['first_reading'];?></td>
                        <td><?php echo $row['Second_reading'];?></td>
						<td><?php echo $row['distance'];?></td>
						<td><?php echo $row['time_out'];?></td>
						<td><?php echo $row['time_in'];?></td>
						<td><?php echo $row['Purpose_of_journey'];?></td>
						<td><?php echo $row['Application_status'];?></td>
						
						                       
						
                      <td>
				<a href="<?php if ($row['credit_status']=='Approved') echo "account_summary.php?veh_registration=$veh_registration";?>"><i class="glyphicon glyphicon-share-alt text-green"></i></a>
				<a href="#updateordinance<?php echo $row['veh_registration'];?>" data-target="#updateordinance<?php echo $row['veh_registration'];?>" data-toggle="modal" style="color:#fff;" class="small-box-footer"><i class="glyphicon glyphicon-edit text-orange"></i></a>
                <a href="view_application.php?cid=<?php echo $row['veh_registration'];?>" class="small-box-footer"><i class="glyphicon glyphicon-eye-open text-primary"></i></a>

				
						</td>
                      </tr>
					  <div class="col-md-3">
              <div class="box box-primary">
                <div class="box-header">
                  <h3 class="box-title">Add New Trip </h3>
                </div>
                <div class="box-body">
                  <!-- Date range -->
                  
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col (right) -->
            
          </section><!-- /.content -->
        </div>
			<!--	<div id="updateordinance<?php echo $row['cust_id'];?>" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
	<div class="modal-dialog">
	  <div class="modal-content" style="height:400px">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">Update CI Details</h4>
              </div>
              <div class="modal-body">
			  <form class="form-horizontal" method="post" action="ci_update.php" enctype='multipart/form-data'>
        <div class="form-group">
          <label class="control-label col-lg-3" for="name">CI Name</label>
          <div class="col-lg-9">
            <input type="text" class="form-control" id="id" name="name" value="<?php echo $row['ci_name'];?>" placeholder="Name of CI"> 
          </div>
        </div>        
				<div class="form-group">
					<label class="control-label col-lg-3" for="name">CI Remarks</label>
					<div class="col-lg-9">
						<input type="hidden" class="form-control" id="id" name="id" value="<?php echo $row['cust_id'];?>" required>  
						<textarea class="form-control" id="name" name="ci"><?php echo $ci;?></textarea> 
					</div>
				</div>
        <div class="form-group">
          <label class="control-label col-lg-3" for="name">CI Date</label>
          <div class="col-lg-9">
            <input type="date" class="form-control" id="id" name="date" value="<?php echo $row['ci_date'];?>" 
          </div>
        </div>        
				<div class="form-group">
					<label class="control-label col-lg-3" for="name">Requirements</label>
					<div class="col-lg-9">
						
					</div>
				</div>				
        <div class="form-group">
          <label class="control-label col-lg-3" for="name"></label>
          <div class="col-lg-9">
            <input type="checkbox" class="form-check" id="name" name="payslip" value="1" <?php echo $payslip1;?>>  Payslip
          </div>
        </div>        
        <div class="form-group">
          <label class="control-label col-lg-3" for="name"></label>
          <div class="col-lg-9">
            <input type="checkbox" class="form-check" id="name" name="valid_id" value="1" <?php echo $valid_id1;?>> 2 Valid ID 
          </div>
        </div>        
        <div class="form-group">
          <label class="control-label col-lg-3" for="name"></label>
          <div class="col-lg-9">
            <input type="checkbox" class="form-check" id="name" name="cert" value="1" <?php echo $cert1;?>> Brgy. Certificate 
          </div>
        </div>        
        <div class="form-group">
          <label class="control-label col-lg-3" for="name"></label>
          <div class="col-lg-9">
            <input type="checkbox" class="form-check" id="name" name="cedula" value="1" <?php echo $cedula1;?>>  Cedula
          </div>
        </div>        
        <div class="form-group">
          <label class="control-label col-lg-3" for="name"></label>
          <div class="col-lg-9">
            <input type="checkbox" class="form-check" id="name" name="income" value="1" <?php echo $income1;?>>  Proof of Income
          </div>
        </div>        
				
				
              </div><br><br><br><hr>
              <div class="modal-footer">
		<button type="submit" class="btn btn-primary">Save changes</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              </div>
			  </form>
            </div>
			
        </div><!--end of modal-dialog-->
 </div>-->
 <!--end of modal-->   	  
                 
<?php $i++;}?>					  
                    </tbody>
                    <tfoot>
                       <th>Vehicle Registration</th>
						<th>Date</th>
                        <th>First Reading </th>
                        <th>Second Reading</th>
						<th>Distance(Kms) </th>
						<th>Time out </th>
                        <th>Time In </th>
                        <th>Purpose of Journey </th>
						<th>Application Status</th>
                        <th>Action</th>				  
                    </tfoot>
                  </table>
                </div><!-- /.box-body -->
 
            </div><!-- /.col -->
			
			
          </div><!-- /.row -->
	 
            
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
