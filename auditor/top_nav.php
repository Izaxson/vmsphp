 <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
				 <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="images/admin.png" alt=""><?php echo $user_username; ?>
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                
                      <li><a href="logout.php"><i class="fas fa-sign-out-alt"></i> Log Out</a></li>
					 <li><a href="profile.php"> <i class="fas fa-id-badge"></i> My Profile </a></li>
                  </ul>
                </li>               
              </ul>
            </nav>
          </div>
 </div>