

<?php
session_start();
include('../dist/includes/dbcon.php');

if (isset($_POST['submit']))
{ 
$update = mysql_real_escape_string(trim($_POST['submit']));
$sql = mysql_query("UPDATE trips SET Application_status = APPROVED WHERE ($id) = '$id'");
if(!mysql_query($sql, $connect))
{
    die("Error:" .mysql_error());
}
}
?> 
	   
