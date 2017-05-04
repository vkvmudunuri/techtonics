package bussinessLogic;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import databaseLogic.MyConnection;

public class DeleteTechTalk extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String titleForDelete=request.getParameter("mytitleForDelete");
		
		
		
		try {
			Connection con=MyConnection.getdbConnection();
			
			PreparedStatement st;
			
			st= con.prepareStatement("delete from techtalks where TechTitle = ?");
			st.setString(1, titleForDelete);
			st.executeUpdate();
			int i = st.executeUpdate();
			if(i!=0)
			{
				System.out.println("Deletion done");
			}
			else if (i==0)
			{
				System.out.println("Problem in deletion");
			}
			
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	 HttpSession session=request.getSession();
		
	 session.setAttribute("msgAfterDelete", "Selected TechTalk has been successfully deleted....");
	
	 response.sendRedirect("Admin.jsp");
		
		
	}

}
