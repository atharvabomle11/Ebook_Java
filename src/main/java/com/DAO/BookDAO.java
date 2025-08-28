package com.DAO;


import java.util.List;

import com.entity.BookDts;

public interface BookDAO {
     public boolean addBook(BookDts book);
     
     public List<BookDts> getBooks();
     
     public BookDts getBookById(int id);
     
     public boolean editBookById(BookDts b);
     
     public boolean deleteBookById(int id);
     
     public List<BookDts> getNewBooks();
     
     public List<BookDts> getRecentBooks();
     
     public List<BookDts> getOldBooks();
     
     public List<BookDts> getAllNewBooks();
     
     public List<BookDts> getAllRecentBooks();
     
     public List<BookDts> getAllOldBooks();
     
     public List<BookDts> getBookByOld(String email,String cate);
     
     public boolean deleteOldBook(String email,String cate,int id);
     
     public List<BookDts> getBookBySearch(String ch);
}
