package login.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import login.db.Users;
import login.model.UsersDao;
import login.service.UsersService;

/**
 * Servlet implementation class Register
 */
@WebServlet("/login.controller.Forget")
public class Forget extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Forget() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Get data from UI and set into POJO
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		
		Users u = new Users();
		u.setEmail(request.getParameter("email"));
		
		String db_password = UsersDao.getPassword(u);
		if(db_password != null)
		{
			u.setPassword(db_password);
			UsersService.sendPassword(u);
		}
		else
		{
			response.sendRedirect("forget.jsp?msg=Invalid EmailID");
		}
	}	

}







