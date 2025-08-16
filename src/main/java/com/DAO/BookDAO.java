package com.DAO;


import java.util.List;

import com.entity.BookDts;

public interface BookDAO {
     public boolean addBook(BookDts book);
     
     public List<BookDts> getBooks();
     
     public BookDts getBookById(int id);
     
     public boolean editBookById(BookDts b);
     
     public boolean deleteBookById(int id);
}
