<?php
//session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;
date_default_timezone_set("Africa/Nairobi"); 
?>
<?php
include('../dist/includes/dbcon.php');

$branch=$_SESSION['branch'];
$query=mysqli_query($con,"select * from branch where branch_id='$branch'")or die(mysqli_error($con));
  $row=mysqli_fetch_array($query);
           $branch_name=$row['branch_name'];
		  $driver=$_SESSION['name'];	
		//  $veh_registration=$row['veh_registration'];
		//  $Next_service=$row['Next_service'];
?>

      <header class="main-header">
        <nav class="navbar navbar-static-top">
          <div class="container">
            <div class="navbar-header" style="padding-left:20px">
              <a href="home.php" class="navbar-brand"><b><i class="glyphicon glyphicon-home"></i> <?php echo $branch_name;?> <br></b></a>
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
                <i class="fa fa-bars"></i>
              </button>
			
            </div>
				  
            <!-- Navbar Right Menu -->
              <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                  <!-- Messages: style can be found in dropdown.less-->
				  <li class="">
                
                    <a href="home.php" class="dropdown-toggle">
                      <i class="glyphicon glyphicon-list-alt text-orange "></i>
                      Dashboard
                    </a>
                  </li>
                  <!-- Notifications Menu -->
                  				    <!-- Tasks Menu -->
				   <li class="dropdown notifications-menu">
                    <!-- Menu toggle button -->
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                     <i class="glyphicon glyphicon-refresh text-orange"></i> Trips
                      
                    </a>
                    <ul class="dropdown-menu">
                      <li>
                        <!-- Inner Menu: contains the notifications -->
                        <ul class="menu">
						  <!-- end notification -->
						      <!-- end notification -->
                          <li><!-- start notification -->
                            <a href="new_trip.php">
                            <i class="glyphicon glyphicon-list text-orange"></i>  Add New Trip </a>
                          </li><!-- end notification -->
						  <li><!-- start notification -->
                            <a href="trip.php">
                               <i class="glyphicon glyphicon-list text-orange"></i>View Trips</a>
                          </li><!-- end notification -->

						   
						 		<!-- start notification -->
                           <!--<li><!-- start notification -->
                            <!-- <a href="tripedit.php">
                               <i class="glyphicon glyphicon-list text-orange"></i>Edit Trips</a>
                          </li>--><!-- end notification -->
                          	                         
						   </ul>
						  
                      </li>
					  
                     
                    </ul>
					  <!-- Notifications Menu -->
                 
					
				   <li class="dropdown notifications-menu">
                    <!-- Menu toggle button -->
                    <a href="fuel.php">
                      <i class="glyphicon glyphicon-list text-orange"></i> Fuel Log
                      
                    </a>
                    <ul class="dropdown-menu">
                      <li>
                      </li>
                     
                    </ul>
                  </li>
                  </li>
				   
                  <!-- Tasks Menu -->
				   <li class="dropdown notifications-menu">
                    <!-- Menu toggle button -->
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="glyphicon glyphicon-wrench text-orange"></i> Maintenance
                      
                    </a>
                    <ul class="dropdown-menu">
                      <li>
                        <!-- Inner Menu: contains the notifications -->
                        <ul class="menu">
						  <!-- end notification -->
						      <!-- end notification -->
                          <li><!-- start notification -->
                            <a href="service.php">
                              <i class="glyphicon glyphicon-list text-orange"></i> Record of Repairs/Service
                            </a>
                          </li><!-- end notification -->
						  <li><!-- start notification -->
                            <a href="tools.php">
                              <i class="glyphicon glyphicon-list text-orange"></i>List of Tools
                            </a>
                          </li><!-- end notification -->
						 		 <li><!-- start notification -->
                            <a href="battery.php">
                              <i class="glyphicon glyphicon-list text-orange"></i> Record of Battery
                            </a>
							<a href="tyres.php">
                              <i class="glyphicon glyphicon-list text-orange"></i> Record of Tyres
                            </a>
                          </li>		                         
						   </ul>
						  
                      </li>
                     
                    </ul>
                  </li>
                  <!-- Tasks Menu -->
				   <!-- Tasks Menu -->
				  
				    <li class="dropdown notifications-menu">
                    <!-- Menu toggle button -->
                    <a href="occurence.php">
                    <i class="glyphicon glyphicon-list text-orange"></i> Occurence 
                      
                    </a>
                    <ul class="dropdown-menu">
                      <li>
                      </li>
                     
                    </ul>
                  </li>
                 
                        
                  <!-- Tasks Menu -->
				  
				   
				      <li class="dropdown notifications-menu">
                    <!-- Menu toggle button -->
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="glyphicon glyphicon-bell text-orange"></i> Notifications
					  
                      <span class="label label-danger">
                      <?php 
                      $query=mysqli_query($con,"select COUNT(*) as count from trips where Application_status='Pending' and branch='$branch_name' ")or die(mysqli_error());
                			$row=mysqli_fetch_array($query);
                			echo $row['count'];
                			?>	
                      </span>
                    </a>
                    <ul class="dropdown-menu">
                      <li class="header">You have <?php echo$row['count'];?> Trip Pending Approval</li>
                      <li>
                        <!-- Inner Menu: contains the notifications -->
                        <ul class="menu">
                        <?php
                        $queryprod=mysqli_query($con,"select veh_registration  from trips where Application_status='Pending' and branch='$branch_name'  ")or die(mysqli_error());
			  while($rowprod=mysqli_fetch_array($queryprod)){
			?>
                          <li><!-- start notification -->
                            <a href="trip.php">
                              <i class="glyphicon glyphicon-refresh text-orange"></i> <?php echo $rowprod['veh_registration'];?>
                            </a>
                          </li><!-- end notification -->
                          <?php }?>
                        </ul>
                      </li>
                      <li class="footer"><a href="trip.php">View all</a></li>
                    </ul>
                  </li>
				  <li class="">
                    <!-- Menu Toggle Button -->
                    <a href="profile.php" class="dropdown-toggle">
					<i class="glyphicon glyphicon-cog text-orange"></i>
                  Profile
                    </a>
                  </li>
                  <li class="">
                    <!-- Menu Toggle Button -->
                    <a href="logout.php" class="dropdown-toggle">
                      <i class="glyphicon glyphicon-off text-orange"></i> Logout 
                      
                    </a>
                  </li>
				                     
                </ul>
              </div><!-- /.navbar-custom-menu -->
          </div><!-- /.container-fluid -->
        </nav>
      </header>