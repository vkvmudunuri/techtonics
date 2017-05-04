package bussinessLogic;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import databaseLogic.MyConnection;


public class Allservlets extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		

		    Statement st;
		    try {
		
		    	Connection conn=MyConnection.getdbConnection();

		        ArrayList al = null;
		      
		        String sql = "select * from techtalks";
		        
		        st = conn.createStatement();
		        ResultSet rs = st.executeQuery(sql);
		        al = new ArrayList();

		        while (rs.next()) {

		        	TechTalkInfo tk=new TechTalkInfo(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4));
		        
		            
		        	al.add(tk);
		          }

		        System.out.println("ye v chla");
		        
		        request.setAttribute("tecktalkList", al);
		        conn.close();
		        request.getRequestDispatcher("AllTechTalks.jsp").forward(request, response);
		     
		    } catch (Exception e) {
		        e.printStackTrace();
		    }
		
	}

	
}
