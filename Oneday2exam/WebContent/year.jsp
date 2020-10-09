<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <script src="https://kit.fontawesome.com/a076d05399.js"></script>
  <meta name="viewport" content="width=device-width,initial-scale=1.0" >
  <meta charset="utf-8">
	<title>One Day to Exam</title>
  <link rel = "icon" href = "images/title_logo.jpg" type = "image/x-icon"> 
	<link rel="stylesheet" type="text/css" href="CSS/style.css">
</head>

<body onload="load()">
  <%
  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
  response.setHeader("Pragma", "no-cache");
  response.setHeader("Expires", "0");
    if (session.getAttribute("Username")==null) {
		
    	response.sendRedirect("index.jsp"); 
	
	}
    %>
   <button onclick="topFunction()" id="up" title="Go to top">Top</button>
   <jsp:include page="header.jsp"></jsp:include>
  <section class="year">
    <h1 align="center"></h1><br>
    <div class="box-year">
      <h1>1'st YEAR</h1>
      <button id="o1"   onclick="open_close('first','opn','o1','c1');"><b>VIEW</b></button>
      <button id="c1"   onclick="open_close('first','cls','o1','c1');"><b>CLOSE</b></button>
    </div>
    <div id="first"> 
        <div  class="res-container" >
            <div class="box-sub">
                 <h2>ENGLISH</h2>
                  <br>
                <button class="Lec-btn" onclick="Lecture_fun('ENGLISH');"><b>Lecture Notes</b></button>
                <button class="Que-btn" onclick="oneday2exam_fun('ENGLISH');"><b>OneDay2Exam</b></button>
            </div>
            <div class="box-sub">
                <h2>MATHEMATICS-I</h2>
                <br>
            <button class="Lec-btn"  onclick="Lecture_fun('MATHEMATICS-I');"><b>Lecture Notes</b></button>
            <button class="Que-btn" onclick="oneday2exam_fun('MATHEMATICS-I');"><b>OneDay2Exam</b></button>
            </div>
            <div class="box-sub">
              <h2>APPLIED CHEMISTRY</h2>
              <br>
              <button class="Lec-btn" onclick="Lecture_fun('APPLIED CHEMISTRY');"><b>Lecture Notes</b></button>
              <button class="Que-btn" onclick="oneday2exam_fun('APPLIED CHEMISTRY');"><b>OneDay2Exam</b></button>
            </div>
            <div class="box-sub">
              <h2>APPLIED PHYSICS</h2>
              <br>
              <button class="Lec-btn"  onclick="Lecture_fun('APPLIED PHYSICS');"><b>Lecture Notes</b></button>
              <button class="Que-btn" onclick="oneday2exam_fun('APPLIED PHYSICS');"><b>OneDay2Exam</b></button>
              </div>
            <div class="box-sub">
                  <h2>MATHEMATICS-II</h2>
              <br>
              <button class="Lec-btn" onclick="Lecture_fun('MATHEMATICS-II');"><b>Lecture Notes</b></button>
              <button class="Que-btn" onclick="oneday2exam_fun('MATHEMATICS-II');"><b>OneDay2Exam</b></button>
            </div>
            <div class="box-sub">
              <h2>MATHEMATICS-III</h2>
              <br>
              <button class="Lec-btn"  onclick="Lecture_fun('MATHEMATICS-III');"><b>Lecture Notes</b></button>
              <button class="Que-btn" onclick="oneday2exam_fun('MATHEMATICS-III');"><b>OneDay2Exam</b></button>
            </div>
            <div class="box-sub">
              <h2>ENGINEERING DRAWING</h2>
              <br>
              <button class="Lec-btn" onclick="Lecture_fun('ENGINEERING DRAWING');"><b>Lecture Notes</b></button>
              <button class="Que-btn" onclick="oneday2exam_fun('ENGINEERING DRAWING');"><b>OneDay2Exam</b></button>
            </div>
            <div class="box-sub">
              <h2>DIGITAL LOGIC DESIGN(DLD)</h2>
              <br>
              <button class="Lec-btn" onclick="Lecture_fun('DIGITAL LOGIC DESIGN(DLD)');"><b>Lecture Notes</b></button>
              <button class="Que-btn" onclick="oneday2exam_fun('DIGITAL LOGIC DESIGN(DLD)');"><b>OneDay2Exam</b></button>
            </div>
            <div class="box-sub">
              <h2>FUNDAMENTALS OF COMPUTER SCIENCE</h2>
              <br>
              <button class="Lec-btn"  onclick="Lecture_fun('FUNDAMENTALS OF COMPUTER SCIENCE');"><b>Lecture Notes</b></button>
              <button class="Que-btn" onclick="oneday2exam_fun('FUNDAMENTALS OF COMPUTER SCIENCE');"><b>OneDay2Exam</b></button>
            </div>
            <div class="box-sub">
              <h2>PROGRAMMING FOR PROPLEM SOLVING USING C</h2>
              <br>
              <button class="Lec-btn"  onclick="Lecture_fun('PROGRAMMING FOR PROPLEM SOLVING USING C');"><b>Lecture Notes</b></button>
              <button class="Que-btn" onclick="oneday2exam_fun('PROGRAMMING FOR PROPLEM SOLVING USING C');"><b>OneDay2Exam</b></button>
            </div>
        </div>
    </div>
       <br>
    <div class="box-year">
       <h1>2'nd YEAR </h1>
      <button id="o2"   onclick="open_close('second','opn','o2','c2');"><b>VIEW</b></button>
      <button id="c2"   onclick="open_close('second','cls','o2','c2');"><b>CLOSE</b></button>
    </div>
    <div id="second"> 
        <div  class="res-container" >
            <div class="box-sub">
                 <h2>ENGLISH</h2>
                  <br>
                <button class="Lec-btn" onclick="Lecture_fun('ENGLISH');"><b>Lecture Notes</b></button>
                <button class="Que-btn" onclick="oneday2exam_fun('ENGLISH');"><b>OneDay2Exam</b></button>
            </div>
            <div class="box-sub">
                <h2>MATHEMATICS-I</h2>
                <br>
            <button class="Lec-btn"  onclick="Lecture_fun('MATHEMATICS-I');"><b>Lecture Notes</b></button>
            <button class="Que-btn" onclick="oneday2exam_fun('MATHEMATICS-I');"><b>OneDay2Exam</b></button>
            </div>
            <div class="box-sub">
              <h2>APPLIED CHEMISTRY</h2>
              <br>
              <button class="Lec-btn" onclick="Lecture_fun('APPLIED CHEMISTRY');"><b>Lecture Notes</b></button>
              <button class="Que-btn" onclick="oneday2exam_fun('APPLIED CHEMISTRY');"><b>Question Papers</b></button>
            </div>
            <div class="box-sub">
              <h2>APPLIED PHYSICS</h2>
              <br>
              <button class="Lec-btn"  onclick="Lecture_fun('APPLIED PHYSICS');"><b>Lecture Notes</b></button>
              <button class="Que-btn" onclick="oneday2exam_fun('APPLIED PHYSICS');"><b>Question Papers</b></button>
              </div>
            <div class="box-sub">
                  <h2>MATHEMATICS-II</h2>
              <br>
              <button class="Lec-btn" onclick="Lecture_fun('MATHEMATICS-II');"><b>Lecture Notes</b></button>
              <button class="Que-btn" onclick="oneday2exam_fun('MATHEMATICS-II');"><b>Question Papers</b></button>
            </div>
            <div class="box-sub">
              <h2>MATHEMATICS-III</h2>
              <br>
              <button class="Lec-btn"  onclick="Lecture_fun('MATHEMATICS-III');"><b>Lecture Notes</b></button>
              <button class="Que-btn" onclick="oneday2exam_fun('MATHEMATICS-III');"><b>Question Papers</b></button>
            </div>
            <div class="box-sub">
              <h2>ENGINEERING DRAWING</h2>
              <br>
              <button class="Lec-btn" onclick="Lecture_fun('ENGINEERING DRAWING');"><b>Lecture Notes</b></button>
              <button class="Que-btn" onclick="oneday2exam_fun('ENGINEERING DRAWING');"><b>Question Papers</b></button>
            </div>
            <div class="box-sub">
              <h2>DIGITAL LOGIC DESIGN(DLD)</h2>
              <br>
              <button class="Lec-btn" onclick="Lecture_fun('DIGITAL LOGIC DESIGN(DLD)');"><b>Lecture Notes</b></button>
              <button class="Que-btn" onclick="oneday2exam_fun('DIGITAL LOGIC DESIGN(DLD)');"><b>Question Papers</b></button>
            </div>
            <div class="box-sub">
              <h2>FUNDAMENTALS OF COMPUTER SCIENCE</h2>
              <br>
              <button class="Lec-btn"  onclick="Lecture_fun('FUNDAMENTALS OF COMPUTER SCIENCE');"><b>Lecture Notes</b></button>
              <button class="Que-btn" onclick="oneday2exam_fun('FUNDAMENTALS OF COMPUTER SCIENCE');"><b>Question Papers</b></button>
            </div>
            <div class="box-sub">
              <h2>PROGRAMMING FOR PROPLEM SOLVING USING C</h2>
              <br>
              <button class="Lec-btn"  onclick="Lecture_fun('PROGRAMMING FOR PROPLEM SOLVING USING C');"><b>Lecture Notes</b></button>
              <button class="Que-btn" onclick="oneday2exam_fun('PROGRAMMING FOR PROPLEM SOLVING USING C');"><b>Question Papers</b></button>
            </div>
        </div>
    </div>
      <br>
    <div class="box-year">
      <h1>3'rd YEAR </h1>
      <button id="o3" class="click-btn"  onclick="open_close('third','opn','o3','c3');"><b>VIEW</b></button>
      <button id="c3" class="click-btn"  onclick="open_close('third','cls','o3','c3');"><b>CLOSE</b></button>
    </div>
     <div id="third"> 
        <div  class="res-container" >
            <div class="box-sub">
                 <h2>ENGLISH</h2>
                  <br>
                <button class="Lec-btn" onclick="Lecture_fun('ENGLISH');"><b>Lecture Notes</b></button>
                <button class="Que-btn" onclick="oneday2exam_fun('ENGLISH');"><b>OneDay2Exam</b></button>
            </div>
            <div class="box-sub">
                <h2>MATHEMATICS-I</h2>
                <br>
            <button class="Lec-btn"  onclick="Lecture_fun('MATHEMATICS-I');"><b>Lecture Notes</b></button>
            <button class="Que-btn" onclick="oneday2exam_fun('MATHEMATICS-I');"><b>OneDay2Exam</b></button>
            </div>
            <div class="box-sub">
              <h2>APPLIED CHEMISTRY</h2>
              <br>
              <button class="Lec-btn" onclick="Lecture_fun('APPLIED CHEMISTRY');"><b>Lecture Notes</b></button>
              <button class="Que-btn" onclick="oneday2exam_fun('APPLIED CHEMISTRY');"><b>Question Papers</b></button>
            </div>
            <div class="box-sub">
              <h2>APPLIED PHYSICS</h2>
              <br>
              <button class="Lec-btn"  onclick="Lecture_fun('APPLIED PHYSICS');"><b>Lecture Notes</b></button>
              <button class="Que-btn" onclick="oneday2exam_fun('APPLIED PHYSICS');"><b>Question Papers</b></button>
              </div>
            <div class="box-sub">
                  <h2>MATHEMATICS-II</h2>
              <br>
              <button class="Lec-btn" onclick="Lecture_fun('MATHEMATICS-II');"><b>Lecture Notes</b></button>
              <button class="Que-btn" onclick="oneday2exam_fun('MATHEMATICS-II');"><b>Question Papers</b></button>
            </div>
            <div class="box-sub">
              <h2>MATHEMATICS-III</h2>
              <br>
              <button class="Lec-btn"  onclick="Lecture_fun('MATHEMATICS-III');"><b>Lecture Notes</b></button>
              <button class="Que-btn" onclick="oneday2exam_fun('MATHEMATICS-III');"><b>Question Papers</b></button>
            </div>
            <div class="box-sub">
              <h2>ENGINEERING DRAWING</h2>
              <br>
              <button class="Lec-btn" onclick="Lecture_fun('ENGINEERING DRAWING');"><b>Lecture Notes</b></button>
              <button class="Que-btn" onclick="oneday2exam_fun('ENGINEERING DRAWING');"><b>Question Papers</b></button>
            </div>
            <div class="box-sub">
              <h2>DIGITAL LOGIC DESIGN(DLD)</h2>
              <br>
              <button class="Lec-btn" onclick="Lecture_fun('DIGITAL LOGIC DESIGN(DLD)');"><b>Lecture Notes</b></button>
              <button class="Que-btn" onclick="oneday2exam_fun('DIGITAL LOGIC DESIGN(DLD)');"><b>Question Papers</b></button>
            </div>
            <div class="box-sub">
              <h2>FUNDAMENTALS OF COMPUTER SCIENCE</h2>
              <br>
              <button class="Lec-btn"  onclick="Lecture_fun('FUNDAMENTALS OF COMPUTER SCIENCE');"><b>Lecture Notes</b></button>
              <button class="Que-btn" onclick="oneday2exam_fun('FUNDAMENTALS OF COMPUTER SCIENCE');"><b>Question Papers</b></button>
            </div>
            <div class="box-sub">
              <h2>PROGRAMMING FOR PROPLEM SOLVING USING C</h2>
              <br>
              <button class="Lec-btn"  onclick="Lecture_fun('PROGRAMMING FOR PROPLEM SOLVING USING C');"><b>Lecture Notes</b></button>
              <button class="Que-btn" onclick="oneday2exam_fun('PROGRAMMING FOR PROPLEM SOLVING USING C');"><b>Question Papers</b></button>
            </div>
        </div>
    </div>
      <br>
    <div class="box-year">
      <h1>4'th YEAR </h1>
      <button id="o4" class="click-btn"  onclick="open_close('fourth','opn','o4','c4');"><b>VIEW</b></button>
      <button id="c4" class="click-btn"  onclick="open_close('fourth','cls','o4','c4');"><b>CLOSE</b></button>
    </div>
     <div id="fourth"> 
        <div  class="res-container" >
            <div class="box-sub">
                 <h2>ENGLISH</h2>
                  <br>
                <button class="Lec-btn" onclick="Lecture_fun('ENGLISH');"><b>Lecture Notes</b></button>
                <button class="Que-btn" onclick="oneday2exam_fun('ENGLISH');"><b>OneDay2Exam</b></button>
            </div>
            <div class="box-sub">
                <h2>MATHEMATICS-I</h2>
                <br>
            <button class="Lec-btn"  onclick="Lecture_fun('MATHEMATICS-I');"><b>Lecture Notes</b></button>
            <button class="Que-btn" onclick="oneday2exam_fun('MATHEMATICS-I');"><b>OneDay2Exam</b></button>
            </div>
            <div class="box-sub">
              <h2>APPLIED CHEMISTRY</h2>
              <br>
              <button class="Lec-btn" onclick="Lecture_fun('APPLIED CHEMISTRY');"><b>Lecture Notes</b></button>
              <button class="Que-btn" onclick="oneday2exam_fun('APPLIED CHEMISTRY');"><b>Question Papers</b></button>
            </div>
            <div class="box-sub">
              <h2>APPLIED PHYSICS</h2>
              <br>
              <button class="Lec-btn"  onclick="Lecture_fun('APPLIED PHYSICS');"><b>Lecture Notes</b></button>
              <button class="Que-btn" onclick="oneday2exam_fun('APPLIED PHYSICS');"><b>Question Papers</b></button>
              </div>
            <div class="box-sub">
                  <h2>MATHEMATICS-II</h2>
              <br>
              <button class="Lec-btn" onclick="Lecture_fun('MATHEMATICS-II');"><b>Lecture Notes</b></button>
              <button class="Que-btn" onclick="oneday2exam_fun('MATHEMATICS-II');"><b>Question Papers</b></button>
            </div>
            <div class="box-sub">
              <h2>MATHEMATICS-III</h2>
              <br>
              <button class="Lec-btn"  onclick="Lecture_fun('MATHEMATICS-III');"><b>Lecture Notes</b></button>
              <button class="Que-btn" onclick="oneday2exam_fun('MATHEMATICS-III');"><b>Question Papers</b></button>
            </div>
            <div class="box-sub">
              <h2>ENGINEERING DRAWING</h2>
              <br>
              <button class="Lec-btn" onclick="Lecture_fun('ENGINEERING DRAWING');"><b>Lecture Notes</b></button>
              <button class="Que-btn" onclick="oneday2exam_fun('ENGINEERING DRAWING');"><b>Question Papers</b></button>
            </div>
            <div class="box-sub">
              <h2>DIGITAL LOGIC DESIGN(DLD)</h2>
              <br>
              <button class="Lec-btn" onclick="Lecture_fun('DIGITAL LOGIC DESIGN(DLD)');"><b>Lecture Notes</b></button>
              <button class="Que-btn" onclick="oneday2exam_fun('DIGITAL LOGIC DESIGN(DLD)');"><b>Question Papers</b></button>
            </div>
            <div class="box-sub">
              <h2>FUNDAMENTALS OF COMPUTER SCIENCE</h2>
              <br>
              <button class="Lec-btn"  onclick="Lecture_fun('FUNDAMENTALS OF COMPUTER SCIENCE');"><b>Lecture Notes</b></button>
              <button class="Que-btn" onclick="oneday2exam_fun('FUNDAMENTALS OF COMPUTER SCIENCE');"><b>Question Papers</b></button>
            </div>
            <div class="box-sub">
              <h2>PROGRAMMING FOR PROPLEM SOLVING USING C</h2>
              <br>
              <button class="Lec-btn"  onclick="Lecture_fun('PROGRAMMING FOR PROPLEM SOLVING USING C');"><b>Lecture Notes</b></button>
              <button class="Que-btn" onclick="oneday2exam_fun('PROGRAMMING FOR PROPLEM SOLVING USING C');"><b>Question Papers</b></button>
            </div>
        </div>
    </div>
  </section>
    

  
 

	<footer id="foot">
		<h1 align="center" >ABOUT US</h1><br>
		<p align="center"> OneDay2Exam is proud to collect & produce wonderful and engaging content for all of you to enjoy. We have chosen best content for each topic and arranged it so you can study it in one go. Here, you’ll be able to follow OneDay2Exam, the creative process, and the creative journey.
			
		</p><br>
			<p align="center">Today, video content is one of today’s most challenging and exciting mediums. OneDayToExam is constantly on the lookout for new ways to express ideas, and is always thrilled to collaborate with other artists in the video community. Take a look around the site, and please don’t hesitate to send feedback or ask questions.</p><br>
         <p align="center">&copy2020 by OneDay2Exam</p><br>
	</footer>



  <div id="oneday2exam_id" class="modal">             
         <section class="modal-content animate">
               <div class="imgcontainer" >
                 <span onclick="document.getElementById('oneday2exam_id').style.display='none'" class="close" title="Close Modal">&times;</span><br>
                 <h1 align="center" id='h2id' style="color: #000;"></h1>
                  <h1 align="center" style="color: #000;">OneDay2Exam</h1>
              </div>   
              <div class="container"><br>
                <button class="unit-btn" onclick="download('QUETION-PAPERS');"><b>Question papers</b></button>
                <button class="unit-btn" onclick="download('IMP-QUSTION');"><b>Important Quetions</b></button>
                <button class="unit-btn" onclick="download('IMP-TOPICS-ANS');"><b>Important Topics with Answers</b></button>
              </div>
       </section>
  </div>
   <div id="lecture-notes_id" class="modal">              
         <section class="modal-content animate">
               <div class="imgcontainer" >
                  <span onclick="document.getElementById('lecture-notes_id').style.display='none'" class="close" title="Close Modal">&times;</span><br>
                  <h1 align="center" id='h1id' style="color: #000;"></h1>
                   <h1 align="center" style="color: #000;">Lecture notes</h1>
              </div>
              <div class="container">
                <button class="unit-btn" onclick="download('SYLLABUS');"><b>SYLLABUS</b></button>
                <button class="unit-btn" onclick="download('UNIT-1');"><b>UNIT-1</b></button>
                <button class="unit-btn"  onclick="download('UNIT-2');"><b>UNIT-2</b></button>
                <button class="unit-btn"  onclick="download('UNIT-3');"><b>UNIT-3</b></button>
                <button class="unit-btn"  onclick="download('UNIT-4');"><b>UNIT-4</b></button>
                <button class="unit-btn"  onclick="download('UNIT-5');"><b>UNIT-5</b></button>
                <button class="unit-btn"  onclick="download('UNIT-6');"><b>UNIT-6</b></button>
              </div>
       </section>
  </div>


   <script src="JavaScript/script.js"></script>

</body>
</html>