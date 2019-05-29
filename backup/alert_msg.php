<?php
function alert_msg($str)
{
echo '<script ="text/javascript">';
echo ' alert(" '.$str . ' ")';
echo '</script>';
}

function alert_final()
{
echo '<script ="text/javascript">';
echo ' alert("Registration successful !\nPlease check your email for further details.\n(Check your spam folder if mail not found !)")';
echo '</script>';
}

?>
