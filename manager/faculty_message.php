<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Message - <?php include('dist/includes/title.php');?></title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    
    <!-- Font Awesome -->
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
  <body class="hold-transition login-page">
    <div class="row">
			<div class="col-xs-6 pull-right">
			 <button type="#" class="btn btn-primary btn-block btn-flat" name="#" <i class="fa fa-dashboard"> <a href="admin\index.php">Admin Account Login</button></i>
			 
            </div><!-- /.col -->
			<div class="col-xs-6 pull-right">
              <button type="#" class="btn btn-primary btn-block btn-flat" name="#" ><a href="dm\index.php">DM Account Login</button>
            </div><!-- /.col -->
          </div>
    <div class="login-box">
      <div class="login-logo">
	  <img src="Capture.PNG" alt="sgs logo" width="350" height="100"><br>
        
      </div><!-- /.login-logo -->
      <div class="login-box-body">
        <p class="login-box-msg">Sign in to start your session</p>
        <!-- START CONTENT -->
            <section class="content">
            <?php include "../modals/account_modal.php"; ?>
                <div class="container-fluid"> 
                    <div class="block-header">
                        <button data-target="#sendMessageModal" data-toggle="modal" class="btn btn-primary btn-sm  waves-effect"> <i class="small material-icons">near_me</i> Send Message</button>
                        <button data-target="#sendMessageSMSFacultyModal" data-toggle="modal" class="btn btn-primary btn-sm  waves-effect"> <i class="small material-icons">near_me</i> Send SMS</button>
                        <button data-target="#deleteMessageModal" data-toggle="modal" class="btn btn-danger btn-sm  waves-effect"> <i class="small material-icons">delete_forever</i> Delete</button>
                    </div>
                    <div class="row clearfix">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="card">
                                <div class="body">
                                <ul class="nav nav-tabs tab-nav-right" role="tablist">
                                    <li role="presentation" class="active">
                                        <a href="#inbox" data-toggle="tab"><i class="material-icons">mail</i> INBOX 
                                            <span class="badge bg-green">
                                            <?php

                                            $inbox = mysqli_query($con,"SELECT * FROM tblinbox where sendto = '".$_SESSION['userid']."' and sender_name = 'Administrator'  ");
                                            $ct = mysqli_num_rows($inbox);
                                            echo $ct;
                                            ?>
                                            </span>
                                        </a>
                                    </li>
                                    <li role="presentation">
                                        <a href="#sent" data-toggle="tab"><i class="material-icons">send</i> SENT 
                                            <span class="badge bg-green">
                                            <?php

                                            $sent = mysqli_query($con,"SELECT * FROM tblsent where senderid = '".$_SESSION['userid']."' and sender_name != 'Administrator'  ");
                                            $ct1 = mysqli_num_rows($sent);
                                            echo $ct1;
                                            ?>
                                            </span>
                                        </a>
                                    </li>
                                </ul>

                                <!-- Tab panes -->
                                <form method="post" >
                                <div class="tab-content">

                                    <div role="tabpanel" class="tab-pane fade in active" id="inbox">
                                 
                                            <table id="dttbl" class="table table-bordered table-striped table-hover js-basic-example dataTable">
                                                <thead>
                                                    <th style="width: 10px !important;"><input type="checkbox" name="chk_delete[]" class="cbxMain" onchange="checkMain(this)"/></th>
                                                    <th>Sender</th>
                                                    <th>Subject</th>
                                                    <th>Message</th>
                                                    <th>Date</th>
                                                    <th style="width:40px;">Option</th>
                                                </thead> 
                                                <tbody>
                                                    <?php
                                                    $q = mysqli_query($con,"SELECT * from tblinbox where sendto = '".$_SESSION['userid']."' and sender_name = 'Administrator' order by message_date desc ");
                                                    while($row = mysqli_fetch_array($q)){
                                                        echo '
                                                        <tr>
                                                            <td><input type="checkbox" name="chk_delete[]" class="chk_delete" value="'.$row['id'].'" /></td>
                                                            <td>'.$row['sender_name'].'</td>
                                                            <td>'.$row['subject'].'</td>
                                                            <td>'.$row['message'].'</td>
                                                            <td>'.$row['message_date'].'</td>
                                                            <td><button type="button" data-target="#replyModal'.$row['id'].'" data-toggle="modal" class="btn btn-primary btn-sm  waves-effect"><i class="small material-icons">reply</i> Reply</button></td>
                                                        </tr>';

                                                        include "../modals/reply_modal.php";
                                                    }
                                                    ?>
                                                    
                                                </tbody>
                                            </table> 

                                    </div>
                                    <div role="tabpanel" class="tab-pane fade in" id="sent">
                                   
                                            <table id="dttbl1" class="table table-bordered table-striped table-hover js-basic-example dataTable">
                                                <thead>
                                                    <th style="width: 10px !important;"><input type="checkbox" name="chk_deletesent[]" class="cbxMainsent" onchange="checkMainsent(this)"/></th>
                                                    <th>Send To</th>
                                                    <th>Subject</th>
                                                    <th>Message</th>
                                                    <th>Date</th>
                                                </thead> 
                                                <tbody>
                                                    <?php
                                                    $q = mysqli_query($con,"SELECT * from tblsent left join tblfaculty f on sendto = f.id where senderid = '".$_SESSION['userid']."' and sender_name != 'Administrator' order by message_date desc ");
                                                    while($row = mysqli_fetch_array($q)){
                                                        echo '
                                                        <tr>
                                                            <td><input type="checkbox" name="chk_deletesent[]" class="chk_deletesent" value="'.$row['id'].'" /></td>
                                                            <td>'.$row['lname'].', '.$row['fname'].'</td>
                                                            <td>'.$row['subject'].'</td>
                                                            <td>'.$row['message'].'</td>
                                                            <td>'.$row['message_date'].'</td>
                                                        </tr>';

                                                        include "../modals/edit_modals.php";
                                                    }
                                                    ?>
                                                    
                                                </tbody>
                                            </table> 

                                        
                                    </div>
                                    
                                </div>
                                    <?php include "../modals/delete_modals.php"; ?> 

                                </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--end container-->
    
            <?php include "../modals/sendmessage_modal.php"; ?> 
            <?php include "../notification/notification.php"; ?>         
            <?php include "../functions/send.php"; ?>          
            <?php include "../functions/reply.php"; ?>   
            <?php include "../functions/delete.php"; ?> 
            

            </section>
            <!-- END CONTENT -->
	
        

      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->
      
           
   
<!-- jQuery 2.1.4 -->
    <script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <!-- SlimScroll -->
    <script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/app.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js"></script>
  </body>
</html>
