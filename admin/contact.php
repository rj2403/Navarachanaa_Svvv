<html>
  <head>
  </head>

  <body>
    <table border="2px">
      <th>Time</th>  
      <th>Name</th>
      <th>Email</th>
      <th>Subject</th>
      <th>Message</th>
<?php
require("database_connection.php");
$date = date('Y-m-d H:i:s');
$sql_contact="SELECT * FROM contactdetails ORDER BY time DESC";
$run_contact=mysql_query($sql_contact) or die(mysql_error());
while($rows=mysql_fetch_assoc($run_contact))
{
  echo '<tr>';
  echo '<td>'.$rows['time'].'</td>';
  echo '<td>'.$rows['name'].'</td>';
  echo '<td>'.$rows['email'].'</td>';
  echo '<td>'.$rows['subject'].'</td>';
  echo '<td>'.$rows['message'].'</td>';
  echo '</tr>';
}
 ?>
 </table>
</body>
</html>
