package com.user.servlet;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet{
    public void doPost(HttpServletRequest req,HttpServletResponse res) {
    	
    	res.setContentType("text/html");
    	
//    	System.out.println(email+" "+pass);
    	try {
    		UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
    		
    		HttpSession session = req.getSession();
    		
    		String email = req.getParameter("email");
        	String pass = req.getParameter("pass");
        	
        	if("admin@gmail.com".equals(email) && "admin".equals(pass)) {
        		User us = new User();
        		session.setAttribute("succMsg", us);
        		res.sendRedirect("admin/adminHome.jsp");
        	}
        	else {
        		User us = dao.login(email, pass);
        		if(us != null) {
        			session.setAttribute("succMsg", us);
        			res.sendRedirect("home.jsp");
        		} else {
        			session.setAttribute("failMsg", "Email & Password invalid");
        			res.sendRedirect("login.jsp");
        		}
//        		res.sendRedirect("home.jsp");
        	}
    	} catch(Exception e) {
    		e.printStackTrace();
    	}
    }
}
