//login validation 
function myFunction(){
	document.getElementById('logid').style.display='none'
}
function LoginValidation(){
	var email=document.loginform.email;
	var c1=document.loginform.password;
	if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email.value))){
		alert("Invalid email id");function myFunction(){
			alert("hii");
		}
		email.focus();
		return false;
	}
	return true;
	
}
//sign_up form validation 
function SignupValidation(){
	document.getElementById('satya').style.display='none';
	
	var name=document.signupform.name;
	var email=document.signupform.email;
	var mobile=document.signupform.mobile;
	var c1=document.signupform.password;
	var c2=document.signupform.confirmPass;
	
	
	if(!(/^[a-zA-Z]+$/.test(name.value)) && name.value.length>=30){
		alert("Invalid name");
		name.focus();
		return false;
	}
	if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email.value))){
		alert("Invalid email id");
		email.focus();
		return false;
	}
	
	
	if(ValidatePhonenumber(mobile)==false){
		return false;
	}
	if(c1.value.length<5){
		alert("Password must be more than 4 characters");
		c1.focus();
		return false;
	}
	if(c1.value!=c2.value){
		alert("Password not matched");
		c2.focus();
		return false;
		
	}
	
	
	return true;
}




function ValidatePhonenumber(inputtxt)
	{
	var phoneno = /^\d{10}$/;
	var i=inputtxt.value.charAt(0);

	if(inputtxt.value.match(phoneno))
	{
		if(i==9 || i==8 ||i==7 ||i==6){}
		else{
			alert("Not a valid Phone Number");
			inputtxt.focus();
			return false;
		}
	}
	else
	{	
		alert("Not a valid Phone Number");
		inputtxt.focus();
		return false;
		
	}
 }
 


//home page script
 var st="";

 function move_to_years(k){
         
              document.location='year.jsp';
        
     }

//year.html script

//for open_close of each year begin

   function open_close(i,f,id1,id2){
        if(f=="opn"){
          document.getElementById(i).style.display = "block";
          document.getElementById(id2).style.display = "block";
          document.getElementById(id1).style.display = "none";
           }

       if(f=="cls"){
         document.getElementById(i).style.display = "none";
        document.getElementById(id2).style.display = "none";
        document.getElementById(id1).style.display = "block";
       }
   
  }
//end

//for downloading notes begin
  var subject;

  function Lecture_fun(i){

      subject=i;
      document.getElementById('lecture-notes_id').style.display='block';
       document.getElementById("h1id").innerHTML = i;
  }
  function oneday2exam_fun(i){
      subject=i;
      document.getElementById('oneday2exam_id').style.display='block';
      document.getElementById("h2id").innerHTML = i;
      
  }
  
  function download(k){

    var name='Lec_notes/'+subject+'_'+k+'.pdf';
    window.open(name,'_blank');
     
  }

  //end

 //for top button begin()

//Get the button
       var mybutton = document.getElementById("up");

        // When the user scrolls down 20px from the top of the document, show the button
        window.onscroll = function() {scrollFunction()};

        function scrollFunction() {
          if (document.body.scrollTop > 200 || document.documentElement.scrollTop > 200) {
            mybutton.style.display = "block";
          } else {
            mybutton.style.display = "none";
          }
        }

        // When the user clicks on the button, scroll to the top of the document
        function topFunction() {
          document.body.scrollTop = 0;
          document.documentElement.scrollTop = 0;
        }


    //end