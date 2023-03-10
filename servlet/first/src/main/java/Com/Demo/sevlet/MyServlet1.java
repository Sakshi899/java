package Com.Demo.sevlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MyServlet1
 */
public class MyServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyServlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		System.out.println("servlet is initialised");
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		System.out.println("servlet is destroy");
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 * httpservletRequest is a interface so dont create object of it but we created reference of that interface in that we store the object
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("sirviced completed....");
		//System.out.println(request.getParameter("username"));
		String name=request.getParameter("username");
		String password=request.getParameter("password");
		PrintWriter out=response.getWriter();
		if(name.equals("seed")&& password.equals("seed"))
			out.println("<h1>welcome to servlet"+"</h1>"+"\n"+name);
		else
			out.println("<h1>Invalid user</h1>");
		out.close();
		//out.println("In the service method welcome to servlet");
		//System.out.println(request.getParameter("password"));
		
		
	}

}
