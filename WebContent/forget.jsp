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
<form action="login.controller.Forget" method="post">
		<p>Email:</p>
		<input type="text" placeholder="Email" name="email"></input><br>
		<input type="submit" name="" value="Send Password"></input>
		
	<div style="align-self: right " ></div>
</form>
</body>
</html>





