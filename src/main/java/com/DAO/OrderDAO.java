package com.DAO;

import java.util.List;

import com.entity.Book_order;

public interface OrderDAO {
     
     
     public boolean saveOrder(List<Book_order> b);
     
     public List<Book_order> getOrderBooks(String email);
     
     public List<Book_order> getBooksAdmin();
}
