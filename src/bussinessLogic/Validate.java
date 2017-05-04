package bussinessLogic;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import databaseLogic.MyConnection;

public class Validate
	 {
	     public static boolean checkUser(String emailString,String passwordString) 
	     {
	      boolean st =false;
	      try{
	         
	         System.out.println("checkUser() k andr");
	         Connection con=MyConnection.getdbConnection();
	         PreparedStatement ps =con.prepareStatement
	                             ("select * from employee where email=? and empPassword=?");
	         ps.setString(1, emailString);
	        	     
	         ps.setString(2, passwordString);
	         ResultSet rs =ps.executeQuery();
	         st = rs.next();
	        
	      }catch(Exception e)
	      {
	          e.printStackTrace();
	      }
	         return st;                 
	  }   
	}

