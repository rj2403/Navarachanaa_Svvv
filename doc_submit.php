<?php

if(isset($_POST['team_name']) && isset($_POST['select1']) && isset($_POST['contact']) && isset($_POST['ins_name']) && isset($_POST['email']) && isset($_POST['projectCategory']) && isset($_POST['proj_name']) && !empty($_POST['team_name']) && !empty($_POST['select1']) && !empty($_POST['contact']) && !empty($_POST['ins_name']) && !empty($_POST['email']) && !empty($_POST['projectCategory']) && !empty($_POST['proj_name']))
{
	require_once("database_connection.php");
	require_once("alert_msg.php");
	require_once("redirect.php");
    
	$team_name = $_POST['team_name'];
	$team_name=strtoupper($team_name);
    $ins_name=strtoupper($_POST['ins_name']);
	$sql_query_duplicate_team_name=' SELECT teamName from docteamdetails where teamName=" '.$team_name.' " ';
	$sql_query_duplicate_team_name_run=mysql_query($sql_query_duplicate_team_name) or die(mysql_error());
	if(mysql_num_rows($sql_query_duplicate_team_name_run)!=0) // to check duplicate team names
	{
			alert_msg("Sorry the Team Name already exists");
			die();
	}

	//Concatenating name
	$select1 = $_POST['select1'];
	if(!isset($_POST['name1']) && empty($_POST['name1']))
	{
		alert_msg('Please fill the team member name !');
		die();
	}
	$name = $_POST['name1'];
	for($i=2;$i<=$select1;$i++)
	{
		if(isset($_POST['name'.$i]) && !empty($_POST['name'.$i]))
		{
			$name = $name.','.$_POST['name'.$i];
		}
		else
		{
			alert_msg('Please fill all the team member names !');
			die();
		}
	}

	$contact = $_POST['contact'];
	if(strlen($contact)!==10)
	{
		alert_msg('Contact number invalid !');
		die();
	}
	$sql_query_duplicate_contact=' SELECT contact from docteamdetails where contact=" '.$contact.' " ';
	$sql_query_duplicate_contact_run=mysql_query($sql_query_duplicate_contact) or die(mysql_error());
	if(mysql_num_rows($sql_query_duplicate_team_name_run)!=0) // to check duplicate team names
	{
			alert_msg("Sorry the Contact already exists");
			die();
	}

	$ins_name = $_POST['ins_name'];
	$email = $_POST['email'];
	$sql_query_duplicate_email=' SELECT primEmail from docteamdetails where primEmail=" '.$email.' " ';
	$sql_query_duplicate_email_run=mysql_query($sql_query_duplicate_email) or die(mysql_error());
	if(mysql_num_rows($sql_query_duplicate_email_run)!=0) // to check duplicate email
	{
			alert_msg("Sorry the email already exists");
			die();
	}
	$projectCategory = $_POST['projectCategory'];
	
	$proj_name = $_POST['proj_name'];
	$sql_query_project_name=' SELECT projectName from docteamdetails where projectName=" '.$proj_name.' " ';
	$sql_query_project_name_run=mysql_query($sql_query_project_name) or die(mysql_error());
	if(mysql_num_rows($sql_query_project_name_run)!=0) // to check duplicate project  names
	{
			alert_msg("Sorry the Project Name already exists");
			die();
	}

	srand(time());
	$teamId=rand(10000,100000);
        $date_created = date('Y-m-d',time());

$sql_query='INSERT INTO docteamdetails values(" '.$teamId.' ",
" '.$team_name.'",
" '.$email.'",
" '.$contact.'",
" '.$name.' ",
" '.$ins_name.' ",
" '.$proj_name.'",
" '.$projectCategory.'",
"'.$date_created.'");';

$sql2 = 'INSERT INTO docteampayments (teamId) values("'.$teamId.'")';
$done2 = mysql_query($sql2) or die(mysql_error());

$done = mysql_query($sql_query) or die(mysql_error());
		if($done && $done2)
		{
			alert_final();
		//MAIL Function
		$to = $email;
		$subject = "Navarachanaa Documentary Registration Details";
                $txt = "
Dear Participants,

You have successfully registered for Real on Reel Contest. 

The details of your registration are shown below:

ROR Registration ID : ".$teamId."
Team name : ".$team_name."
Team members : ".$name."
Theme : ".$projectCategory."

Please note down your registration id and use it for further communication regarding your participation. 

All the submissions will go through a screening process and all the shortlisted participants will be notified by email/mail upon realization of payment.

Thank you for the participating in Real on Reels : 2016 !

For more details feel free to contact:
Email: realonreel2016@gmail.com
Contact:     Shubham Khandelwal: 8817822505

             Yash Bhojwani: 7415136187

             Utkarsh Saxena: 8962835139

             Saloni Khasgiwala

For latest update get in touch with our website
www.Navarachanaa.svvv.edu.in

Regards,

Real On Reels Team,
NAVARACHANAA 2016";


		$headers = "From: noreply@svvv.edu.in" . "\r\n" .
		"CC: reg.navarachanaa@gmail.com";

		if(mail($to,$subject,$txt,$headers))
		{
                   redirect();
		}


		}
}
?>
