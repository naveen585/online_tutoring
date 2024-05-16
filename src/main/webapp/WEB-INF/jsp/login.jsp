<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
 
 <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">  
<title>Stars for Participants</title>

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
			width: 600px;
			max-width: 100%;
		}
		.container form{
			width: 100%;
			height: 100%;
			padding: 20px;
			background: lavender;
			border-radius: 4px;
			box-shadow: 0 8px 16px rgba(0,0,0,.3);
		}
		.container form h1{
			text-align: center;
			margin-bottom: 24px;
			color: #222;
		}
		.container form .form-control{
			width: 100%;
			height: 40px;
			background: white;
			border-radius: 4px;
			border: 1px solid silver;
			margin: 10px 0 18px 0;
			padding: 0 10px;
		}
		.container form .login{
			margin-left: 50%;
			transform: translateX(-50%);
			width: 120px;
			height: 34px;
			border: 8px;
			outline: none;
			background: #27a327;
			cursor: pointer;
			font-size: 16px;
			text-transform: uppercase;
			color: white;
			border-radius: 400px;
			transition: .3s;
		}
		.container form .login:hover{
			opacity: .7;
		}
		h1{
			margin-right: 10px;
		}
		#head{
			margin-left: 100px;
			margin-bottom: 50px;
		}
		#register-btn{
		text-align:center;
		font-size:16px;
		}
		
	</style>
</head>
<body>

	<script type="text/javascript">
		function newform() {
			var x = document.getElementById("user").value;
			if (x == "roles") {
				document.getElementById("roles").style.visibility = "visible";
				document.getElementById("register-btn").style.visibility="visible";
			}
		}
		function goToRegister(){
			
			window.location.href="/registrationform";
		}
		
	</script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>  
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> 
  
	<div class="container">
	<div class="page-header">
		<h1>Stars for Participants</h1>
		</div>
		<form:form action="/submitlogin" modelAttribute="login" style="width:300px">
			
			<h2>Login</h2>
			<div class="form-group">
				<label>Select Your Role:</label>
			  
				<form:select class="form-control" path="user" id="user" onclick="newform()">
				    <form:option value="select" label="select your option" selected="selected"/>
					<form:option value="admin" label="Admin"/>
					<form:option value="roles" label="User" />
				</form:select>
				<div id="roles" style="visibility: hidden">
				<br>
				
					<form:radiobutton path="userType" 
						value="Trainer" />
					Trainer
					<form:radiobutton path="userType" 
						value="Trainee" checked="checked"/>
					Trainee<br>
					</div>
                   </div>
				<br>
				<div class="form-group">  
				  <form:label path="userId">User Id</form:label>
					<form:input type="text" class="form-control"  path="userId"
						  required="required"/>
					<br>
					<form:label path="password">Password</form:label>
					<form:input class="form-control" type="password" 
						path="password"  required="required" />
						<br>
						</div>
						 <input type="submit" value="login" class="login" />
					  
						
				<div id="register-btn" style="visibility: hidden">
		<br>
					<a href="javascript:goToRegister()">Register</a>
				</div>
				
			
		</form:form>
		
	</div>
</body>
</html>
