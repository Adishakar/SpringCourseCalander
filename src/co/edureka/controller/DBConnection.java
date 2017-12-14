package co.edureka.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	
	private static String dbURL="jdbc:mysql://localhost:3306/springcal";
	private static String dbUser="root";
	private static String dbPassword="root";
	
	public static Connection getConnection(){
		Connection  con=null;
		try{
			try{
				Class.forName("com.mysql.jdbc.Driver");
				}
			catch(ClassNotFoundException ex){
				System.out.println("Can not load Driver class");
				System.exit(1);
			   }
			con=DriverManager.getConnection(dbURL,dbUser,dbPassword);
		 }
		catch(SQLException e){ System.out.println("Error While creating connection to database");}
		return con;
	}
	

}
