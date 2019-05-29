<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Registration Form</title>


<link rel="stylesheet" href="originalRegistration/css/style.css" />

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



<link href='http://fonts.googleapis.com/css?family=Engagement' rel='stylesheet' type='text/css'>

		<!-- Oswald / Title Font -->
		<link href='http://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet' type='text/css'>
		<!-- Ubuntu / Body Font -->
		<link href='http://fonts.googleapis.com/css?family=Ubuntu:400,300' rel='stylesheet' type='text/css'>
<!--[if IE]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="originalRegistration/js/jquery.uniform.min.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript" charset="utf-8">
      $(function(){
        $("input:checkbox, input:radio, input:file, select").uniform();
      });
    </script>
</head>
<body>


        <!--
        Fixed Navigation
        ==================================== -->
        <header id="navigation" class="navbar navbar-inverse">
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
                    <a class="navbar-brand" href="index.html">
						<h1 id="logo">
							<img src="img/logo-navarachanaa17.png" alt="Navarachanaa 2016 | SVVV" />
						</h1>
					</a>
					<!-- /logo -->
                </div>

				<!-- main nav -->
                <nav class="collapse navbar-collapse navbar-right" role="Navigation">
                    <ul id="nav" class="nav navbar-nav">
			<li ><a href="index.html">Home</a></li>
                        <li><a href="index.html#about">About</a></li>
                        <li><a href="index.html#details">Details</a></li>
                        <li><a href="index.html#prizesScroll">Prizes</a></li>
                        <li><a href="index.html#services">Themes</a></li>

                        <li><a href="index.html#showcase">Sponsors</a></li>


                        <li><a href="index.html#contact-us">Contact</a></li>
			<!-- <li><a href="https://play.google.com/store/apps/details?id=competition.svvv.navarachanaa">Android App</a></li> -->


			<li ><a href="registrationRules.html">Registration</a></li>
                    </ul>
                </nav>
				<!-- /main nav -->

            </div>
        </header>
        <!--
        End Fixed Navigation
        ==================================== -->


