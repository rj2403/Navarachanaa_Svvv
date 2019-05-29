<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Navarachanaa || Admin</title>
<link rel="stylesheet" href="admin.css" />

<script type="text/javascript">
function show_textfields()
{

		 var x=document.getElementById('option');
		 var y=x.options[x.selectedIndex].value;
	 if(y=="teamid")
	 {
		 document.getElementById('1234').style.display='block';
	 }
	 else
	 {
		 document.getElementById('1234').style.display='none';
	 }
}
</script>

</head>
<body>
<form action = "index.php" method= "POST">

<center><br><br>
<select name="option" id="option" onclick="show_textfields()">
<option value="all">All</option>
<option value="pending">Pending</option>
<option value="approved">Approved</option>
<option value="Digital India">Digital India</option>
<option value="Swach Bharat">Swach Bharat</option>
<option value="Make in India">Make in India</option>
<option value="Smart City">Smart City</option>
<option value="Skill India">Skill India</option>
<option value="Computer Science">General(Computer Science)</option>
<option value="Information Technology">General(Information Technology)</option>
<option value="Electronics and Communication">General(Electronics and Communication)</option>
<option value="Electronics and Instrumentation">General(Electronics and Instrumentation)</option>
<option value="Electrical and Electronics">General(Electrical and Electronics)</option>
<option value="Civil">General(Civil)</option>
<option value="Textile">General(Textile)</option>
<option value="MechAuto">General(Mechanical/Automobile)</option>
<option value="sort">*Sort by institute*</option>
<option value="teamid">Search By TeamID</option>
</select><br>
<div id="1234" style="display:none">
	<input type ="text" name="team" id="team">
</div>

<button type="submit" name = "but1" value="submit">Submit</button>
<div>
<a href="http://navarachanaa.svvv.edu.in/admin/ambassador_admin.php">Ambassador List</a></div>
</center><br><br>
</form>

<?php

require('database_connection.php');

