<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Trainee home page</title>
	<header>
	<nav>
		<button class="button">Home</button>
	</nav>
	<nav>
	<input type="submit" class="button"  value="Rate Trainer" onclick="window.location='http://localhost:8085/trainerrating'">
		<input type="submit" class="button"  value="Log Out" onclick="window.location='http://localhost:8085/login'">
		
	
	</nav>
	</header>
	<style>
		*{
			box-sizing: border-box;
			margin: 0;
			padding: 0;
			background-color: lavender;
		}
		header{
			display: flex;
			justify-content: space-between;
			align-items: center;
			padding: 30px 10%;
		}
		.button{
			width: 130px;
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
		.button:hover{
			opacity: .7;
		}
		.container form .submit{
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
		.container form .submit:hover{
			opacity: .7;
		}
		.container{
			margin: auto;
			width: 500px;
			max-width: 90%;
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
	</style>
</head>
<body>
	<div class="container">
	   <sf:form action="/trainee" modelAttribute="trainee">
			<h1>Raise request</h1>
			<div class="form-group">
				Subject
				<sf:select name="subject" path="subject" id="subject" class="form-control">
					<sf:option value="java" label="Java" selected="selected"/>
					<sf:option value="sql" label="SQL" />
					<sf:option value="python" label="Python" />
					<sf:option value="C" label="C" />
					<sf:option value="DotNet" label="DotNet" />
				</sf:select>
			</div>
			<div class="form-group">
				Timing
				<sf:select path="timing" class="form-control">
					<sf:option value="9" label="9 A.M." selected="selected"/>
					<sf:option value="11" label="11 A.M."/>
					<sf:option value="4" label="4 P.M."/>
					<sf:option value="7" label="7 P.M."/>
				</sf:select>
			</div>
			<div class="form-group">
				Venue
				<sf:select path="venue" class="form-control">
					<sf:option value="chennai" label="Chennai" selected="selected"/>
					<sf:option value="banglore" label="Banglore"/>
					<sf:option value="hyderabad" label="Hyderabad"/>
					<sf:option value="pune" label="Pune"/>
					<sf:option value="coimbatore" label="Coimbatore"/>
				</sf:select>
			</div>
			<input class="submit" name="submit" type="submit" value="Submit">
		</sf:form>
	</div>
</body>
</html>
