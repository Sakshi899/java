package Com.Demo.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class Calculation extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int ans=Integer.parseInt(request.getParameter("number"));
		PrintWriter out=response.getWriter();
		String btn=request.getParameter("btn");
		if(btn.equals("factorial")) {
//			int fact=1;
//			for(int i=1;i<=ans;i++) {
//				fact=fact*i;
//			}
			out.println(fact(ans));
		}
		else if(btn.equals("Prime")) {
			
				int temp=0;
				for(int i=2;i<ans-1;i++) {
					if(ans%i==0)
						temp=temp+1;
				}
				if(temp>0)
					out.println(ans+"not prime");
				else
					out.println(ans+"prime");

			
		}

		else if(btn.equals("sumDigit")) {
			int sum=0,rem=0;
			   while(ans!=0) {
				   rem=ans%10;
				   sum=sum+rem;
				   ans=ans/10;
			   }
			out.println(sum);
		}
	
}
public int fact(int ans) {
		int fact=1;
		for(int i=1;i<=ans;i++) {
			fact=fact*i;
		}
		return fact;
	}
	/*
	 * public int primeno(int ans) { int temp=0; for(int i=2;i<ans-1;i++) {
	 * if(ans%i==0) temp=temp+1; } if(temp>0) System.out.println("not prime"); else
	 * System.out.println("prime");
	 * 
	 * return ans; }
	 */

//public int sumDigit(int ans) {
//   int sum=0,rem=0;
//   while(ans!=0) {
//	   rem=ans%10;
//	   sum=sum+rem;
//	   ans=ans/10;
//   }
//   return sum;
	
	
}


	
