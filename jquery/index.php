<?php 
include('../dist/includes/dbcon.php');
?>
<!doctype html>
<html>
    <head>
        <title>jQuery Datepicker to filter records with PHP MySQL</title>

        <!-- CSS -->
        <link href='jquery-ui.min.css' rel='stylesheet' type='text/css'>

        <!-- Script -->
        <script src='jquery-3.3.1.js' type='text/javascript'></script>
        <script src='jquery-ui.min.js' type='text/javascript'></script>
        <script type='text/javascript'>
        $(document).ready(function(){
            $('.dateFilter').datepicker({
                dateFormat: "yy-mm-dd"
            });
        });
        </script>
    </head>
    <body >
        
        <!-- Search filter -->
        <form method='post' action=''>
            Start Date <input type='text' class='dateFilter' name='fromDate' value='<?php if(isset($_POST['fromDate'])) echo $_POST['fromDate']; ?>'>
            
            End Date <input type='text' class='dateFilter' name='endDate' value='<?php if(isset($_POST['endDate'])) echo $_POST['endDate']; ?>'>

            <input type='submit' name='but_search' value='Search'>
        </form>

        <!-- Employees List -->
        <div  >
          <table id="example1" class="table table-bordered table-striped">
		    <thead>
                <tr>
                        <th>Vehicle Registration #</th>
						<th>Date</th>
                        <th>First Reading</th>
                        <th>Second Reading</th>
                        <th>Distance</th>
            			<th>Time out</th>
                        <th>Time in</th>
                        <th>Purpose of Journey</th>
                        <th>Driver </th>
						 <th>station</th>
						 <th>Application Status </th>
						 <th>Approved by</th>
						 <th>Approved Date</th>
                       
                      </tr>
			</thead>
                <?php
                $emp_query = "SELECT * FROM trips WHERE veh_registration='$veh_registration' and Date ";

                // Date filter
                if(isset($_POST['but_search'])){
                    $fromDate = $_POST['fromDate'];
                    $endDate = $_POST['endDate'];

                    if(!empty($fromDate) && !empty($endDate)){
                        $emp_query .= " and Date between '".$fromDate."' and '".$endDate."' ";
                    }
                }

                // Sort
                $emp_query .= " ORDER BY Date DESC";
                $employeesRecords = mysqli_query($con,$emp_query);

                // Check records found or not
                if(mysqli_num_rows($employeesRecords) > 0){
                    while($empRecord = mysqli_fetch_assoc($employeesRecords)){
						<?php echo $row['veh_registration']?></td>
						$veh_registration = $empRecord['id'];
                        $id = $empRecord['id'];
                        $empName = $empRecord['emp_name'];
                        $date_of_join = $empRecord['date_of_join'];
                        $gender = $empRecord['gender'];
                        $email = $empRecord['email'];

                        echo "<tr>";
                        echo "<td>". $empName ."</td>";
                        echo "<td>". $date_of_join ."</td>";
                        echo "<td>". $gender ."</td>";
                        echo "<td>". $email ."</td>";
                        echo "</tr>";
                    }
                }else{
                    echo "<tr>";
                    echo "<td colspan='4'>No record found.</td>";
                    echo "</tr>";
                }
                ?>
            </table>
            
        </div>
    </body>
</html>