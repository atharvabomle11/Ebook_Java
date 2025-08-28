package com.DAO;

import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.entity.Cart;

public class CartDAOImpl implements CartDAO{
	
	Connection conn;
	

	public CartDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}


	@Override
	public boolean addCart(Cart c) {
		boolean f = false;
		try {
			String sql = "insert into cart(bid,uid,bookName,author,price,total_price) values(?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, c.getBid());
			ps.setInt(2, c.getUid());
			ps.setString(3, c.getBooKName());
			ps.setString(4, c.getAuthor());
			ps.setDouble(5, c.getPrice());
			ps.setDouble(6, c.getTotal_price());
			int i=ps.executeUpdate();
			if(i==1) {
				f = true;
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}


	@Override
	public List<Cart> getBookByUser(int uid) {
		ArrayList<Cart> list = new ArrayList<Cart>();
		Cart c = null;
		double totalPrice = 0;
		try {
			String sql = "select * from cart where uid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, uid);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				c = new Cart();
				c.setCid(rs.getInt(1));
				c.setBid(rs.getInt(2));
				c.setUid(rs.getInt(3));
				c.setBooKName(rs.getString(4));
				c.setAuthor(rs.getString(5));
				c.setPrice(rs.getDouble(6));
				totalPrice += rs.getDouble(7);
				c.setTotal_price(totalPrice);
				list.add(c);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return list;
	}


	@Override
	public boolean removeBook(int bid,int uid,int cid) {
		boolean f = false;
		try  {
			String sql = "delete from cart where bid=? && uid=? && cid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, bid);
			ps.setInt(2, uid);
			ps.setInt(3, cid);
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
