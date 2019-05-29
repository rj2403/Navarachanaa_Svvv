<?php
include("database_connection.php");
// $conn=mysql_connect("localhost","root","");
// mysql_select_db("birthday") or mysql_error();
date_default_timezone_set("Asia/Kolkata");
$current_date=date("d-m");
$html_email=file_get_contents("test.html");
$headers = "MIME-Version: 1.0" . "\r\n";
$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
$headers .= 'From: SVVV<noreply@SVVV.edu.in>' . "\r\n";
$headers .= 'Bcc: arisaiparuchuru@gmail.com' . "\r\n";
$sql_query="SELECT * FROM `birthday`;";
$result=mysql_query($sql_query);
while($row=mysql_fetch_object($result))
{
    $birth_date=$row->birthdate;
    $birth_date=substr($birth_date,0,5);    
    if(strcmp($current_date,$birth_date)==0)
    {
        $to=$row->email;
        $subject="Happy Birthday ".$row->name;;
        mail($to,$subject,$html_email,$headers);
    }
}
        // $to="arihant95@gmail.com";
        // $subject="Happy Birthday";
        // mail($to,$subject,$html_email,$headers);

?>