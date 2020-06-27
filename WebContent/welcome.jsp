<!DOCTYPE html>
<html>
<head>
	<style type="text/css">
		ul{
			list-style-type: none;
			margin: 0;
			padding: 0;
			overflow: hidden;
			background-color: #333;
		}
		li{
			float: left;
		}
		li a{
			display: block;
			color: white;
			text-align: center;
			text-decoration: none;
			padding: 15px 16px;
			
		}
		li a:hover:not(.active)
		{
			background-color: #888888;
		}
		.active{
			background-color: #4caf50;

		}
	</style>
	<title></title>
</head>
<body>
	<ul>
		<li><a class="active" href="welcome.jsp">Home</a></li>
		<li><a href="changePassword.jsp">Change Password</a></li>
		<li><a href="login.controller.Logout">Logout</a></li>
		<li><a href="#">About</a></li>
		
	</ul>
	<br>
	<br>
	<br>
	<br>
	<%
		String email =(String) session.getAttribute("email");
		out.print("Welcome : "+email);		
	%>

</body>
</html>