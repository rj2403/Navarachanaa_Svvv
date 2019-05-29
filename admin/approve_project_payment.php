<?php

require_once("database_connection.php");

if(isset($_POST['view']) && isset($_POST['mode']) && isset($_POST['tid']))
{

$teamid = $_POST['view'];
$mode = $_POST['mode'];
$tid = $_POST['tid'];

$detailsquery="SELECT * FROM teamdetails where teamId=".$teamid.";";
	$result=mysql_query($detailsquery);
        $projname="";
        $email="";
        $teamname="";
        while($row=mysql_fetch_assoc($result))
        {
           $projname=$row["projectName"];
           $email=$row["primEmail"];
           $teamname=$row["teamName"];           
        }

$query ="UPDATE payments SET payment=1 , mode='$mode' , tid='$tid' where teamId='$teamid';";
$done=mysql_query($query) or die(mysql_error());
if($done)
{

$subject = "Payment Approval for NAVARACHANAA 2016";
$txt = '
Dear Participants,

Congratulations on behalf of SVVV Navarachanaa team as your payment for (Team ID : '.$teamid.') has been received.
For presentation round please refer  http://navarachanaa.svvv.edu.in/ after 23rd April 2016.

We wish you all the best for upcoming competition.

Best Regards,
Team NAVARACHANAA

Contact:
navarachanaa@svvv.edu.in
+91-8878600610
+91-9479728900 ';
$headers = "From: noreply@svvv.edu.in" . "\r\n" .
"CC: navarachanaa.svvv.edu.in";

if(mail($email,$subject,$txt,$headers)){


  ?>
  <script>
  alert("Payment status has been updated");
  window.location.href="index.php";
  </script>
  <?php
}
}
else
 {
   echo 'not done';
}

}

else if(isset($_GET['view']))
{
$teamid=$_GET['view'];
echo '<div style = "align:center;"><table border = "1px">'."\n".'<tr>';
?>

<form action="approve_project_payment.php" method="POST">
<input type="hidden" name='view' value="<?php echo $teamid;?>" />
<th>Team ID</th>
<th>Mode of Payment</th>
<th>Transaction ID</th>
<th>Approve Payment</th></tr>
<tr><td><?php echo $teamid;?></td>
<td><select name="mode" id="mode">
<option value="DD">BY Demand Draft</option>
<option value="NEFT">online payment(NEFT)</option>
<option value="bank receipt">Bank Receipt</option>
<option value="dir payment">Direct payment(to faculty)</option>
</select></td>
<td><input type ="text" name="tid" id="tid"></td>
<td><button type="submit" name="approved" value="approved">Approve</button></td></tr>
</form>
</table>
<?php
}
 ?>