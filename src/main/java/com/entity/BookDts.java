package com.entity;

public class BookDts {
     private int bookId;
     private String bookName;
     private String author;
     private String price;
     private String bookCategory;
     private String status;
     private String picname;
     private String email;
	 public int getBookId() {
		 return bookId;
	 }
	 public void setBookId(int bookId) {
		 this.bookId = bookId;
	 }
	 public String getBookName() {
		 return bookName;
	 }
	 public void setBookName(String bookName) {
		 this.bookName = bookName;
	 }
	 public String getAuthor() {
		 return author;
	 }
	 public void setAuthor(String author) {
		 this.author = author;
	 }
	 public String getPrice() {
		 return price;
	 }
	 public void setPrice(String price) {
		 this.price = price;
	 }
	 public String getBookCategory() {
		 return bookCategory;
	 }
	 public void setBookCategory(String bookCategory) {
		 this.bookCategory = bookCategory;
	 }
	 public String getStatus() {
		 return status;
	 }
	 public void setStatus(String status) {
		 this.status = status;
	 }
	 public String getPicname() {
		 return picname;
	 }
	 
	 public BookDts() {
		 
	 }
	 public BookDts(String bookName, String author, String price, String bookCategory, String status,
			String picname, String email) {
		super();
		this.bookName = bookName;
		this.author = author;
		this.price = price;
		this.bookCategory = bookCategory;
		this.status = status;
		this.picname = picname;
		this.email = email;
	}
	 public void setPicname(String picname) {
		 this.picname = picname;
	 }
	 public String getEmail() {
		 return email;
	 }
	 public void setEmail(String email) {
		 this.email = email;
	 }
	 @Override
	 public String toString() {
		return "BookDts [bookId=" + bookId + ", bookName=" + bookName + ", author=" + author + ", price=" + price
				+ ", bookCategory=" + bookCategory + ", status=" + status + ", picname=" + picname + ", email=" + email
				+ "]";
	 }
     
     
}
