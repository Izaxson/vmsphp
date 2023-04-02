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
    <title>Trip Application | <?php include('../dist/includes/title.php');?></title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../plugins/datatables/dataTables.bootstrap.css">
    
    <link rel="stylesheet" href="../plugins/select2/select2.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    
    <style>
      
    </style>
 </head>
  <!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
  <body>
    <div class="wrapper">
      <?php 
      include('../dist/includes/dbcon.php');
      ?>
      <!-- Full Width Column -->
      <div class="content-wrapper">
        <div class="container">
          <!-- Content Header (Page header) -->

          <!-- Main content -->
          <section class="content">
            <div class="row">
	           <div class="col-md-12">
              <div class="box box-primary">
                <div class="box-header with-border">
                  <h3 class="box-title">Trip Application</h3>
                </div>
  <?php          
      $id=$_GET['id'];
      $query=mysqli_query($con,"select * from trips where id='$id'")or die(mysqli_error());  
        $row=mysqli_fetch_array($query);
        
  ?>      

                <div class="box-body">
                  <!-- Date range -->
                  <form method="post" action="trip_add.php" enctype="multipart/form-data" class="form-horizontal">
                  <div class="row">
                    <div class="col-md-4">
          					  <label for="date">Vehicle Registration Number</label>
                      <div class="input-group col-md-12">
            						<div class="input-group col-sm-12">
            						  <?php echo $row['veh_registration'];?>
            						</div><!-- /.input group -->
          					  </div><!-- /.form group -->
                    </div>
                    
                    <div class="col-md-4">  
                      <label for="date">Date</label>

                    <div class="input-group col-md-12">
                          <?php echo $row['Date'];?>
                      </div><!-- /.input group -->
                    </div>
                      <div class="col-md-4">  
                      <label for="date">First Reading</label>
                      <div class="input-group col-md-12">
                          <?php echo $row['first_reading'];?>
                        </div><!-- /.input group -->
                      </div><!-- /.form group -->
                    </div>
                    
					  <div class="row">
                    <div class="col-md-4">  
                      <label for="date">Second  Reading</label>
                      <div class="input-group col-md-12">
                          <?php echo $row['Second_reading'];?>
                      </div><!-- /.input group -->
                    </div>
					<div class="row">
                    <div class="col-md-4">  
                      <label for="date">Distance</label>
                      <div class="input-group col-md-12">
                          <?php echo $row['distance'];?>
                      </div><!-- /.input group -->
                    </div>
					<div class="row">
                    <div class="col-md-4">  
                      <label for="date">Time Out</label>
                      <div class="input-group col-md-12">
                          <?php echo $row['time_out'];?>
                      </div><!-- /.input group -->
                    </div>
                  </div><!--row-->
                  
<div class="col-md-4">  
                      <label for="date">Time In</label>
                      <div class="input-group col-md-12">
                          <?php echo $row['time_in'];?>
                      </div><!-- /.input group -->
                    </div>
                                    
                   </div>
                  <div class="row">
                   
                    
                  <div class="col-md-12">
                      <label for="date">Purpose of Journey</label>
                      <div class="input-group col-md-12">
                          <?php echo $row['Purpose_of_journey'];?>
                        </div>
                    </div>
					
					 <div class="col-md-6">
                      <label for="date">branch</label>
                      <div class="input-group col-md-12">
                          <?php echo $row['branch'];?>
                        </div>  
                      </div>
                  </div><!--row-->
				 
				  
                  <div class="row">
                  
                    

                    
                    
                    
                    <div class="col-md-6">
                      <label for="date">Application status #</label>
                      <div class="input-group col-md-12">
                          <?php echo $row['Application_status'];?>
                        </div>  
                      </div>
                    
                    
                  </div><!--row-->     
                    
					
				  </form>	

                
        
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div>
          
            
            

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
