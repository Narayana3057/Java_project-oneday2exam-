
<header> <nav> <input type="checkbox" id="check">
	<label for="check"> <i class="fas fa-bars" id="btn"></i> <i
		class="fas fa-times" id="cancel"></i>

	</label> <img src="images/logo.png" alt="No">
	<ul>
		<li><a href="index.jsp">Home </a></li>
		
		<li><a href="#foot">About Us</a></li>
		<li><a href="#"
			onclick="document.getElementById('contact').style.display='block'">contact</a>
		</li>
		
		
		<% if(session.getAttribute("Username")!=null){
			%>
			<li>
			
			 <form method="post" action="Logout">
			  <button type="submit">LOGOUT</button>
			  
			  </form>
			  
			  
			
		 </li>
			<%}
		else{%>
		<li><a href="#"
			onclick="document.getElementById('login').style.display='block'">LogIn</a>
		</li>
		<li><a href="#"
			onclick="document.getElementById('signup').style.display='block'">SignUp</a>
		</li>
		
		<%}%>
	</ul>
	</nav>

	<div id="login" class="modal">
		<form class="modal-content animate" name="loginform" onSubmit="return LoginValidation()" method="post" action="./LoginServlet"
			method="post">
			<div class="imgcontainer">
				<span
					onclick="document.getElementById('login').style.display='none'"
					class="close" title="Close Modal">&times;</span>

			</div>
			<div class="container">
				<h1 align="center">Login</h1>

				<label for="uname"><b>Email Id</b></label> <input type="text"
					placeholder="Enter email id" name="email" required> <label
					for="psw"><b>Password</b></label> <input type="password"
					placeholder="Enter Password" name="password" required>

				<button type="submit">Login</button>
				<label> </label>
			</div>

			<div class="container" style="background-color: #fff">
				<button type="button"
					onclick="document.getElementById('login').style.display='none'"
					class="cancelbtn">Cancel</button>
				<span class="psw"><a class="link" href="#">Forgot
						password?</a></span>
			</div>
		</form>
	</div>
	<div id="signup" class="modal">
		<form class="modal-content animate"
			onSubmit="return SignupValidation()" name="signupform"
			action="./main" method="post">
			<div class="imgcontainer">
				<span
					onclick="document.getElementById('signup').style.display='none'"
					class="close" title="Close Modal">&times;</span>
			</div>
			<div class="container">
				<h1 align="center">SignUp</h1>
				<br> <label for="uname"><b>Full Name</b></label> <input
					type="text" placeholder="Enter full name" name="name" required>
				<label for="uname"><b>Email Id</b></label> <input type="text"
					placeholder="Enter Email Id" name="email" required> <label
					for="uname"><b>Mobile No</b></label> <input type="text"
					placeholder="Enter Mobile number" name="mobile" required> <label
					for="psw"><b>Create Password</b></label> <input type="password"
					placeholder="Enter Password" name="password" required> <label
					for="psw"><b>Confirm Password</b></label> <input type="password"
					placeholder="Confirm Password" name="confirmPass" required>
				<button type="submit">Signup</button>
				<label> </label>
			</div>
			<div class="container" style="background-color: #fff">
				<button type="button"
					onclick="document.getElementById('signup').style.display='none'"
					class="cancelbtn">Cancel</button>
			</div>
		</form>
	</div>

	<div id="contact" class="modal">
		<form class="modal-content animate" action="/action_page.php"
			method="post">
			<div class="imgcontainer">
				<span
					onclick="document.getElementById('contact').style.display='none'"
					class="close" title="Close Modal">&times;</span>
			</div>
			<div class="container">
				<h1 align="center">Get in touch</h1>
				<br> <label for="uname"><b>Name</b></label> <input type="text"
					placeholder="Enter Name" name="uname" required> <label
					for="uname"><b>Email id</b></label> <input type="text"
					placeholder="Enter Email id" name="uname" required> <input
					type="text" placeholder="Subject" name="psw" required> <input
					type="text" placeholder="Type your message here" name="psw"
					required>
				<button type="submit">Submit</button>
				<label> </label>
			</div>
		</form>
	</div>
	</header>
		
