package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.BookDts;

public class BookDAOImpl implements BookDAO{
	
	private Connection conn;
	
	
	public BookDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}


	@Override
	public boolean addBook(BookDts book) {
		boolean b = false;
		try {
			String sql = "insert into book_dts(bookname,author,price,bookCategory,status,photo,email) values(?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, book.getBookName());
			ps.setString(2, book.getAuthor());
			ps.setString(3, book.getPrice());
			ps.setString(4, book.getBookCategory());
			ps.setString(5, book.getStatus());
			ps.setString(6, book.getPicname());
			ps.setString(7, book.getEmail());
			int i = ps.executeUpdate();
			if(i==1) {
				b = true;
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return b;
	}


	@Override
	public List<BookDts> getBooks() {
		List<BookDts> list = new ArrayList<BookDts>();
		BookDts b = null;
		try {
			
			String sql = "select * from book_dts";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				b = new BookDts();
				b.setBookId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPicname(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}


	@Override
	public BookDts getBookById(int id) {
		BookDts b = null;
		try {
			String sql = "select * from book_dts where bookId=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1,id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				b = new BookDts();
				b.setBookId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPicname(rs.getString(7));
				b.setEmail(rs.getString(8));
			}
				
		} catch(Exception e) {
			e.printStackTrace();
		}
		return b;
	}


	@Override
	public boolean editBookById(BookDts b) {
		boolean f = false;
		try {
			String sql = "update book_dts set bookname=?,author=?,price=?,status=? where bookId=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, b.getBookName());
			ps.setString(2, b.getAuthor());
			ps.setString(3, b.getPrice());
			ps.setString(4, b.getStatus());
			ps.setInt(5, b.getBookId());
			
			int i = ps.executeUpdate();
			if(i==1) {
				f = true;
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}


	@Override
	public boolean deleteBookById(int id) {
		boolean f = false;
		try {
			String sql = "delete from book_dts where bookId=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			int i = ps.executeUpdate();
			if(i==1) {
				f = true;
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	
	
	
	
    
}
