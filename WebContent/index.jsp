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
		<li><a class="active" href="index.jsp">Home</a></li>
		<li><a href="register.jsp">Register</a></li>
		<li><a href="login.jsp">Login</a></li>
		<li><a href="#">About</a></li>
		
	</ul>

</body>
</html>