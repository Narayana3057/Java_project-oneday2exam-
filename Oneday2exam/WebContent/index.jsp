<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<meta charset="utf-8">
<title>One Day 2 Exam</title>
<link rel="icon" href="images/title_logo.jpg" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="CSS/style.css">

</head>
<body onload="myFunction()">
    <% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");
    %>
	<jsp:include page="header.jsp"></jsp:include>

	<div align="center" class="main">
		<br>
		<br>
		 <% 
		if (session.getAttribute("Username")!=null) {
		%>
		<h5 align="left">Welcome
		 <%=session.getAttribute("Username")%></h5>
		<%
		}
		else if (request.getAttribute("logMsg")!=null) {
		%>
		
		<div id="logid" style="background-color:red;opacity: 0.8;">
		
		<span style="color:black;cursor:pointer;"
					onclick="document.getElementById('logid').style.display='none'"
					 title="Close">&times;</span>
			<h6  > You have entered wrong user login credentails..try again..</h6>
			
		</div>
		 <%} 
		else if (request.getAttribute("sinMsg") =="sucess")
         { 
		%>
		
		<div id="sinId" style="background-color:green;opacity: 0.8;">
		<span style="color:black;cursor:pointer;"
					onclick="document.getElementById('sinId').style.display='none'"
					 title="Close">&times;</span>
			<h6> Registered successfully.Please login to continue...</h6>
		</div>
		<%
			}
		else if (request.getAttribute("sinMsg")=="already exist") {
		%>
		<div id="sinId" style="background-color:red;opacity: 0.8;">
		<span style="color:black;cursor:pointer;"
					onclick="document.getElementById('sinId').style.display='none'"
					 title="Close">&times;</span>
			<h6  >user already exist...try to use different email and phone to register new account</h6>
			
		</div>
		
		<%
		request.setAttribute("sinM2","reload");
			}
		%>
		
		<br> <br>
		<br>
		<h1>OneDay2Exam</h1>
		<br> <a href="#learn" class="btn"><b>START LEARNING</b></a>
	</div>

	<section class="res-container" id="learn">
	<div class="box">
		<h1>CSE</h1>
		<br>
		<p>
			<b>Computer Science and Engineering</b>
		</p>
		<br>
		<button class="click-btn" type="button"
			onclick="move_to_years('A/year.html');">Click Here</button>
	</div>

	<div class="box">
		<h1>ECE</h1>
		<br>
		<p>
			<b>Electronics and Communication Engineering</b>
		</p>
		<br>
		<button class="click-btn" type="button"
			onclick="move_to_years('Electronics and Communication Engineering')">Click
			Here</button>
	</div>

	<div class="box">
		<h1>EEE</h1>
		<br>
		<p>
			<b>Elctrical and Electronics Engineering</b>
		</p>
		<br>
		<button class="click-btn"
			onclick="move_to_years('Elctrical and Electronics Engineering')">Click
			Here</button>
	</div>

	<div class="box">
		<h1>MEC</h1>
		<br>
		<p>
			<b>Mechanical</b>
		</p>
		<p>
			<b> Engineering</b>
		</p>
		<br>
		<button class="click-btn"
			onclick="move_to_years('Mechanical Engineering')">Click Here</button>
	</div>

	</section>


	<footer id="foot">
	<h1 align="center">ABOUT US</h1>
	<br>
	<p align="center">OneDay2Exam is proud to collect & produce
		wonderful and engaging content for all of you to enjoy. We have chosen
		best content for each topic and arranged it so you can study it in one
		go. Here, you’ll be able to follow OneDay2Exam, the creative
		process, and the creative journey.</p>
	<br>
	<p align="center">Today, video content is one of today’s most
		challenging and exciting mediums. OneDayToExam is constantly on the
		lookout for new ways to express ideas, and is always thrilled to
		collaborate with other artists in the video community. Take a look
		around the site, and please don’t hesitate to send feedback or ask
		questions.</p>
	<br>
	<p align="center">&copy2020 by OneDay2Exam</p>
	<br>

	</footer>




	<script src="JavaScript/script.js"></script>


</body>

</html>