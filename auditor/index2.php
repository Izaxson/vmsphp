<?php include 'header_login.php';?>

  <body class="login">
    <div>
    

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form method = "POST" action = "login.php">
              <h1>Auditor  Login</h1>
              <div>
                <input type="text" name = "username" class="form-control" placeholder="Username" required="true" />
              </div>
              <div>
                <input type="password" name = "password" class="form-control" placeholder="Password" required="true" />
              </div>
              <div>
                <button  class="btn btn-block btn-warning" name = "login"> Log in</button>
              
              </div>

              <div class="clearfix"></div>

              <div class="separator">
               

                <div class="clearfix"></div>
                               <div>
                  <img src="Capture.PNG" alt="sgs logo" width="350" height="100"><br> </h1>
                  <p>©2019 All Rights Reserved </p>
                </div>
              </div>
            </form>
          </section>
        </div>

    
      </div>
    </div>
  </body>
</html>
