package com.user.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
    	 try {
    	 String fname = req.getParameter("fname");
    	 String email = req.getParameter("email");
    	 String phno = req.getParameter("phno");
    	 String pass = req.getParameter("pass");
    	 
    	 System.out.println(fname +" "+email+" "+phno+" "+pass);
    	 
    	 
    	 } catch(Exception e) {
    		 e.printStackTrace();
    	 }
     }
}
