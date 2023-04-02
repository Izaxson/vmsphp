 <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="#" class="site_title"><i class="fa fa-cog"></i> <span>Supervisor</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="images/manager.png" height='76' width='66' alt="..." class="img-circle profile_img">	
              </div>
			<!--   <?php
    $branch_name=$_SESSION['branch_name'];
    $query=mysqli_query($con,"select * from branch where branch_id='$branch_name'")or die(mysqli_error());
      $row=mysqli_fetch_array($query);
      
?>-->
              <div class="profile_info">
                <span>Welcome</span>
                <h2><?php echo $user_username;?></h2>
				<h2><?php echo $branch_name;?></h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <?php include 'sidebar.php';?>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
           <?php include 'sidebar2.php';?>
            <!-- /menu footer buttons -->
          </div>
        </div>