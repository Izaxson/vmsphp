<?php 
$payment_for = date("d-m-Y",strtotime("2016-1-20"));
$date = date("d-m-Y");
			
                        $due1 = date("d-m-Y",strtotime($payment_for. " +1 months"));
						$due2 = date("d-m-Y",strtotime($due1. " +5 days"));
						
                        if ($date > $due2)
                          {
                            $interest=100*.05;
                            
                          } 
                         else
                          {
                            $interest=0;
                            
                          }
						 echo "<br>";
						  echo $date;
		?>