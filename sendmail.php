<?php
    //we need to get our variables first
    require("database_connection.php");
    require("redirect.php");

    $email_to =   'navarachanaa@svvv.edu.in'; //the address to which the email will be sent
    $name     =   $_POST['name'];
    $email    =   $_POST['email'];
    $subject  =   $_POST['subject'];
    $message  =   $_POST['message'];


    date_default_timezone_set('Asia/Kolkata');
    $today = date("Y-m-d H:i:s");

    //to database
    $sql_query='INSERT INTO contactdetails values("'.$today.'","'.$name.'","'.$email.'","'.$subject.'","'.$message.'");';

    $run=mysql_query($sql_query);


    /*the $header variable is for the additional headers in the mail function,
     we are asigning 2 values, first one is FROM and the second one is REPLY-TO.
     That way when we want to reply the email gmail(or yahoo or hotmail...) will know
     who are we replying to. */

    $headers  = "From: $email\r\n";
    $headers .= "Reply-To: $email\r\n";

    if(mail($email_to, $subject, $message, $headers)){
        echo 'sent'; // we are sending this text to the ajax request telling it that the mail is sent..
    }else{
        echo 'failed';// ... or this one to tell it that it wasn't sent
    }
     //redirect();
?>
