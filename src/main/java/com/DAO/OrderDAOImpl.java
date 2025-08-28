package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Book_order;

public class OrderDAOImpl implements OrderDAO{
	
	private Connection conn;
	

	public OrderDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}




	@Override
	public boolean saveOrder(List<Book_order> blist) {
		boolean f = false;
		try {
			String sql = "insert into book_order(order_id,username,email,address,phone,bookname,author,price,paymode)values(?,?,?,?,?,?,?,?,?)";
			conn.setAutoCommit(false);
			PreparedStatement ps = conn.prepareStatement(sql);
			for(Book_order b:blist) {
				ps.setString(1, b.getOrderId());
				ps.setString(2, b.getName());
				ps.setString(3,b.getEmail());
				ps.setString(4,b.getAddress());
				ps.setString(5,b.getPhone());
				ps.setString(6,b.getBookname());
				ps.setString(7,b.getAuthor());
				ps.setString(8,b.getPrice());
				ps.setString(9,b.getPaymode());
				ps.addBatch();
			}
			int []count = ps.executeBatch();
			conn.commit();
			f=true;
			conn.setAutoCommit(true);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}




	@Override
	public List<Book_order> getOrderBooks(String email) {
		Book_order b = null;
		ArrayList<Book_order> list = new ArrayList<>();
		try {
			String sql = "select * from book_order where email=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				b = new Book_order();
				b.setId(rs.getInt(1));
				b.setOrderId(rs.getString(2));
				b.setName(rs.getString(3));
				b.setEmail(rs.getString(4));
				b.setAddress(rs.getString(5));
				b.setPhone(rs.getString(6));
				b.setBookname(rs.getString(7));
				b.setAuthor(rs.getString(8));
				b.setPrice(rs.getString(9));
				b.setPaymode(rs.getString(10));
				list.add(b);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}




	@Override
	public List<Book_order> getBooksAdmin() {
		Book_order b = null;
		ArrayList<Book_order> list = new ArrayList<>();
		try {
			String sql = "select * from book_order";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				b = new Book_order();
				b.setId(rs.getInt(1));
				b.setOrderId(rs.getString(2));
				b.setName(rs.getString(3));
				b.setEmail(rs.getString(4));
				b.setAddress(rs.getString(5));
				b.setPhone(rs.getString(6));
				b.setBookname(rs.getString(7));
				b.setAuthor(rs.getString(8));
				b.setPrice(rs.getString(9));
				b.setPaymode(rs.getString(10));
				list.add(b);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	

}
