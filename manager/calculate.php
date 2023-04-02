<?php

if (isset($_post['submit'])){
	
	$first_reading=$_post['first_reading'];
	$Second_reading=$_post['Second_reading'];
	$operator=$_post['operator'];
switch($operator) {
	case subtract:
	echo $Second_reading $first_reading;
	echo
	break;
}
	
	
	
	
	
}
?>