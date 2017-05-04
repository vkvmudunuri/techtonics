package bussinessLogic;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import databaseLogic.MyConnection;

public class Signup extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		String userName = request.getParameter("user_name"); 
		String userPassword = request.getParameter("user_pswrd"); 
		String userEmail =request.getParameter("user_email");
		
		try {
			Connection con=MyConnection.getdbConnection();

			PreparedStatement preparedStatement = con.prepareStatement("insert into employee values(?,?,?)");

			preparedStatement.setString(1, userEmail);
			preparedStatement.setString(2, userName);
			preparedStatement.setString(3, userPassword);

			int i = preparedStatement.executeUpdate();

			if (i > 0) {
				request.setAttribute("msgAfterSignup", "You are successfully registered.......can go for Login");
				request.getRequestDispatcher("Login.jsp").forward(request, response);

			} else {
				request.getRequestDispatcher("Problem.jsp").forward(request, response);
			}

		} catch (Exception se) {
			se.printStackTrace();
			HttpSession session=request.getSession();
			session.setAttribute("msgAfterTwiceSignup","You are already registered.");
			request.getRequestDispatcher("Signup.jsp").forward(request, response);
		}
}
}
