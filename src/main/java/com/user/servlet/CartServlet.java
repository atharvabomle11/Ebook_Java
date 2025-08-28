package com.user.servlet;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.BookDAOImpl;
import com.DAO.CartDAOImpl;
import com.DB.DBConnect;
import com.entity.BookDts;
import com.entity.Cart;

@WebServlet("/cart")
public class CartServlet extends HttpServlet{
	
	
    protected void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException {
    	res.setContentType("text/html");
		int bid = Integer.parseInt(req.getParameter("bid"));
		int uid = Integer.parseInt(req.getParameter("uid"));
		
		BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
		BookDts b = dao.getBookById(bid); 
		
		Cart c = new Cart();
		c.setBid(bid);
		c.setUid(uid);
		c.setBooKName(b.getBookName());
		c.setAuthor(b.getAuthor());
		c.setPrice(Double.parseDouble(b.getPrice()));
		c.setTotal_price(Double.parseDouble(b.getPrice()));
		
		CartDAOImpl dao2 = new CartDAOImpl(DBConnect.getConn());
		boolean f = dao2.addCart(c);
		
		HttpSession session = req.getSession();
		if(f) {
			session.setAttribute("addcartobj", "Book Added to Cart");
			res.sendRedirect("all_new_books.jsp");
		} else {
			session.setAttribute("failed", "Failed to add in cart");
			res.sendRedirect("all_new_books.jsp");
		}
				
	}
}
