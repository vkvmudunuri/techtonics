package bussinessLogic;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import databaseLogic.MyConnection;

public class NewTechTalkAddition extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.getRequestDispatcher("AddNewTechTalk.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String tech_date = request.getParameter("mydate");
		String tech_title = request.getParameter("mytitle");
		String tech_desc = request.getParameter("mydesc");
		String tech_speaker = request.getParameter("myspeaker");

		System.out.println(tech_date);

		try {

			Connection con = MyConnection.getdbConnection();

			PreparedStatement ps = con.prepareStatement("insert into techtalks values(?,?,?,?)");

			ps.setString(1, tech_date);
			ps.setString(2, tech_title);
			ps.setString(3, tech_desc);
			ps.setString(4, tech_speaker);

			int i = ps.executeUpdate();

			if (i > 0) {
				request.setAttribute("msgAfterUploadTechTalk", " New Tech Talk has been uploaded successfully....");
				request.getRequestDispatcher("TechTalksinDB.jsp").forward(request, response);

			} else {
				request.getRequestDispatcher("Problem.jsp").forward(request, response);
			}

		} catch (Exception se) {
			se.printStackTrace();
			request.getRequestDispatcher("Problem.jsp").forward(request, response);
		}

	}

}
