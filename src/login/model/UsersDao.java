package login.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import login.db.Provider;
import login.db.Users;

public class UsersDao 
{
	public static int save(Users u) 
	{
		int status=0;
		try 
		{
			Connection con=Provider.getConnection();
			String sql="insert into Users values(?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pst= con.prepareStatement(sql);
			pst.setString(1, u.getName());
			pst.setInt(2,  u.getRoll());
			pst.setString(3, u.getGender());
			pst.setInt(4, u.getAge());
			pst.setString(5, u.getBranch());
			pst.setString(6, u.getEmail());
			pst.setString(7, u.getPassword());
			pst.setLong(8, u.getMobile());
			pst.setString(9, u.getAddress());
			pst.setString(10, u.getMessage());
			
			status = pst.executeUpdate();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}

	public static boolean validate(Users u) 
	{
		boolean result=false;
		try 
		{
			Connection con=Provider.getConnection();
			String sql="select * from users where email=? and password=?";
			PreparedStatement pst= con.prepareStatement(sql);
			pst.setString(1, u.getEmail());
			pst.setString(2, u.getPassword());
			ResultSet rs = pst.executeQuery();
			if(rs.next())
				result=true;
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return result;
	}

	public static String getPassword(Users u)
	{
		String db_password=null;
		try 
		{
			Connection con=Provider.getConnection();
			String sql="select password from users where email=?";
			PreparedStatement pst= con.prepareStatement(sql);
			pst.setString(1, u.getEmail());
			ResultSet rs = pst.executeQuery();
			if(rs.next())
			{
				db_password = rs.getString(1);
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return db_password;
		
	}
}






