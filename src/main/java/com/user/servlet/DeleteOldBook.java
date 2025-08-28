package com.user.servlet;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.BookDAOImpl;
import com.DB.DBConnect;

@WebServlet("/deleteOldBook")
public class DeleteOldBook extends HttpServlet{
	protected void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException {
		 String em = req.getParameter("em");
		 int id = Integer.parseInt(req.getParameter("id"));
		 BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
		 boolean f = dao.deleteOldBook(em, "Old",id);
		 HttpSession session = req.getSession();
		 if(f) {
			 session.setAttribute("succMsg","Old Book Deleted");
			 res.sendRedirect("oldbook.jsp");
		 } else {
			 session.setAttribute("failMsg","Old Book not Deleted");
			 res.sendRedirect("oldbook.jsp");
		 }
	}

}
