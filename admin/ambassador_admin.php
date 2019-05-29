<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Navarachanaa || Admin</title>
<link rel="stylesheet" href="admin.css" />
</head>
<body>
<form action = "ambassador_admin.php" method= "POST">

<center><br><br>
<select name="option">
<option value="all">Show All Ambassador</option>
</select>

<button type="submit" name = "but1" value="submit">Submit</button></center><br><br>
</form>

<?php

require('database_connection.php');

if(isset($_POST['option'])){

	$option = $_POST['option'];
	if($option == 'all')
	{
		$query="SELECT * FROM ambassador";
	}

	echo '<form action = "ambassador_admin.php"  method="GET" >';
	echo '<div style = "align:center;"><table border = "1px">'."\n".'<tr>';

	echo '<th>S No.</th>';
	echo '<th>Name</th>';
	echo '<th>Email</th>';
	echo '<th>Contact No</th>';
	echo '<th>Institute</th></tr>';

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
