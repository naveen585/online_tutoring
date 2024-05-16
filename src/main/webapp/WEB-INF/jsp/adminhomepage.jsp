<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style>
		*{
			box-sizing: border-box;
			margin: 0;
			padding: 0;
			background-color: grey;
		}
		li, .btn{
			font-family: sans-serif;
			font-weight: 500;
			font-size: 16px;	
			text-decoration: none;
		}
		.button{
			font-family: sans-serif;
			font-weight: 500;
			font-size: 16px;
			text-decoration: none;
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
		.details{
			text-align: center;
		}
		h2{
			padding-top: 60px;
		}
		.details{
			width: 860px;
			margin: 0 auto;
			padding-left: 220px;
			padding-top: 100px;
		}
		.details ul{
			list-style: none;
			margin-top: 2%;
		}
		.details ul li{
			background: #262626;
			width: 170px;
			border: 1px solid #fff;
			height: 50px;
			line-height: 50px;
			text-align: center;
			float: left;
			color: #fff;
			font-size: 14px;
			position: relative;
			font-family: big john;
		}
		.details ul li:hover{
			background: green;
		}
		.details ul ul{
			display: none;
		}
		.details ul li:hover > ul{
			display: block;
		}
		.details ul ul ul{
			margin-left: 170px;
			top: 0;
			position: absolute;
		}
		.links{
			text-decoration: none;
			opacity: .7;
			color: white;
		}
	</style>
</head>
<body>
	<header>
	<nav>
		<a href="#" class="btn"><button class="button">Home</button></a>	
	</nav>
	<a href="#" class="btn"><button class="button">Logout</button></a>	
	</header>
	<div class="details">
		<ul>
			<li>Trainer details
				<ul>
					<li>Trainer name
						<ul>
							<li>Skill set
								<ul><li></li></ul>
							</li>
							<li>Availabilty
								<ul><li></li></ul>
							</li>
						</ul>
					</li>
				</ul>
			</li>
			<li id="lst">List of request
				<ul>
					<li><a href="#" class="links">Request name</a>	
						<ul>
							<li>Subject
								<ul>
							<li></li>
						</ul>
							</li>
							<li>Timing
								<ul>
							<li></li>
						</ul>
							</li>
							<li>Venue
								<ul>
							<li></li>
						</ul>
							</li>
						</ul>
					</li>
				</ul>
			</li>
		</ul>
	</div>
</body>
</html>
