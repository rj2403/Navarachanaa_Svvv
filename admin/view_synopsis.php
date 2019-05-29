<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Navarachanaa || Admin</title>
<link rel="stylesheet" href="admin.css" />
</head>
<body>
<br><br>
<?php

require('database_connection.php');
//session_start();
$teamId=$_GET['view'];
if(isset($_GET['view'])){
	
	//$teamId = $_GET['view'];
	//$_SESSION['teamId'] = $teamId ;
	$query = "SELECT * from teamdetails where teamId =".$teamId.";";
	$result=mysql_query($query) or mysql_error();
	$numfields = mysql_num_fields($result);
	$row = mysql_fetch_assoc($result);
	$teamName = $row['teamName'];
	$abstract = $row['abstract'];
	$intdoduction = $row['introduction'];
	$objective = $row['objective'];
	$problemDomain = $row['problemDomain'];
	$solutionDomain = $row['solutionDomain'];
	$application = $row['application'];
	$conclusion = $row['conclusion'];

	echo '<table border = "2px">';
	
	echo '<th><h2>Team Name</h2></th>';
	echo '<th><h2>Abstract</h2></th>';
	echo '<th><h2>Introduction</h2></th>';
	echo '<th><h2>Objective</h2></th>';
	echo '<th><h2>Problem Domain</h2></th>';
	echo '<th><h2>Solution Domain</h2></th>'; 
	echo '<th><h2>Application</h2></th>';
	echo '<th><h2>Conclusion</h2></th>';
	echo '<tr>';
	
	echo '<td><center><h4>'.$teamName.'</h4></td>';
	echo '<td><h4>'.$abstract.'</h4></td>';
	echo '<td><h4>'.$intdoduction.'</h4></td>';
	echo '<td><h4>'.$objective.'</h4></td>';
	echo '<td><h4>'.$problemDomain.'</h4></td>';
	echo '<td><h4>'.$solutionDomain.'</h4></td>';
	echo '<td><h4>'.$application.'</h4></td>';
	echo '<td><h4>'.$conclusion.'</h4></td>';

	echo '</tr></table>';
	
	}

if(isset($_POST['submit'])){
	
	//$teamId = $_SESSION['teamId'];
	//$teamId=$GLOBALS['$teamId'];
	$query_update = "UPDATE payments SET synopsis = 1 WHERE teamId=".$teamId.";";
	$run = mysql_query($query_update) or  die(mysql_error());
	if($run){
		
		
		
	$query="SELECT * FROM teamdetails where teamId=".$teamId.";";
	$getemail=mysql_query($query);
        $projname="";
        $email="";
        $teamname="";
        while($row=mysql_fetch_assoc($getemail))
        {
           $projname=$row["projectName"];
           $email=$row["primEmail"];
           $teamname=$row["teamName"];
           
        }
	
	
	$to = $email;
		$subject = "Project Accepted for NAVARACHANAA 2016";
                $txt = '
Dear Participants,
    Congratulations on behalf of SVVV Navarachanaa team as your project (Team ID : '.$teamId.') has been selected for the next round of Navarachanaa 2016. For further process and payment submission details, please visit the link below :

http://navarachanaa.svvv.edu.in/registrationRules.html

We wish you all the best for upcoming competition

Below is a copy of the information you submitted for your records.

Best Regards,
Team NAVARACHANAA

Contact:
navarachanaa@svvv.edu.in
+91-8878600610
+91-9479728900 ';


		$headers = "From: noreply@svvv.edu.in" . "\r\n" .
		"CC: navarachanaa@svvv.edu.in";

	mail($to,$subject,$txt,$headers);

       ?>
       
       <script type="text/javascript">
       alert("The abstract has been approved");
       window.location.href="http://navarachanaa.svvv.edu.in/admin/index.php";
       </script>
       <?php
	
	
	
	

	
	
	}
}

?>
<br><br>
<form action = "" method = "POST">
<center>
<input type = "submit" name = "submit" value = "Approve" >
</center>
</form>
</body>
</html>