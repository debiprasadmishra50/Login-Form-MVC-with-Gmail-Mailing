package login.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import login.db.Users;
import login.model.UsersDao;

/**
 * Servlet implementation class Register
 */
@WebServlet("/login.controller.Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
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
		u.setName(request.getParameter("name"));
		u.setRoll(Integer.parseInt(request.getParameter("roll")));
		u.setMobile(Long.parseLong(request.getParameter("mobile")));
		u.setAge(Integer.parseInt(request.getParameter("age")));
		u.setBranch(request.getParameter("branch"));
		u.setEmail(request.getParameter("email"));
		u.setAddress(request.getParameter("address"));
		u.setMessage(request.getParameter("message"));
		u.setGender(request.getParameter("gender"));
		u.setPassword(request.getParameter("password"));
		
		int status = UsersDao.save(u);
		response.sendRedirect("register.jsp?status="+status);
		
	}

}