if(isset($_POST['option'])){
	
	$option = $_POST['option'];
	if($option == 'all')
	{
		$query = 'SELECT b.teamId, a.teamName, a.name, a.projectName, a.projectCategory, a.institute_name, a.mentorName, a.primEmail, a.contact, b.synopsis, b.payment 
        FROM teamdetails a, payments b
        WHERE a.teamId = b.teamId ORDER BY b.id DESC';
		//$result=mysql_query($query);
		//$numfields = mysql_num_fields($result);
	}
	else if($option=='pending')
	{
		$query = 'SELECT b.teamId, a.teamName, a.name, a.projectName, a.projectCategory, a.institute_name, a.mentorName, a.primEmail, a.contact, b.synopsis, b.payment 
        FROM teamdetails a, payments b
        WHERE (a.teamId = b.teamId AND b.synopsis = 0 ) ORDER BY b.id DESC';
		//$result=mysql_query($query);
		//$numfields = mysql_num_fields($result);
	}
	else if($option=='approved')
	{
		$query = 'SELECT b.teamId, a.teamName, a.name, a.projectName, a.projectCategory, a.institute_name, a.mentorName, a.primEmail, a.contact, b.synopsis, b.payment 
        FROM teamdetails a, payments b
        WHERE (a.teamId = b.teamId AND b.synopsis = 1 ) ORDER BY b.id DESC';
		//$result=mysql_query($query);
		//$numfields = mysql_num_fields($result);
	}
	else if($option=='Digital India')
	{
		$query = 'SELECT b.teamId, a.teamName, a.name, a.projectName, a.projectCategory, a.institute_name, a.mentorName, a.primEmail, a.contact, b.synopsis, b.payment 
        FROM teamdetails a, payments b
        WHERE (a.teamId = b.teamId AND a.projectCategory=" Digital India" ) ORDER BY b.id DESC';
		//$result=mysql_query($query);
		//$numfields = mysql_num_fields($result);
	}
	else if($option=='Swach Bharat')
	{
		$query = 'SELECT b.teamId, a.teamName, a.name, a.projectName, a.projectCategory, a.institute_name, a.mentorName, a.primEmail, a.contact, b.synopsis, b.payment 
        FROM teamdetails a, payments b
        WHERE (a.teamId = b.teamId AND a.projectCategory=" Swach Bharat" ) ORDER BY b.id DESC';
		//$result=mysql_query($query);
		//$numfields = mysql_num_fields($result);
	}
	else if($option=='Make in India')
	{
		$query = 'SELECT b.teamId, a.teamName, a.name, a.projectName, a.projectCategory, a.institute_name, a.mentorName, a.primEmail, a.contact, b.synopsis, b.payment 
        FROM teamdetails a, payments b
        WHERE (a.teamId = b.teamId AND a.projectCategory=" Make In India" ) ORDER BY b.id DESC';
		//$result=mysql_query($query);
		//$numfields = mysql_num_fields($result);
	}
	else if($option=='Smart City')
	{
		$query = 'SELECT b.teamId, a.teamName, a.name, a.projectName, a.projectCategory, a.institute_name, a.mentorName, a.primEmail, a.contact, b.synopsis, b.payment 
        FROM teamdetails a, payments b
        WHERE (a.teamId = b.teamId AND a.projectCategory=" Smart City" ) ORDER BY b.id DESC';
		//$result=mysql_query($query);
		//$numfields = mysql_num_fields($result);
	}
	else if($option=='Skill India')
	{
		$query = 'SELECT b.teamId, a.teamName, a.name, a.projectName, a.projectCategory, a.institute_name, a.mentorName, a.primEmail, a.contact, b.synopsis, b.payment 
        FROM teamdetails a, payments b
        WHERE (a.teamId = b.teamId AND a.projectCategory=" Skill India") ORDER BY b.id DESC';
		//$result=mysql_query($query);
		//$numfields = mysql_num_fields($result);
	}
	else if($option=='Computer Science')
	{
		$query = 'SELECT b.teamId, a.teamName, a.name, a.projectName, a.projectCategory, a.institute_name, a.mentorName, a.primEmail, a.contact, b.synopsis, b.payment 
        FROM teamdetails a, payments b
        WHERE (a.teamId = b.teamId AND a.projectCategory=" Computer Science") ORDER BY b.id DESC';
		//$result=mysql_query($query);
		//$numfields = mysql_num_fields($result);
	}
	else if($option=='Information Technology')
	{
		$query = 'SELECT b.teamId, a.teamName, a.name, a.projectName, a.projectCategory, a.institute_name, a.mentorName, a.primEmail, a.contact, b.synopsis, b.payment 
        FROM teamdetails a, payments b
        WHERE (a.teamId = b.teamId AND a.projectCategory=" Information Technology") ORDER BY b.id DESC';
		//$result=mysql_query($query);
		//$numfields = mysql_num_fields($result);
	}
	else if($option=='Electronics and Communication')
	{
		$query = 'SELECT b.teamId, a.teamName, a.name, a.projectName, a.projectCategory, a.institute_name, a.mentorName, a.primEmail, a.contact, b.synopsis, b.payment 
        FROM teamdetails a, payments b
        WHERE (a.teamId = b.teamId AND a.projectCategory=" Electronics and Communication") ORDER BY b.id DESC';
		//$result=mysql_query($query);
		//$numfields = mysql_num_fields($result);
	}
	else if($option=='Electronics and Instrumentation')
	{
		$query = 'SELECT b.teamId, a.teamName, a.name, a.projectName, a.projectCategory, a.institute_name, a.mentorName, a.primEmail, a.contact, b.synopsis, b.payment 
        FROM teamdetails a, payments b
        WHERE (a.teamId = b.teamId AND a.projectCategory=" Electronics and Instrumentation") ORDER BY b.id DESC';
		//$result=mysql_query($query);
		//$numfields = mysql_num_fields($result);
	}
	else if($option=='Electrical and Electronics')
	{
		$query = 'SELECT b.teamId, a.teamName, a.name, a.projectName, a.projectCategory, a.institute_name, a.mentorName, a.primEmail, a.contact, b.synopsis, b.payment 
        FROM teamdetails a, payments b
        WHERE (a.teamId = b.teamId AND a.projectCategory=" Electrical and Electronics") ORDER BY b.id DESC';
		//$result=mysql_query($query);
		//$numfields = mysql_num_fields($result);
	}
	else if($option=='Civil')
	{
		$query = 'SELECT b.teamId, a.teamName, a.name, a.projectName, a.projectCategory, a.institute_name, a.mentorName, a.primEmail, a.contact, b.synopsis, b.payment 
        FROM teamdetails a, payments b
        WHERE (a.teamId = b.teamId AND a.projectCategory=" Civil") ORDER BY b.id DESC';
		//$result=mysql_query($query);
		//$numfields = mysql_num_fields($result);
	}
	else if($option=='Textile')
	{
		$query = 'SELECT b.teamId, a.teamName, a.name, a.projectName, a.projectCategory, a.institute_name, a.mentorName, a.primEmail, a.contact, b.synopsis, b.payment 
        FROM teamdetails a, payments b
        WHERE (a.teamId = b.teamId AND a.projectCategory=" Textile") ORDER BY b.id DESC';
		//$result=mysql_query($query);
		//$numfields = mysql_num_fields($result);
	}
	else if($option=='MechAuto')
	{
		$query = 'SELECT b.teamId, a.teamName, a.name, a.projectName, a.projectCategory, a.institute_name, a.mentorName, a.primEmail, a.contact, b.synopsis, b.payment 
        FROM teamdetails a, payments b
        WHERE (a.teamId = b.teamId AND a.projectCategory=" MechAuto") ORDER BY b.id DESC';
		//$result=mysql_query($query);
		//$numfields = mysql_num_fields($result);
	}
	else if($option=='sort')
	{
		$query = 'SELECT b.teamId, a.teamName, a.name, a.projectName, a.projectCategory, a.institute_name, a.mentorName, a.primEmail, a.contact, b.synopsis, b.payment 
        FROM teamdetails a, payments b
        WHERE (a.teamId = b.teamId) ORDER BY a.institute_name';
		//$result=mysql_query($query);
		//$numfields = mysql_num_fields($result);
	}
        else if($option=='teamid')
	{
		$teamid= $_POST['team'];
		$query = "SELECT b.teamId, a.teamName, a.name, a.projectName, a.projectCategory,a.institute_name, a.mentorName,a.primEmail, a.contact, b.synopsis, b.payment
		 FROM teamdetails a, payments b
		 WHERE (a.teamId = ".$teamid." AND b.teamId=".$teamid.") ORDER BY b.teamId DESC";

	}

	
	echo '<div style = "align:center;"><table border = "1px">'."\n".'<tr>';
	
        echo '<th>S No.</th>';
	echo '<th>Team ID</th>';
	echo '<th>Team Name</th>';
	echo '<th>Member Names</th>';
	echo '<th>Project Name</th>';
	echo '<th>Project Category</th>';
	echo '<th>Institute</th>';
	echo '<th>Mentor Name</th>';
	echo '<th>Email</th>';
	echo '<th>Phone No.</th>';
	echo '<th>Synopsis Status</th>';
	echo '<th>Payment Status</th>';
	echo '<th>View synopsis</th>';
	echo '<th>Approve Payment</th></tr>'; 
        	
	if($result = mysql_query($query) or die(mysql_error()))
	{
		 $numfields = mysql_num_fields($result);
        $sno = 1;
		
		$columns = array();
		
		for ($i=0; $i < $numfields; $i++)
		{
			$columns[$i] = mysql_field_name($result, $i);
            
		}
		while($row = mysql_fetch_assoc($result))
		{   
			echo '<tr>';
            echo '<td>'.$sno.'</td>'; 
             
			for ($i=0; $i < $numfields; $i++)
			{            
				echo '<td>'.$row[$columns[$i]].'</td>';      
                      
			}
              
			echo '<form action = "view_synopsis.php" method="GET" >';
			echo '<td><button type="submit" name = "view" value="'.$row[$columns[0]].'">View</button></td>';
			echo '</form>';
			echo '<form action="approve_project_payment.php" method="GET" >';
			echo '<td><button type="submit" name = "view" value="'.$row[$columns[0]].'">Approve            Payment</button></td>';
			echo '</form>';
			echo '</tr>';
            $sno=$sno+1;
            
		}
	}
    else
     {
        echo 'query not done';
        echo mysql_num_rows(mysql_query($query));
    }
	echo '</table>';
	echo '</form>';
}

?>
</body>
</html>