<?php session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;
if(empty($_SESSION['branch'])):
header('Location:../index.php');
endif;
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Home | <?php include('../dist/includes/title.php');?></title>
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
      .col-lg-3{
        margin:50px 0px;
      }
      
    </style>
 </head>
  <!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
  <body class="hold-transition skin-<?php echo $_SESSION['skin'];?> layout-top-nav" onload="myFunction()">
    <div class="wrapper">
      <?php include('../dist/includes/header.php');?>
      <!-- Full Width Column -->
      <div class="content-wrapper">
        <div class="container">
          <!-- Content Header (Page header) -->
         

          <!-- Main content -->
          <section class="content">
            <div class="row">
	      <div class="col-md-8">
              <div class="box box-primary">
                <div class="box-header with-border">
                  <h3 class="box-title"></h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <div class="row">
                    <div class="col-lg-4 col-xs-6">
                        
                         <div class="small-box bg-orange">
                          <div class="inner">
                            <h3>Vehicles</h3>
                            <p>View/Add</p>
                          </div>
                          <div class="icon" style="margin-top:10px">
                            <i class="glyphicon glyphicon-share-alt"></i>
							<i class="fas fa-car"></i>
                          </div>
                          <a href="vehicles.php" class="small-box-footer">
                            Go <i class="fa fa-arrow-circle-right"></i>
                          </a>
                        </div>
                      </div><!-- ./col -->



                      <div class="col-lg-4 col-xs-6">
                        <!-- small box -->
                        <div class="small-box bg-red">
                          <div class="inner">
                            <h3>Service</h3>
                            <p>Add/view</p>
                          </div>
                          <div class="icon" style="margin-top:10px">
                            <i class="glyphicon glyphicon-share-alt"></i>
                          </div>
                          <a href="service.php" class="small-box-footer">
                           Go <i class="fa fa-arrow-circle-right"></i>
                          </a>
                        </div>
                      </div><!-- ./col -->
                      
                      <div class="col-lg-4 col-xs-6">
                        <!-- small box -->
                        <div class="small-box bg-yellow">
                          <div class="inner">
                            <h3>Fuel</h3>
                            <p>Fuel Log </p>
                          </div>
                          <div class="icon" style="margin-top:10px">
                            <i class="glyphicon glyphicon-usd"></i>
                          </div>
                          <a href="fuel.php" class="small-box-footer">
                            Go <i class="fa fa-arrow-circle-right"></i>
                          </a>
                        </div>
                      </div><!-- ./col -->
                      <div class="col-lg-4 col-xs-6">
                        <!-- small box -->
                        <div class="small-box bg-red">
                          <div class="inner">
                            <h3>Trips  </h3>
                            <p>Add/view</p>
                          </div>
                          <div class="icon" style="margin-top:10px">
                            <i class="glyphicon glyphicon-usd"></i>
                          </div>
                          <a href="trip.php" class="small-box-footer">
                            Go <i class="fa fa-arrow-circle-right"></i>
                          </a>
                        </div>
                      </div><!-- ./col -->

                      <div class="col-lg-4 col-xs-6">
                        <!-- small box -->
                       

                      </div>
					   <div class="col-lg-4 col-xs-6">
                        
                        <div class="small-box bg-green">
                          <div class="inner">
                            <h3>Trips </h3>
                            <p>Add/View</p>
                          </div>
                          <div class="icon" style="margin-top:10px">
                            <i class="glyphicon glyphicon-user"></i>
                          </div>
                          <a href="trip.php" class="small-box-footer">
                            Go <i class="fa fa-arrow-circle-right"></i>
                          </a>
                        </div>
                      </div><!-- ./col -->
                  </div><!--row-->
                  
      
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col (right) -->
            
        <div class="col-md-4">

              
              <!-- About Me Box -->
              <div class="box box-primary">
                <div class="box-header with-border">
                  <h3 class="box-title">About Us</h3>
                </div><!-- /.box-header -->
    <?php
    $branch=$_SESSION['branch'];
    $query=mysqli_query($con,"select * from branch where branch_id='$branch'")or die(mysqli_error());
      $row=mysqli_fetch_array($query);
      
?>
                <div class="box-body">
                  <strong><i class="glyphicon glyphicon-map-marker margin-r-5"></i> Company Address</strong>
                  <p class="text-muted">
                    <?php echo $row['branch_address'];?>
                  </p>

                  <hr>

                  <strong><i class="glyphicon glyphicon-phone-alt margin-r-5"></i> Contact Number/s</strong>
                  <p class="text-muted"><?php echo $row['branch_contact'];?></p>

                  <hr>

                  
                </div><!-- /.box-body -->
              </div><!-- /.box -->
			 <p> <b>INSTRUCTIONS:</b></p>
			<b> <ul>
			 <li><P>Jourmey Logs must be recorded  at all times<br></li>
			<li>The officer in charge of the Transport Department is responsible for ensuring that the records entered are correct and accurate</li>
			<li>All Records should be well document in the motor vehicle log-book for each station/Department</li></b>
			 </ul>
			   <img src="Capture.PNG" alt="sgs logo" width="450" height="120">
            </div>   
			
			
          </div><!-- /.row -->
	  
            
          </section><!-- /.content -->
        </div><!-- /.container -->
      </div><!-- /.content-wrapper -->
      <?php include('../dist/includes/footer.php');?>
    </div><!-- ./wrapper -->
	<script>
    $(function() {
      $(".btn_delete").click(function(){
      var element = $(this);
      var id = element.attr("id");
      var dataString = 'id=' + id;
      if(confirm("Sure you want to delete this item?"))
      {
	$.ajax({
	type: "GET",
	url: "temp_trans_del.php",
	data: dataString,
	success: function(){
		
	      }
	  });
	  
	  $(this).parents(".record").animate({ backgroundColor: "#fbc7c7" }, "fast")
	  .animate({ opacity: "hide" }, "slow");
      }
      return false;
      });

      });
    </script>
	
	<script type="text/javascript" src="autosum.js"></script>
  
    <!-- jQuery 2.1.4 -->
    <script src="../plugins/jQuery/jQuery-2.1.4.min.js"></script>
	<script src="../dist/js/jquery.min.js"></script>
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
