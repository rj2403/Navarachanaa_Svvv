<?php
include 'database_connection.php';
$username=$_POST['username'];
$password=$_POST['password'];
$sql_query="SELECT * FROM ALUMNI WHERE `username`='$username' AND `pass`='$password';";
$execute=query_execute($sql_query);
if(mysql_num_rows($execute)==1)
{
	echo "{status:successfull}";
}
else
{
	echo "{status:unsuccessfull}";
}
?>