<?php

if(isset($_POST['team_name']) && isset($_POST['mentor_name']) && isset($_POST['select1']) && isset($_POST['contact']) && isset($_POST['ins_name']) && isset($_POST['email']) && isset($_POST['projectCategory']) && isset($_POST['proj_name']) && isset($_POST['abstract']) && isset($_POST['introduction']) && isset($_POST['objective']) && isset($_POST['problemdomain']) && isset($_POST['solutiondomain']) && isset($_POST['application']) && isset($_POST['conclusion']) && !empty($_POST['team_name']) && !empty($_POST['mentor_name']) && !empty($_POST['select1']) && !empty($_POST['contact']) && !empty($_POST['ins_name']) && !empty($_POST['email']) && !empty($_POST['projectCategory']) && !empty($_POST['proj_name']) && !empty($_POST['abstract']) && !empty($_POST['introduction']) && !empty($_POST['objective']) && !empty($_POST['problemdomain']) && !empty($_POST['solutiondomain']) && !empty($_POST['application']) && !empty($_POST['conclusion']))
{
	require_once("database_connection.php");
	require_once("alert_msg.php");
	require_once("redirect.php");
        
	$team_name = $_POST['team_name'];
	$team_name=strtoupper($team_name);
        $ins_name=strtoupper($_POST['ins_name']);
	$sql_query_duplicate_team_name=' SELECT teamName from teamdetails where teamName=" '.$team_name.' " ';
	$sql_query_duplicate_team_name_run=mysql_query($sql_query_duplicate_team_name) or die(mysql_error());
	if(mysql_num_rows($sql_query_duplicate_team_name_run)!=0) // to check duplicate team names
	{
			alert_msg("Sorry the Team Name already exists");
			die();
	}
	$mentor_name = $_POST['mentor_name'];

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
	$sql_query_duplicate_contact=' SELECT contact from teamdetails where contact=" '.$contact.' " ';
	$sql_query_duplicate_contact_run=mysql_query($sql_query_duplicate_contact) or die(mysql_error());
	if(mysql_num_rows($sql_query_duplicate_team_name_run)!=0) // to check duplicate team names
	{
			alert_msg("Sorry the Contact already exists");
			die();
	}

	$ins_name = $_POST['ins_name'];
	$email = $_POST['email'];
	$sql_query_duplicate_email=' SELECT primEmail from teamdetails where primEmail=" '.$email.' " ';
	$sql_query_duplicate_email_run=mysql_query($sql_query_duplicate_email) or die(mysql_error());
	if(mysql_num_rows($sql_query_duplicate_email_run)!=0) // to check duplicate email
	{
			alert_msg("Sorry the email already exists");
			die();
	}
	$projectCategory = $_POST['projectCategory'];
	if($projectCategory=="General")
	{
	  $projectCategory=$_POST['general_dropdown'];
	}
	$proj_name = $_POST['proj_name'];
	$sql_query_project_name=' SELECT projectName from teamdetails where projectName=" '.$proj_name.' " ';
	$sql_query_project_name_run=mysql_query($sql_query_project_name) or die(mysql_error());
	if(mysql_num_rows($sql_query_project_name_run)!=0) // to check duplicate project  names
	{
			alert_msg("Sorry the Project Name already exists");
			die();
	}

	$abstract = $_POST['abstract'];
	$introduction = $_POST['introduction'];
	$objective = $_POST['objective'];
	$problemdomain = $_POST['problemdomain'];
	$solutiondomain = $_POST['solutiondomain'];
	$application = $_POST['application'];
	$conclusion = $_POST['conclusion'];

	srand(time());
	$teamId=rand(10000,100000);

$sql_query='INSERT INTO teamdetails values(" '.$teamId.' ",
" '.$team_name.'",
" '.$email.'",
" '.$contact.'",
" '.$name.' ",
" '.$ins_name.' ",
" '.$proj_name.'",
" '.$projectCategory.'",
" '.$mentor_name.' ",
" '.$abstract.' ",
" '.$introduction.' ",
" '.$objective.' ",
" '.$problemdomain.' ",
" '.$solutiondomain.' ",
" '.$application.' ",
" '.$conclusion.' "); ' ;

$sql2 = 'INSERT INTO payments (teamId) values("'.$teamId.'")';
$done2 = mysql_query($sql2) or die(mysql_error());

$done = mysql_query($sql_query) or die(mysql_error());
		if($done && $done2)
		{
			alert_final();
		//MAIL Function
		$to = $email;
		$subject = "Navarachanaa Project Registration Details";
                $txt = "
Dear Participants,
The abstract submission process of your project has been successfully completed.

Below is a copy of the information you submitted for your records.

Your project ID :- ".$teamId."
Team name :- ".$team_name."
Team members :- ".$name."

After completing a careful review of your project idea and supporting credentials by technical experts,
our team will inform you for further process.

Thank you for the participation in National Level Project Competition \"NAVARACHANAA-2016\" at SVVV Indore.

For more information you can contact or mail
Email: navarachanaa@svvv.edu.in
Contact: 8821001009, 9827552336

For latest update get in touch with our website
www.Navarachanaa.svvv.edu.in

Regards,
NAVARACHANAA team";


		$headers = "From: noreply@svvv.edu.in" . "\r\n" .
		"CC: reg.navarachanaa@gmail.com";

		if(mail($to,$subject,$txt,$headers))
		{
                   redirect();
		}


		}
}
?>
