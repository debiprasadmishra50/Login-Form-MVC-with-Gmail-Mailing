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

/**
 * Servlet implementation class Register
 */
@WebServlet("/login.controller.Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		u.setPassword(request.getParameter("password"));
		
		boolean status = UsersDao.validate(u);
		if(status)
		{
			HttpSession session = request.getSession();
			session.setAttribute("email", u.getEmail());
			response.sendRedirect("welcome.jsp");
		}
		else
			response.sendRedirect
			("login.jsp?msg=Invalid Username or Password");
		
	}

}







