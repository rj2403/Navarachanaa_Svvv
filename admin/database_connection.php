<?php

$conn_error = '<strong>Could not connect to database.</strong>';
$mysql_host = 'shareddb-h.hosting.stackcp.net';
$mysql_user = 'nava123';
$mysql_password = '5rlzj6klod';
$mysql_db = 'navarach-3331304e';
 mysql_connect($mysql_host,$mysql_user,$mysql_password,$mysql_db) or die(mysql_error());
 mysql_select_db($mysql_db);
?>
