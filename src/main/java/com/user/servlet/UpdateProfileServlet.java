package com.user.servlet;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;

@WebServlet("/updateProfile")
public class UpdateProfileServlet extends HttpServlet{
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String phno = req.getParameter("phno");
		String pass = req.getParameter("pass");
		
		User us = new User();
		us.setId(id);
		us.setName(name);
		us.setEmail(email);
		us.setPhno(phno);
		us.setPassword(pass);
		
		UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
		boolean f = dao.checkPass(pass, id);
		HttpSession session = req.getSession();
		if(f) {
			boolean c = dao.updateUser(us);
			if(c) {
				session.setAttribute("succMsg", "Succesfully updatd User");
				res.sendRedirect("editprofile.jsp");
			} else {
				session.setAttribute("failMsg","Failed to Update User");
			    res.sendRedirect("editprofile.jsp");
			}
		} else {
			    session.setAttribute("failMsg","Incorrect Password");
			    res.sendRedirect("editprofile.jsp");
		}
	}

}
