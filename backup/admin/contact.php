<html>
  <head>
  </head>

  <body>
    <table border="2px">
      <th>Name</th>
      <th>Email</th>
      <th>Subject</th>
      <th>Message</th>
<?php
require("database_connection.php");
$sql_contact="SELECT * FROM contactdetails";
$run_contact=mysql_query($sql_contact) or die(mysql_error());
while($rows=mysql_fetch_assoc($run_contact))
{
  echo '<tr>';
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
