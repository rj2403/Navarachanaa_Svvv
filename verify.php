<?php
require "database_connection.php";
?>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="Navarachanaa ">

        <meta name="author" content="">

        <title>Navarachanaa | SVVV</title>







             <link rel="stylesheet" href="gallery/css/bootstrap.css" type="text/css" media="screen">
	<link rel="stylesheet" href="gallery/css/responsive1.css" type="text/css" media="screen">
	<link rel="stylesheet" href="gallery/css/style1.css" type="text/css" media="screen">

	<link rel="stylesheet" href="gallery/css/touchTouch.css" type="text/css" media="screen">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>

        <!-- Mobile Specific Meta
		================================================== -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

		<!-- Favicon -->
		<link rel="shortcut icon" type="image/x-icon" href="img/newFav.png" />

		<!-- CSS
		================================================== -->
		<!-- Fontawesome Icon font -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
		<!-- bootstrap.min css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
		<!-- Animate.css -->
        <link rel="stylesheet" href="css/animate.css">
		<!-- Owl Carousel -->
        <link rel="stylesheet" href="css/owl.carousel.css">
		<!-- Grid Component css -->
        <link rel="stylesheet" href="css/component.css">
		<!-- Slit Slider css -->
        <link rel="stylesheet" href="css/slit-slider.css">
		<!-- Main Stylesheet -->
        <link rel="stylesheet" href="css/main.css">
		<!-- Media Queries -->
        <link rel="stylesheet" href="css/media-queries.css">

		<!--
		Google Font
		=========================== -->

		<!-- Oswald / Title Font -->
		<link href='http://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet' type='text/css'>
		<!-- Ubuntu / Body Font -->
		<link href='http://fonts.googleapis.com/css?family=Ubuntu:400,300' rel='stylesheet' type='text/css'>

		<!-- Modernizer Script for old Browsers -->
        <script src="js/modernizr-2.6.2.min.js"></script>


		<script>
		  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

		  ga('create', 'UA-54152927-1', 'auto');
		  ga('send', 'pageview');

		</script>












    </head>

    <body id="body" class="text-size" style="text-align:center;">
	    <!--
	    Start Preloader
	    ==================================== -->

        <!--
        End Preloader
        ==================================== -->

        <!--
        Welcome Slider
        ==================================== -->

		<!--/#home section-->

        <!--
        Fixed Navigation
        ==================================== -->
        <header id="navigation" class="navbar navbar-inverse" style="    padding:0px 15px 0px 15px;margin-right: auto;margin-left: auto;">
            <div class="container">
                <div class="navbar-header">
                    <!-- responsive nav button -->
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
					<!-- /responsive nav button -->

					<!-- logo -->
                    <a class="navbar-brand" href="main.html">
						<h1 id="logo">
							<img src="img/logo-navarachanaa17.png" alt="Navarachanaa 2018 | SVVV" />
						</h1>
					</a>
					<!-- /logo -->
                </div>

				<!-- main nav -->
                <nav class="collapse navbar-collapse navbar-right" role="Navigation">
                    <ul id="nav" class="nav navbar-nav">
                        <li ><a href="index.html">Home</a></li>
                        <li><a href="main.html">About</a></li>
                        <li><a href="main.html#details">Details</a></li>
                        <li><a href="main.html#prizesScroll">Prizes</a></li>
                        <li><a href="main.html#services">Themes</a></li>

                        <li><a href="main.html#showcase">Sponsors</a></li>


                        <li><a href="main.html#contact-us">Contact</a></li>
			<!-- <li><a href="https://play.google.com/store/apps/details?id=competition.svvv.navarachanaa">Android App</a></li> -->


			<li ><a href="#">Gallery</a></li>
                    </ul>
                </nav>
				<!-- /main nav -->

            </div>
        </header>
        <!--
        End Fixed Navigation
        ==================================== -->

<?php
if(isset($_POST['refno']))
{
	$refno = $_POST['refno'];
        $refno = strtoupper($refno);
	$check = mysql_query("SELECT * FROM certificates WHERE refno='$refno'") or die(mysql_error());
	$number = mysql_num_rows($check);
	if($number == 1)
	{
          $details = mysql_fetch_assoc($check);
?>
<div style="margin: 50px auto auto auto;">
This certificate with reference number <?php echo $refno; ?> is valid.<br/>
<table style="margin: 15px auto 25px auto;text-align:left;">
<tr>
<td>Name on Certificate &nbsp;</td><td> : <?php echo $details['name']; ?></td></tr>
<tr>
<td>Team ID </td><td> : <?php echo $details['teamid']; ?></td></tr>
<tr><td>Team Name </td><td> : <?php echo $details['teamname']; ?></td></tr>
</table>

<a href="verify.php" style="color:brown;">Verify another certificate</a>
</div>
<?php
	}
	else
	{
?>
<div style="margin: 50px auto auto auto;">
This certificate with reference number <?php echo $refno; ?> is not valid !<br/>
<a href="verify.php"  style="color:brown;">Verify another certificate</a>
</div>
<?php
	}
}
else
{
?>
<div style="margin: 50px auto auto auto;">
<span>Digital Certificate Verification</span><br/>
<form action="verify.php" role="form" class="form-inline" method=POST>
<div class="form-group">
     <label for="refno">Reference No. </label>
     <input type="text" class="form-control" name="refno" placeholder="Type Reference number..."/>
</div>
<br />
<input type="submit" class="btn btn-default" style="border-radius:15px;" name="submit"/>
</form>
</div>
<?php
}
?>




		<!-- end Contact Area
		========================================== -->

		<footer id="footer" class="bg-one">
			<div class="container">
			    <div class="row wow fadeInUp" data-wow-duration="500ms">

					<div class="col-lg-12">

						<!-- Footer Social Links -->
						<div class="social-icon">
							<ul>
								<li><a href="https://www.facebook.com/navarachanaa/"><i class="fa fa-facebook"></i></a></li>
								<li><a href="https://twitter.com/navarachanaa16"><i class="fa fa-twitter"></i></a></li>

								<li><a href="https://www.youtube.com/channel/UCg5T8YbK7VpDuSKAtkCUIPg"><i class="fa fa-youtube"></i></a></li>
								<li><a href="https://www.linkedin.com/in/navarachanaa2016"><i class="fa fa-linkedin"></i></a></li>
								<li><a href="https://www.instagram.com/navarachanaa2016/"><i class="fa fa-instagram"></i></a></li>
								<li><a href="https://in.pinterest.com/navarachanaa16/"><i class="fa fa-pinterest"></i></a></li>
							</ul>
						</div>
						<!--/. End Footer Social Links -->



					</div> <!-- end col lg 12 -->
				</div> <!-- end row -->
			</div> <!-- end container -->
		</footer> <!-- end footer -->

		<!-- Back to Top
		============================== -->
		<a href="javascript:;" id="scrollUp">
			<i class="fa fa-angle-up fa-2x"></i>
		</a>

		<!-- end Footer Area
		========================================== -->
<!-- copyright -->
						<div class="copyright text-center">
							<a href="index.html">

							</a>
							<br />
							<div style="background-color:#00193c;">
							<p style="padding-bottom:0px"><a href="team.html">Team Navarachanaa</a></p>
							<div id="copyright_svvv"><p id="right" style="padding-bottom:5px"><a href="http://www.svvv.edu.in/">Shri Vaishnav Vidyapeeth Vishwavidyalaya Indore</a></p></div>
							</div>
						</div>
						<!-- /copyright -->
		<!--
		Essential Scripts
		=====================================-->


    </body>
</html>