<article>
<h1>Navarachanaa 2018 Registration</h1>
<form action="registration.php" method="POST">

	<ul>
        <li>
        	<label >Team Name:</label>
            <input type="text" size="40" id="team_name" name="team_name" required="required" />
        </li>
        <li>
        	<label >Mentor Name:</label>
            <input type="text" size="40" id="mentor_name" name="mentor_name" required="required" />
        </li>
        <li>
        	<label >Mentor Contact No: </label>
            <input type="text" size="40" id="mentor_contact_no" name="mentor_contact_no" placeholder="10 digit mobile number" maxlength="10" required="required" />
        </li>
        <li>
        	<label >External Mentor (optional):</label>
            <input type="text" size="50" name="ext_mentor_name" id="ext_mentor_name" placeholder="person persuaded you to register"  />
        </li>
        <li>
            <label >Team Members</label>
            <select id="select1" name="select1" onclick="addInput()">
                <option value="2" selected="selected" >2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
              </select>
        </li>
        <div id="inputs">
          <li>
          	<label >Member Name 1:</label>
              <input type="text" size="40" id="name1" name="name1" required="required" />
          </li>
          <li>
          <label >Member Name 2:</label>
            <input type="text" size="40" id="name2" name="name2" required="required" />
        </li>
        </div>
        <br>
        <li>
        	<label >Contact No: </label>
            <input type="text" size="40" id="contact" name="contact" placeholder="10 digit mobile number" maxlength="10" required="required" />
        </li>
        <li>
        	<label >Institute Name:</label>
            <input type="text" size="40" name="ins_name" id="ins_name" required="required" />
        </li>
        <li>
        	<label for="email">Email:</label>
            <input type="email" size="40" id="email" name="email" required="required" />
        </li>
        <li>
            <label >Project Category</label>
            <select id="projectCategory" name="projectCategory" onclick="add_general_dropdown()" >
                <option value="Digital India">Digital India</option>
                <option value="Make In India">Make In India</option>
                <option value="Smart City">Smart City</option>
                <option value="Skill India">Skill India/Startup India</option>
                <option value="Swach Bharat">Swachh Bharat</option>
                <option value="General">General</option>
            </select>
        </li>
        <li id="general_select" style="display:none;">
        <label id="mention_theme" >Mention Category</label>
        <select id="general_dropdown" name="general_dropdown" >
        <option value="Computer Science">Computer Science</option>
        <option value="Information Technology">Information Technology</option>
        <option value="Electronics and Communication">Electronics and Communication</option>
        <option value="Electronics and Instrumentation">Electronics and Instrumentation</option>
        <option value="Electrical and Electronics">Electrical and Electronics</option>
        <option value="Civil">Civil</option>
        <option value="Textile">Textile</option>
        <option value="Mechanical">Mechanical</option>
      </select>
        </li>
        <li>
        <label >Project Name</label>
          <input type="text" size="40" name="proj_name" required="required" />
        </li>
        <li>
            <label>How did you heard about NAVARACHANAA</label>
            <select id="heard_navarachanaa" name="heard_navarachanaa" onclick="heard_navarachanaa_details()" >
                <option value="Friends">Friends</option>
                <option value="Social">Social Media</option>
                <option value="Print">Print Media</option>
                <option value="Word">Word Of Mouth</option>
                <option value="Students">SVITS College Students</option>
                <option value="Other">Other</option>
            </select>
        </li>
        </li>
        <li id="nava" style="display:none">
        	<label>Please Mention:</label>
            <input type="text" size="40" id="heard_navarachanaa_other" name="heard_navarachanaa_other"  />
        </li>
      <!--  <button type="button" class="action" id="button_show" onclick="show_details()">Next</button> -->
    </ul>
    <p>
        <button type="reset" class="right" id="reset_btn_1">Reset</button>
        <button type="button" class="action" id="next" onclick="show_details()">Next</button>
    </p>
    <div id="1234" style=" display :none;" >
    <ul>
		 <li>
        	<label >Abstract:</label>
            <textarea rows="6" maxvalue="300" name="abstract" style="width:263px;" placeholder="Limit 300 characters" maxlength="300" required="required" ></textarea>
        </li>
        <li>
            <label >Introduction:</label>
            <textarea rows="6" max="500" name="introduction" style="width:263px;"  placeholder="Limit 500 characters"  maxlength="500" required="required" ></textarea>
        </li>
        <li>
            <label >Objective:</label>
            <textarea rows="6" max="300" name="objective" style="width:263px;"  placeholder="Limit 300 characters"  maxlength="300" required="required" ></textarea>
        </li>
        <li>
            <label >Problem Domain:</label>
            <textarea rows="6" max="300" name="problemdomain" style="width:263px;"  placeholder="Limit 300 characters"  maxlength="300" required="required" ></textarea>
        </li>
        <li>
            <label >Solution Domain:</label>
            <textarea rows="6" max="700" name="solutiondomain" style="width:263px;"  placeholder="Limit 700 characters"  maxlength="700" required="required" ></textarea>
        </li>
        <li>
            <label >Application:</label>
            <textarea rows="6" max="300" name="application" style="width:263px;"  placeholder="Limit 300 characters"  maxlength="300" required="required" ></textarea>
        </li>
        <li>
            <label >Conclusion:</label>
            <textarea rows="6" max="200" name="conclusion" style="width:263px;"  placeholder="Limit 200 characters"  maxlength="200" required="required" ></textarea>
        </li>

	</ul>
    <p>
        <button type="reset" class="right" id="reset_btn_2">Reset</button>
        <button type="submit" class="action" id="submit"> Submit</button>
    </p>
</div>


			<div class="row">

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

</div>


</form>
</article>
<div id="copyright_svvv"><p id="right"><a href="http://www.svvv.edu.in/">Shri Vaishnav Vidyapeeth Vishwavidyalaya  Indore</a></p></div>
<script type="text/javascript">
function addInput()
{
  var x=document.getElementById('select1');
  var y=x.options[x.selectedIndex].value;
  var s=document.getElementById('inputs');
  s.innerHTML=" <br>";
      for(var i=0;i<y;++i)
      {
            s.innerHTML += "<li><label>Member Name: "+(i+1)+ "</label> <input type='text' id=' "+"name"+i+1+" ' name='name"+(i+1)+"' size=40  required='required'/ > </li> ";
            //  s.innerHTML += "<li><label>Email Id</label> <input type='text' id=' "+"email"+i+1+" '  size=40 required='required'/ > </li> ";
            //  s.innerHTML += "<li><label>Mobile No</label> <input type='text' id=' "+"mobile"+i+1+" ' size=40 required='required'/ > </li> ";
      }
}
function show_details()
{
 var x=document.getElementById('1234');
  x.style.display='block';
  document.getElementById('next').style.display='none';
  document.getElementById('reset_btn_1').style.display='none';
}
             function add_general_dropdown()
             {

                  var x=document.getElementById('projectCategory');
                  var y=x.options[x.selectedIndex].value;
                if(y=="General")
                {
                  document.getElementById('general_select').style.display='block';
                }
                else
                {
                  document.getElementById('general_select').style.display='none';
                }
            }

     function heard_navarachanaa_details()
     {
           var x=document.getElementById('heard_navarachanaa');
                  var y=x.options[x.selectedIndex].value;
                if(y=="Other")
                {
                  document.getElementById('nava').style.display='block';
                }
                else
                {
                  document.getElementById('nava').style.display='none';
                }
     }
</script>

<?php

	require_once('submit.php');

?>

</body>
</html>
