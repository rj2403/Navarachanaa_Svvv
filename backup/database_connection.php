<?php

$conn_error = '<strong>Could not connect to database.</strong>';
$mysql_host = 'localhost';
$mysql_user = 'navarach_svits';
$mysql_password = 'mysql@123';
$mysql_db = 'navarach_navarachanaa';
 mysql_connect($mysql_host,$mysql_user,$mysql_password,$mysql_db) or die(mysql_error());
 mysql_select_db($mysql_db);
?>
