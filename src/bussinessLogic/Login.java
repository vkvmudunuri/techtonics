package bussinessLogic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
	     PrintWriter out = response.getWriter();
	     
	     String email1 = request.getParameter("emailLogin");
	     String pass1 = request.getParameter("pswrdLogin");
	     
	     System.out.println("if k baahr");
	     
	     if(Validate.checkUser(email1, pass1))
	     {

		   
	    	 
	    	 request.setAttribute("emailId",email1);
		     System.out.println("if k andr");
	    	 
		     HttpSession session = request.getSession();
		     session.setAttribute("username", email1);
		   
		     if(email1.equals("vamsi@atmecs.com"))
		     {
		    	 request.getRequestDispatcher("Admin.jsp").forward(request, response);
		     }

		     
	      request.getRequestDispatcher("LoginSuccess.jsp").forward(request, response);
	     }
	     else
	     {
	        out.println("Email or Password incorrect");
	        RequestDispatcher rs = request.getRequestDispatcher("Problem.jsp");
	        rs.include(request, response);
	     }
	}

	
	
}
