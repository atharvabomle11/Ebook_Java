package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
   private static Connection conn;
   public static Connection getConn(){
	   try {
		   Class.forName("com.mysql.cj.jdbc.Driver");
		   String url = "jdbc:mysql://localhost:3306/ebook";
		   String username = "root";
		   String pass = "atharva2004";
		   conn = DriverManager.getConnection(url,username,pass);
	   } catch(Exception e) {
		   e.printStackTrace();
	   }
	   return conn;
   }
}
