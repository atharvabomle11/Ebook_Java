package com.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		res.setContentType("text/html");

		try {
			String fname = req.getParameter("fname");
			String email = req.getParameter("email");
			String phno = req.getParameter("phno");
			String pass = req.getParameter("pass");
			String check = req.getParameter("check");

			User us = new User();
			us.setName(fname);
			us.setEmail(email);
			us.setPassword(pass);
			us.setPhno(phno);

			HttpSession session = req.getSession();

			if (check != null) {
				UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());

				boolean f2 = dao.checkUser(email);
				if (f2) {
					boolean f = dao.userRegister(us);
					if (f) {
//                     	System.out.println("Successfully registered");
						session.setAttribute("succMsg", "User Registered Succesfully");
						res.sendRedirect("register.jsp");
					} else {
//                     	System.out.println("Unsuccessful");
						session.setAttribute("failMsg", "Something went wrong");
						res.sendRedirect("register.jsp");
					}
				} else {
					session.setAttribute("failMsg", "User already exists,try another email");
					res.sendRedirect("register.jsp");
				}

			} else {
//            	System.out.println("Please Agree terms & conditions");
				session.setAttribute("failMsg", "Please Agree to terms & conditions");
				res.sendRedirect("register.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();

		}
	}
}