<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="style.css">
	<title></title>
</head>
<body>
<font color="red" size="14">

	<%
		String msg=request.getParameter("msg");
		if(msg !=null)
		{
			out.println(msg);
		}
	%>
	</font>
<form action="login.controller.Login" method="post">
	<div class="login">
		<img src="images/1 (24).jpg" class="users">
		<h2>LOGIN FORM</h2>
		<p>Email:</p>
		<input type="text" placeholder="Email" name="email"></input>
		<p>Password:</p>
		<input type="Password" placeholder="Password" name="password"></input>
		<input type="submit" name="" value="Login"></input>
		<center>don't have any account</center></br>
		<center><a href="register.jsp">Sign Up</a></center>
		<center><a href="forget.jsp">Forget Password</a></center>
	</div>
	<div style="align-self: right " ></div>
</form>
</body>
</html>





