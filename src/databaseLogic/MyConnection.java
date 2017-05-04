package databaseLogic;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyConnection {

	public static Connection getdbConnection() throws ClassNotFoundException, SQLException
	{
		
		
		  //loading drivers for mysql
        Class.forName("com.mysql.jdbc.Driver");
      

	//creating connection with the database 
          Connection  con=DriverManager.getConnection
                     ("jdbc:mysql://localhost:3306/databasetables","root","root");
		System.out.println("Connection success: "+con);
		return con;
	}
	
}
