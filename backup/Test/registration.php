<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Registration Form</title>
<link rel="stylesheet" href="originalRegistration/css/style.css" />
<link href='http://fonts.googleapis.com/css?family=Engagement' rel='stylesheet' type='text/css'>
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
<article>
<h1>Navarachanaa 2016 Registration</h1>
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
            <label >Team Members</label>
            <select id="select1" name="select1" onclick="addInput()">
                <option value="1" >1</option>
                <option value="2" selected="selected" >2</option>
                <option value="3" >3</option>
                <option value="4">4</option>
              </select>
        </li>
        <div id="inputs">
          <li>
          	<label >Member Name 1:</label>
              <input type="text" size="40" id="name1" name="name1" required="required" />
          </li>
          <!--
          <li>
            <label >Email Id</label>
              <input type="text" size="40" name="email1" required="required" />
          </li>
          <li>
          	<label >Mobile No</label>
              <input type="text" size="40" name="mobile1" required="required" />
          </li>
          -->
          <label >Member Name 2:</label>
            <input type="text" size="40" id="name2" name="name2" required="required" />
        </li>
          <!--
        <li>
        <label >Email Id</label>
            <input type="text" size="40" name="email2" required="required" />
        </li>
        <li>
          <label >Mobile No</label>
            <input type="text" size="40" name="mobile2" required="required" />
        </li>
      -->
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
                <option value="Skill India">Skill India</option>
                <option value="Swach Bharat">Swach Bharat</option>
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
        <label >Projectname</label>
          <input type="text" size="40" name="proj_name" required="required" />
        </li>

        <button type="button" class="action" id="button_show" onclick="show_details()">Next</button>
		 <div id="1234" style=" display :none;" >

		 <li>
        	<label >Abstract:</label>
            <textarea rows="6" maxvalue="300" name="abstract" style="width:263px;" placeholder="Limit 300 characters" maxlength="300"></textarea>
        </li>
                <label >Keywords:</label>
            <textarea rows="3" maxvalue="300" name="keywords" style="width:263px;" placeholder="Limit 300 characters" maxlength="300"></textarea>
        </li>
        <li>
            <label >Introduction:</label>
            <textarea rows="6" max="500" name="introduction" style="width:263px;"  placeholder="Limit 500 characters"  maxlength="500"></textarea>
        </li>
        <li>
            <label >Objective:</label>
            <textarea rows="6" max="300" name="objective" style="width:263px;"  placeholder="Limit 300 characters"  maxlength="300"></textarea>
        </li>
        <li>
            <label >Problem Domain:</label>
            <textarea rows="6" max="300" name="problemdomain" style="width:263px;"  placeholder="Limit 300 characters"  maxlength="300"></textarea>
        </li>
        <li>
            <label >Solution Domain:</label>
            <textarea rows="6" max="700" name="solutiondomain" style="width:263px;"  placeholder="Limit 700 characters"  maxlength="700"></textarea>
        </li>
        <li>
            <label >Application:</label>
            <textarea rows="6" max="300" name="application" style="width:263px;"  placeholder="Limit 300 characters"  maxlength="300"></textarea>
        </li>
        <li>
            <label >Conclusion:</label>
            <textarea rows="6" max="200" name="conclusion" style="width:263px;"  placeholder="Limit 200 characters"  maxlength="200"></textarea>
        </li>
	</ul>
    <p>
        <button type="submit" class="action" id="next" style="display:none;">Submit</button>
        <button type="reset" class="right" id="reset_btn">Reset</button>
    </p>
    <div>
</form>
</article>
<footer>
<p>Developed and Maintained By Shubham Kaushik, Arihant Sai, Arpit Parmar, Aditya Sharma</p>
</footer>
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
  document.getElementById('button_show').style.display='none';
  document.getElementById('next').style.display='block';
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
</script>

<?php

	require_once('submit.php');

?>

</body>
</html>
