package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.BookDAOImpl;
import com.DB.DBConnect;
import com.entity.BookDts;

@WebServlet("/editbooks")
@MultipartConfig 
public class EditBookServlet extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse res)  throws IOException, ServletException{
//		System.out.println("Servlet running: received bid = " + req.getParameter("bid"));

		try {
			int bid = Integer.parseInt(req.getParameter("bid"));
			String bname = req.getParameter("bname");
            String bauthor = req.getParameter("bauthor");
			String bprice = req.getParameter("bprice");
            String bstatus = req.getParameter("bstatus");
            
            BookDts b = new BookDts();
            b.setBookId(bid);
            b.setBookName(bname);
            b.setAuthor(bauthor);
            b.setPrice(bprice);
            b.setStatus(bstatus);
            
            BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
            boolean f = dao.editBookById(b);
            HttpSession session = req.getSession();
            if(f) {
            	session.setAttribute("succMsg", "successfully updated");
            	res.sendRedirect("admin/all_books.jsp");
            } else {
            	session.setAttribute("failMsg", "something went wrong");
            	res.sendRedirect("admin/all_books.jsp");
            }

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
