<?php session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;
if(empty($_SESSION['branch'])):
header('Location:../index.php');
endif;
?>
<script src="../dist/js/date_time.js"></script> 
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>calculator | <?php include('../dist/includes/title.php');?></title>
	<link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=yes" name="viewport">
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
      <?php include('../dist/includes/header.php');?>
      <!-- Full Width Column -->
      <div class="content-wrapper">
        <div class="container">
          <!-- Content Header (Page header) -->
          <section class="content-header">
            <h1>
              <a class="btn btn-lg btn-warning" href="home.php">Back</a>
			   <a class="btn btn-lg btn-warning" href="#">Distance Calculator</a>
              
            </h1>
            <ol class="breadcrumb">
              <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
              <li class="active">Calculator  
			  </li>
            </ol>
          </section>

          <!-- Main content -->
          <section class="content">
            <div class="row">
	      <div class="col-md-4">
              <div class="box box-primary">
                <div class="box-header">
                  <h3 class="box-title">Distance Calculator </h3>
                </div>
                <div class="box-body">
                
                  <form method="post" action="calc.php" enctype="multipart/form-data">
  
               
				  <!-- /.form group -->
				
                    <label for="date">First Reading</label>
                    <div class="input-group col-md-12">
                       <input type="number" class="form-control pull-right" id="date" name="first_reading" placeholder="First Speedometer  Reading" required>
                    </div><!-- /.input group -->
                  
				    <div class="form-group">
                    <label for="date">Second Reading</label>
                    <div class="input-group col-md-12">
                       <input type="number" class="form-control pull-right" id="date" name="Second_reading" placeholder="Second Speedometer  Reading" required>
                    </div><!-- /.input group -->
                  </div>
				  <div class="form-group">
                    <label for="date">Distance </label>
                    <div class="input-group col-md-12">
                       <input type="text" class="form-control pull-right" id="date" name="distance" value="<?php echo $distance;?>" required>
                    </div><!-- /.input group -->
                  </div>
				
				
				<div class="input-group">
                      <button class="btn btn-info" id="daterange-btn" name="calculate">
                        Calculate
                      </button>
					  
					  
					  
                    </div>
					 </form>
				<p>The Distance Covered is:</p>
<?php      echo $distance ?>
 
                  </div>
				  </div>
				  </div>
				  </section>
				  </body>
				  </html>