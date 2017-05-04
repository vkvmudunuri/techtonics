package bussinessLogic;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import databaseLogic.MyConnection;

public class TechTalkUpdating extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String titleForUpdate = request.getParameter("mytitleForUpdate");
		String mydateForUpdate = request.getParameter("mydateForUpdate");

		PreparedStatement ps;
		ResultSet rs;

		try {
			Connection con = MyConnection.getdbConnection();
			ps = (com.mysql.jdbc.PreparedStatement) con.prepareStatement(
					"update techtalks set date=? where title=?");

			ps.setString(1, mydateForUpdate);
			ps.setString(2, titleForUpdate);
			ps.executeUpdate();

			HttpSession session = request.getSession();

			session.setAttribute("msgAfterUpdate", "Selected TechTalk's schedule has been successfully updated....");

			response.sendRedirect("Admin.jsp");

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
