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
	
	<form action="login.controller.Register" method="post">
		<!--<table>
			<tr>
				<center><font size="5"><strong>Student Registration</strong></font></center>
			</tr>
		</table>-->
		<table  cellpadding="2" width="70%" bgcolor="99ffff" align="center" cellspacing="">
			<tr>
				<td colspan="2">
					<center><font size="5"><b>Student Registration</b></font></center>	
				</td>
			</tr>
			<tr>
				<td>Name:</td>
				<td><input type="text" name="name" size="20"></td>
			</tr>
			<tr>
				<td>Roll:</td>
				<td><input type="text" name="roll" size="20"></td>
			</tr>
			<tr>
				<td>Gender:</td>
				<td><input type="radio" name="gender" value="Male" size="20">Male</input>&nbsp&nbsp
					<input type="radio" name="gender" value="Female" size="20">Female</input>&nbsp&nbsp
					<input type="radio" name="gender" value="Others" size="20">Others</input>
				</td>
			</tr>
			<tr>
				<td>Age: </td>
				<td>
					<input type="number" name="age" size="10" max="30" min="18"></input>
				</td>
			</tr>
			<tr>
				<td>Branch:</td>
				<td>
					<select style="width: 200" name="branch">
					<option value="-1">Choose</option>
					<option>MCA</option>
					<option>MBA</option>
					<option>MTECH</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>Email:</td>
				<td>
					<input type="text" name="email"></input>
				</td>
			</tr>
			
			<tr>
				<td>Password:</td>
				<td>
					<input type="password" name="password"></input>
				</td>
			</tr>
			<tr>
				<td>Mobile:</td>
				<td>
					<input type="text" name="mobile"></input>
				</td>
			</tr>
			<tr>
				<td>Address:</td>
				<td >
					<textarea name="address" size="10"></textarea>
				</td>
			</tr>
			<tr>
				<td>Message:</td>
				<td><textarea name="message"></textarea></td>
			</tr>
			<tr>
				<td align="right"><input type="reset" name=""></input></td>
				<td colspan="2"><input type="submit" name="" value="submit"></input></td>
			</tr>
		</table>
	</form>

</body>
</html>