<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>User RegistrationForm</title>
<style>  
		*{
			margin: 0;
			padding: 0;
			box-sizing: border-box;
		}
		body{
        
			min-height: 100vh;
			background: silver;
			display: flex;
			font-family: sans-serif;
		}
		.container{
			margin: auto;
			width: 500px;
			padding:20px;
			max-width: 90%;
		}
		.container form{
           
			width: 100%;
			height: 100%;
			padding: 20px 20px;
			background: lavender;
			border-radius: 4px;
			box-shadow: 0 8px 16px rgba(0,0,0,.3);
		}
		.container form h1{
			
			margin-bottom: 24px;
			color: #222;
		}
  
     
    
         input[type=text], input[type=password],input[type=date], textarea {  
    
    
            display: inline-block;  
            width: 100%;
            height: 40px;
            background: white;
            border-radius: 4px;
            border: 1px solid silver;
            margin: 10px -10px 18px ;
            padding: 0 10px;
        }  
        div {  
                padding: 20px 0;  
        }  
        hr {  
            border: 1px solid #f1f1f1;  
            margin-bottom: 25px;  
        }  
        .registerbtn {  
            margin-left: 50%;
            transform: translateX(-50%);
            width: 120px;
            height: 34px;
            border: none;
            outline: none;
            background: #27a327;
            cursor: pointer;
            font-size: 16px;
            text-transform: uppercase;
            color: white;
            border-radius: 4px;
            transition: .3s;
        }  
        .registerbtn:hover {  
        opacity: .7;  
        }  
</style>  
</head>
<body>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
%>
<script type="text/javascript">
function Enableskills(){
	var trainer=document.getElementById("trainer");
	var skills=document.getElementById("skills");
	skills.disabled=trainer.checked?false:true;
	if(!skills.disabled){
		skills.focus();

	}
	
}

</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>  
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> 

	<div class="container">
	<form:form action="/register"  modelAttribute="register">
	<h1>User Registration Form</h1>

	<div class="form-group">
	<label>Select Your Role:</label><br><br>
	<form:radiobutton path="roleType" value="Trainer" id="trainer" onclick="Enableskills()"/>Trainer
	<form:radiobutton path="roleType" value="Trainee" id="trainee" onclick="Enableskills()"/>Trainee
	<br><br>
	First Name <form:input path="firstName" type="text" />
	<form:errors path="firstName" style="color:red" />
	<br>
	Last Name <form:input path="lastName" type="text" />
	<form:errors path="lastName" style="color:red" />
	<br>
	Select Your Date of Birth <form:input path="date" type="date" placeholder="mm/dd/yyyy" />
	<form:errors path="date" style="color:red"/>
	<br>
	Select Your Gender 
	<br><br>
	<form:radiobutton path="gender" value="male"/>Male
	<br><br>
	<form:radiobutton path="gender" value="female"/>Female
	<br><br>
	<form:radiobutton path="gender"  value="other"/>Other
	<br><br>
	<form:errors path="gender" style="color:red"/>
	<br>
	Contact Number <form:input path="contactNumber" type="text"  />
	<form:errors path="contactNumber" style="color:red"/>
	<br>
	User Id <form:input path="userId" type="text"/>
	<form:errors path="userId" style="color:red"/>
	<br>
	Password <form:input path="password" type="password" />
	<form:errors path="password" style="color:red"/>
	
	<br>
	<b>Skills:</b>
	<br>
	<form:input id="skills" path="skills"/>
	<form:errors path="skills" style="color:red"/>
	<br>
	<input type="submit"  value="Submit" class="registerbtn">

   </div>
	</form:form>
	</div>
	
	
</body>
</html>
