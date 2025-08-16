package com.admin.servlet;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.BookDAOImpl;
import com.DB.DBConnect;

@WebServlet("/deleteBook")
public class DeleteBookServlet extends HttpServlet{
	protected void doGet(HttpServletRequest req,HttpServletResponse res) {
		try {
			int i = Integer.parseInt(req.getParameter("id"));
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			boolean f = dao.deleteBookById(i);
			HttpSession session = req.getSession();
			if(f) {
				session.setAttribute("succMsg","Book deleted successfully");
				res.sendRedirect("admin/all_books.jsp");
			} else {
				session.setAttribute("failMsg","Something went wrong");
				res.sendRedirect("admin/all_books.jsp");
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}
