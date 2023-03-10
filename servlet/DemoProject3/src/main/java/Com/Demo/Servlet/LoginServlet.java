package Com.Demo.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("username");
		String password=request.getParameter("password");
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		RequestDispatcher rd;
		if(name.equals("seed")&& password.equals("seed")) {
			//out.println("<h1>welcome to servlet"+"</h1>");
		rd=request.getRequestDispatcher("Userservlet");
		rd.forward(request, response);
		}
		else
			out.println("<h4 style=\"color:red\">Invalid user</h4>");
		rd=request.getRequestDispatcher("login.html");
		rd.include(request, response);
		out.close();
	}

}
