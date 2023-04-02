<?php session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;
$name=$_SESSION['name'];
?>
<!DOCTYPE html>
<html>
<?php
include('../dist/includes/dbcon.php');

$branch=$_SESSION['branch'];
$query=mysqli_query($con,"select * from branch where branch_id='$branch'")or die(mysqli_error($con));
  $row=mysqli_fetch_array($query);
           $branch_name=$row['branch_name'];
?>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>My Trip  | <?php include('../dist/includes/title.php');?></title>
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
	  include('../dist/includes/dbcon.php');?>
      <!-- Full Width Column -->
      <div class="content-wrapper">
        <div class="container">
          <!-- Content Header (Page header) -->
             <section class="content-header">
            <h1>
              <a class="btn btn-lg btn-warning" href="home.php">Back</a>
              
            </h1>
            <ol class="breadcrumb">
              <li><a href="home.php"><i class="fa fa-dashboard"></i>My Trips</a></li>
              <li class="active">trips</li>
            </ol>
          </section>


          <!-- Main content -->
          <section class="content">
            <div class="row">
	     
            
            <div class="col-xs-12">
              <div class="box box-primary">
    
                <div class="box-header">
                  <h3 class="box-title">Edit Trip </h3>
                </div><!-- /.box-header -->
                <div class="box-body"style="overflow-x:auto;">
  <table   id="example1" class="table table-bordered table-striped">
                    <thead class='responsive'>
                      <tr>
					
					   <th>Vehicle Registration</th>
						<th>Date</th>
                        <th>First Reading </th>
                        <th>Second Reading</th>
						<th>Distane</th>
						<th>Time out </th>
			            <th>Time In </th>
                        <th>Purpose of Journey </th>
						<th>Driver</th>
						<th>Station</th>
						<th>Application Status</th>
						<th>Action by</th>
						

                      </tr>
                    </thead>
                    <tbody>
<?php
		
		$query=mysqli_query($con,"select * from trips WHERE branch='$branch_name' and driver='$name' ")or die(mysqli_error());
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
					
						 <td><?php echo $row['driver'];?></td>
						 <td><?php echo $row['branch'];?></td>
					 <td><?php 
							if ($row['Application_status']=='Approved') 
							echo "<span class='badge bg-green'>Approved</span>";
							elseif($row['Application_status']=='Pending'){
							echo "<span class='badge bg-orange'>Pending</span>"; 
                         } 
                         else
                          echo "<span class='badge bg-red'>Rejected</span>";
                        ?>

                      </td>
					  <td><?php echo $row['Approved_by'];?></td>
						
						
						                       
						
                       <!-- <td>
				
				<a href="#updateordinance<?php echo $row['id'];?>" data-target="#updateordinance<?php echo $row['id'];?>" data-toggle="modal" style="color:#fff;" class="small-box-footer"><i class="glyphicon glyphicon-edit text-blue"></i></a>
				
						</td>-->
                      </tr>
				<div id="updateordinance<?php echo $row['id'];?>" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">

 <!--end of modal-->   	  
                 
<?php }?>					  
                    </tbody>
                    <tfoot>
                      <tr>
					
					   <th>Vehicle Registration</th>
						<th>Date</th>
                        <th>First Reading </th>
                        <th>Second Reading</th>
						<th>Distane</th>
						<th>Time out </th>
                        <th>Time In </th>
                        <th>Purpose of Journey </th>
						<th>Driver</th>
						<th>Station</th>
						<th>Application Status</th>
						<th>Actioned  by</th>
						
                      </tr>					  
                    </tfoot>
                  </table>
                </div><!-- /.box-body -->
 
            </div><!-- /.col -->
			
			
          </div><!-- /.row -->
	  
            
          </section><!-- /.content -->
        </div><!-- /.container -->
      </div><!-- /.content-wrapper -->
   
    </div><!-- ./wrapper -->

		<?php include('../dist/includes/footer.php');?>
 </div>
 
 <!--end of modal--> 
    <!-- jQuery 2.1.4 -->
    <script src="../plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="../bootstrap/js/bootstrap.min.js"></script>
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
  </body>
</html>
