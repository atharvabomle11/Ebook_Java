package com.user.servlet;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CartDAOImpl;
import com.DB.DBConnect;

@WebServlet("/remove_cart")
public class RemoveCartServlet extends HttpServlet{
	protected void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException {
		int bid = Integer.parseInt(req.getParameter("bid"));
		int uid = Integer.parseInt(req.getParameter("uid"));
		int cid = Integer.parseInt(req.getParameter("cid"));
		CartDAOImpl dao = new CartDAOImpl(DBConnect.getConn());
		boolean c = dao.removeBook(bid,uid,cid);
		
		HttpSession session = req.getSession();
		if(c) {
			session.setAttribute("succMsg", "book removed succesfully");
			res.sendRedirect("checkout.jsp");
		} else {
			session.setAttribute("failedMsg", "book not removed from cart");
			res.sendRedirect("checkout.jsp");
		}
	}

}
