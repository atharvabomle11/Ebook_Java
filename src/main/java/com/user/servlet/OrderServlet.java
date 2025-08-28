package com.user.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.BookDAOImpl;
import com.DAO.CartDAOImpl;
import com.DAO.OrderDAOImpl;
import com.DB.DBConnect;
import com.entity.Book_order;
import com.entity.Cart;

@WebServlet("/order")
public class OrderServlet extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		try {
			
			HttpSession session = req.getSession();
			
			int id = Integer.parseInt(req.getParameter("id"));
			String name = req.getParameter("name");
			String email = req.getParameter("email");
			String phno = req.getParameter("phno");
			String address = req.getParameter("address");
			String landmark = req.getParameter("landmark");
			String city = req.getParameter("city");
			String state = req.getParameter("state");
			String zip = req.getParameter("zip");
			String paymode = req.getParameter("paymode");

			String fullAddress = address + "," + landmark + "," + city + "," + state + "," + zip;

//		System.out.println(name+" "+email+" "+phno+" "+fullAddress);

			CartDAOImpl dao = new CartDAOImpl(DBConnect.getConn());
			List<Cart> list = dao.getBookByUser(id);
			if(list.isEmpty()) {
				session.setAttribute("failedMsg","Add books into cart");
				res.sendRedirect("checkout.jsp");
			} else {
				OrderDAOImpl dao2 = new OrderDAOImpl(DBConnect.getConn());
				Random r = new Random();
				
				ArrayList<Book_order> list2 = new ArrayList<>();
				Book_order b = null;
				for (Cart c : list) {
					b = new Book_order();
					b.setOrderId("BOOK-ORD-00"+r.nextInt(1000));
					b.setName(name);
					b.setEmail(email);
					b.setPhone(phno);
					b.setAddress(fullAddress);
					b.setBookname(c.getBooKName());
					b.setAuthor(c.getAuthor());
					b.setPrice(c.getPrice()+"");
					b.setPaymode(paymode);
					list2.add(b);
			
				}
	            
				if ("noselect".equals(paymode)) {
					session.setAttribute("failedMsg","Enter payment Mode");
					res.sendRedirect("checkout.jsp");
				} else {
	                 boolean f = dao2.saveOrder(list2);
	                 if(f) {
	                	 res.sendRedirect("order_success.jsp");
	                 }else {
	                	 session.setAttribute("failedMsg", "Order Failed");
	                 }
				}
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
