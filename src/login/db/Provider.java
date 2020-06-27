package login.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class Provider 
{

	public static Connection getConnection() 
	{
		Connection con = null;
		try
		{
			Class.forName("oracle.jdbc.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","password");
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return con;
	}
	
}
