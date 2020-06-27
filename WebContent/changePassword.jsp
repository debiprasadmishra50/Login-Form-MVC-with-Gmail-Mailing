<!DOCTYPE html>
<html>
<head>
	<style type="text/css">
		
	</style>
	<title>Registration Page</title>
</head>
<body>
	<center>
	<font color="red" size="14">

	<%
	String status=request.getParameter("status");
	if(status !=null)
	{
		if(status.equals("1"))
			out.println("Register Successfull Done..");
		else
			 out.println("Error in Registration..");
	}
	
	%>
	</font>
	</center>
	
	<form action="login.controller.ChangePassword" method="post">
		<!--<table>
			<tr>
				<center><font size="5"><strong>Student Registration</strong></font></center>
			</tr>
		</table>-->
		<table  cellpadding="2" width="70%" bgcolor="99ffff" align="center" cellspacing="">
			<tr>
				<td colspan="2">
					<center><font size="5"><b>Enter Details..</b></font></center>	
				</td>
			</tr>
			
			<tr>
				<td>Current Password:</td>
				<td>
					<input type="password" name="cpsw"></input>
				</td>
			</tr>
			<tr>
				<td>New Password:</td>
				<td>
					<input type="password" name="npsw"></input>
				</td>
			</tr>
			<tr>
				<td>Retype Password:</td>
				<td>
					<input type="password" name="rpsw"></input>
				</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" name="" value="Change Password"></input></td>
			</tr>
		</table>
	</form>
</body>
</html>



