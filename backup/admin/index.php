<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Navarachanaa || Admin</title>
<link rel="stylesheet" href="admin.css" />
</head>
<body>
<form action = "index.php" method= "POST">
<select name="option">
<option value="all">All</option>
<option value="pending">Pending</option>
<option value="approved">Approved</option>
<option value="Digital India">Digital India</option>
<option value="Swach Bharat">Swach Bharat</option>
<option value="Make in India">Make in India</option>
<option value="Smart City">Smart City</option>
<option value="Skill India">Skill India</option>
<option value="General">General</option>
</select>
<button type="submit" name = "but1" value="submit">Submit</button>
</form>

<?php

require('database_connection.php');

if(isset($_POST['option'])){
	
	$option = $_POST['option'];
	if($option == 'all')
	{
		$query = 'SELECT b.teamId, a.teamName, a.name, a.projectName, a.projectCategory, a.mentorName, a.primEmail, a.contact, b.synopsis, b.payment 
        FROM teamdetails a, payments b
        WHERE a.teamId = b.teamId ORDER BY b.id DESC';
		//$result=mysql_query($query);
		//$numfields = mysql_num_fields($result);
	}
	else if($option=='pending')
	{
		$query = 'SELECT b.teamId, a.teamName, a.name, a.projectName, a.projectCategory, a.mentorName, a.primEmail, a.contact, b.synopsis, b.payment 
        FROM teamdetails a, payments b
        WHERE (a.teamId = b.teamId AND b.synopsis = 0 ) ORDER BY b.id DESC';
		//$result=mysql_query($query);
		//$numfields = mysql_num_fields($result);
	}
	else if($option=='approved')
	{
		$query = 'SELECT b.teamId, a.teamName, a.name, a.projectName, a.projectCategory, a.mentorName, a.primEmail, a.contact, b.synopsis, b.payment 
        FROM teamdetails a, payments b
        WHERE (a.teamId = b.teamId AND b.synopsis = 1 ) ORDER BY b.id DESC';
		//$result=mysql_query($query);
		//$numfields = mysql_num_fields($result);
	}
	else if($option=='Digital India')
	{
		$query = 'SELECT b.teamId, a.teamName, a.name, a.projectName, a.projectCategory, a.mentorName, a.primEmail, a.contact, b.synopsis, b.payment 
        FROM teamdetails a, payments b
        WHERE (a.teamId = b.teamId AND a.projectCategory=" Digital India" ) ORDER BY b.id DESC';
		//$result=mysql_query($query);
		//$numfields = mysql_num_fields($result);
	}
	else if($option=='Swach Bharat')
	{
		$query = 'SELECT b.teamId, a.teamName, a.name, a.projectName, a.projectCategory, a.mentorName, a.primEmail, a.contact, b.synopsis, b.payment 
        FROM teamdetails a, payments b
        WHERE (a.teamId = b.teamId AND a.projectCategory=" Swach Bharat" ) ORDER BY b.id DESC';
		//$result=mysql_query($query);
		//$numfields = mysql_num_fields($result);
	}
	else if($option=='Make in India')
	{
		$query = 'SELECT b.teamId, a.teamName, a.name, a.projectName, a.projectCategory, a.mentorName, a.primEmail, a.contact, b.synopsis, b.payment 
        FROM teamdetails a, payments b
        WHERE (a.teamId = b.teamId AND a.projectCategory=" Make In India" ) ORDER BY b.id DESC';
		//$result=mysql_query($query);
		//$numfields = mysql_num_fields($result);
	}
	else if($option=='Smart City')
	{
		$query = 'SELECT b.teamId, a.teamName, a.name, a.projectName, a.projectCategory, a.mentorName, a.primEmail, a.contact, b.synopsis, b.payment 
        FROM teamdetails a, payments b
        WHERE (a.teamId = b.teamId AND a.projectCategory=" Smart City" ) ORDER BY b.id DESC';
		//$result=mysql_query($query);
		//$numfields = mysql_num_fields($result);
	}
	else if($option=='Skill India')
	{
		$query = 'SELECT b.teamId, a.teamName, a.name, a.projectName, a.projectCategory, a.mentorName, a.primEmail, a.contact, b.synopsis, b.payment 
        FROM teamdetails a, payments b
        WHERE (a.teamId = b.teamId AND a.projectCategory=" Skill India") ORDER BY b.id DESC';
		//$result=mysql_query($query);
		//$numfields = mysql_num_fields($result);
	}
	else if($option=='General')
	{
		$query = 'SELECT b.teamId, a.teamName, a.name, a.projectName, a.projectCategory, a.mentorName, a.primEmail, a.contact, b.synopsis, b.payment 
        FROM teamdetails a, payments b
        WHERE (a.teamId = b.teamId AND (a.projectCategory=" Computer Science" OR a.projectCategory=" Information Technology" OR a.projectCategory=" Electronics and Communication" OR a.projectCategory=" Electronics and Instrumentation" OR a.projectCategory=" Electrical and Electronics" OR a.projectCategory=" Civil" OR a.projectCategory=" Textile" OR a.projectCategory=" Mechanical")) ORDER BY b.id DESC';
		//$result=mysql_query($query);
		//$numfields = mysql_num_fields($result);
	}

	echo '<form action = "view_synopsis.php" method="GET" >';
	echo '<div style = "align:center;"><table border = "1px">'."\n".'<tr>';
	
	echo '<th>S.No</th>';
	echo '<th>Team ID</th>';
	echo '<th>Team Name</th>';
	echo '<th>Member Names</th>';
	echo '<th>Project Name</th>';
	echo '<th>Project Category</th>';
	echo '<th>Mentor Name</th>'; 
	echo '<th>Email</th>';
	echo '<th>Phone No.</th>';
	echo '<th>Synopsis Status</th>';
	echo '<th>Payment Status</th>';
	echo '<th>View synopsis</th></tr>';

	if($result = mysql_query($query))
	{
		$numfields = mysql_num_fields($result);
		
		$columns = array();
		
		for ($i=0; $i < $numfields; $i++)
		{ 
			$columns[$i] = mysql_field_name($result, $i);
		}
		$s=1;
		while($row = mysql_fetch_assoc($result))
		{ 
			echo '<tr>';
                        echo '<td>'.$s.'</td>'; 
			for ($i=0; $i < $numfields; $i++)
			{           
				 
				echo '<td>'.$row[$columns[$i]].'</td>';            
			}
			echo '<td><button type="submit" name = "view" value="'.$row[$columns[0]].'">View</button></td>';
			echo '</tr>';
                        $s=$s+1;
		}
	}
	echo '</table>';
	echo '</form>';
}

?>
</body>
</html>