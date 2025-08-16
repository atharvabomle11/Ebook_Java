package com.admin.servlet;

import java.io.File;

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

@WebServlet("/add_books")
@MultipartConfig
public class BooksAdd extends HttpServlet{
     protected void doPost(HttpServletRequest req,HttpServletResponse res) {
    	 try {
    		 String bname = req.getParameter("bname");
    		 String bauthor = req.getParameter("bauthor");
    		 String bprice = req.getParameter("bprice");
    		 String bcategory = req.getParameter("bcategory");
    		 String bstatus = req.getParameter("bstatus");
    		 Part part = req.getPart("bpic");
    		 String filename = part.getSubmittedFileName();
    		 
    		 BookDts bt = new BookDts(bname,bauthor,bprice,bcategory,bstatus,filename,"admin");
    		 
    		 BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
    		 
    		
    		 boolean b = dao.addBook(bt);
    		 
    		 HttpSession session = req.getSession();
    		 
    		 if(b) {
    			 String path = getServletContext().getRealPath("")+"book";   // for getting the path of folder
//        		 System.out.println(path);
        		 File f = new File(path);
        		 
        		 part.write(path+File.separator+filename);
    			 session.setAttribute("succMsg","book added successfully");
    			 res.sendRedirect("admin/add_books.jsp");
    		 } else {
    			 session.setAttribute("failMsg","something went wrong");
    			 res.sendRedirect("admin/add_books.jsp");
    		 }
    		 
//    		 System.out.println(bt);
    	 } catch(Exception e) {
    		 e.printStackTrace();
    	 }
     }
}
