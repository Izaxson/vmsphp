<?php session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;
$name=$_SESSION['name'];
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Edit Trip | <?php include('../dist/includes/title.php');?></title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=YES" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet" href="../dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="../dist/css/skins/_all-skins.min.css">
    <style>
      
    </style>
 </head>
  <!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
  <body class="hold-transition skin-<?php echo $_SESSION['skin'];?> layout-top-nav">
    <div class="wrapper">
      <?php include('../dist/includes/header.php');?>
      <!-- Full Width Column -->
      <div class="content-wrapper">
        <div class="container">
          <!-- Content Header (Page header) -->
          <section class="content-header">
            <h1>
              <a class="btn btn-lg btn-warning" href="home.php">Back</a>
              <a class="btn btn-lg btn-primary" href="new_trip.php" data-target="new_trip.php" data-toggle="modal" style="color:#fff;" class="small-box-footer"><i class="glyphicon glyphicon-plus text-blue"></i></a>
            </h1>
            <ol class="breadcrumb">
              <li><a href="dashboard.php"><i class="fa fa-dashboard"></i> Home</a></li>
              <li class="active">edit trip</li>
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
                <div class="box-body">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
					 <th>Trip ID</th>
					   <th>Vehicle Registration</th>
						<th>Date</th>
                        <th>First Reading </th>
                        <th>Second Reading</th>
						<th>Distance</th>
						<th>Time out </th>
			            <th>Time In </th>
                        <th>Purpose of Journey </th>
						<th>Driver</th>
						
						
						<th>Application Status</th>
						<th>Edit</th>
						
                      </tr>
                    </thead>
                    <tbody>
<?php
		
		$query=mysqli_query($con,"select * from trips  where branch='$branch_name' and Application_status='Pending' order by id")or die(mysqli_error());
		while($row=mysqli_fetch_array($query)){
		
?>
             <td><input type="hidden" name="id" value="<?php echo $id; ?>"></td>
			 <tr>
                      	<td>TripID000<?php echo $row['id'];?></td>
                         <td><?php echo $row['veh_registration'];?></td>
						<td><?php echo $row['Date'];?></td>
						<td><?php echo $row['first_reading'];?></td>
						<td><?php echo $row['Second_reading'];?></td>
						<td><?php echo $row['distance'];?></td>
						<td><?php echo $row['time_out'];?></td>
						<td><?php echo $row['time_in'];?></td>
						<td><?php echo $row['Purpose_of_journey'];?></td>
						
						 <td><?php echo $row['driver'];?></td>
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
					 
                       <td>
				<a href="#updateordinance<?php echo $row['id'];?>" data-target="#updateordinance<?php echo $row['id'];?>" data-toggle="modal" class="btn btn-info">Edit</a>
			
						</td>
          </tr>
	
<div id="updateordinance<?php echo $row['id'];?>" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
	<div class="modal-dialog">
	  <div class="modal-content" style="height:auto">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">Edit Trip</h4>
              </div>
              <div class="modal-body">
			  <form class="form-horizontal" method="post" action="update_trip.php" enctype='multipart/form-data'>
        <div class="form-group">
          <label class="control-label col-lg-3" for="price"> Registration</label>
          <div class="col-lg-9">
            <input type="text" class="form-control" id="price" name="veh_registration" value="<?php echo $row['veh_registration'];?>" >  
          </div>
        </div>
		<div class="form-group">
          <label class="control-label col-lg-3" for="price">Date</label>
          <div class="col-lg-9">
            <input type="text" class="form-control" id="price" name="Date" value="<?php echo $row['Date'];?>"readonly >  
          </div>
        </div>
		<div class="form-group">
          <label class="control-label col-lg-3" for="price">First Reading</label>
          <div class="col-lg-9">
            <input type="text" class="form-control" id="price" name="first_reading" value="<?php echo $row['first_reading'];?>" >  
          </div>
        </div>
		<div class="form-group">
          <label class="control-label col-lg-3" for="price">Second Reading</label>
          <div class="col-lg-9">
            <input type="text" class="form-control" id="price" name="Second_reading" value="<?php echo $row['Second_reading'];?>" >  
          </div>
        </div>
          <div class="form-group">
          <label class="control-label col-lg-3" for="price">Time out</label>
          <div class="col-lg-9">
            <input type="text" class="form-control" id="price" name="time_out" value="<?php echo $row['time_out'];?>"  >  
          </div>
        </div>  
	<div class="form-group">
          <label class="control-label col-lg-3" for="price">Time in</label>
          <div class="col-lg-9">
            <input type="text" class="form-control" id="price" name="time_in" value="<?php echo $row['time_in'];?>" >  
          </div>
        </div>   
			<div class="form-group">
          <label class="control-label col-lg-3" for="price">Purpose</label>
          <div class="col-lg-9">
            <input type="text" class="form-control" id="price" name="Purpose_of_journey" value="<?php echo $row['Purpose_of_journey'];?>" >  
          </div>
        </div> 
			<div class="form-group">
          <label class="control-label col-lg-3" for="price">Driver </label>
          <div class="col-lg-9">
            <input type="text" class="form-control" id="price" name="driver" value="<?php echo $row['driver'];?>" readonly>  
          </div>
        </div> 
			<div class="form-group">
          <label class="control-label col-lg-3" for="price">Branch</label>
          <div class="col-lg-9">
            <input type="text" class="form-control" id="price" name="branch" value="<?php echo $row['branch'];?>" readonly >  
          </div>
        </div> 
			<div class="form-group">
          <label class="control-label col-lg-3" for="price">Application status</label>
          <div class="col-lg-9">
            <input type="text" class="form-control" id="price" name="Application_status" value="<?php echo $row['Application_status'];?>" readonly>  
          </div>
        </div> 
		
		
		
				
				<br><br><br><br><br><br><br><br>
              </div><br><br><br><br><br><br><br><br>
              <div class="modal-footer">
		<button type="submit" class="btn btn-warning">Save changes</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              </div>
			  </form>
            </div>
			
        </div> <!--end of modal-->                    
<?php }?>					  
                    </tbody>
                    <tfoot>
                   <tr>
					 <th>Trip ID</th>
					   <th>Vehicle Registration</th>
						<th>Date</th>
                        <th>First Reading </th>
                        <th>Second Reading</th>
						<th>Distance</th>
						<th>Time out </th>
			            <th>Time In </th>
                        <th>Purpose of Journey </th>
						<th>Driver</th>
						<th>Application Status</th>
						<th>Edit</th>
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
