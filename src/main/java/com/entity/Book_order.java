package com.entity;

public class Book_order {
     private int id;
     private String orderId;
     private String name;
     private String email;
     private String address;
     private String phone;
     private String bookname;
     private String author;
     private String price;
     private String paymode;
	 public int getId() {
		 return id;
	 }
	 public void setId(int id) {
		 this.id = id;
	 }
	 public String getOrderId() {
		 return orderId;
	 }
	 public void setOrderId(String orderId) {
		 this.orderId = orderId;
	 }
	 public String getName() {
		 return name;
	 }
	 public void setName(String name) {
		 this.name = name;
	 }
	 public String getEmail() {
		 return email;
	 }
	 public void setEmail(String email) {
		 this.email = email;
	 }
	 public String getAddress() {
		 return address;
	 }
	 public void setAddress(String address) {
		 this.address = address;
	 }
	 public String getPhone() {
		 return phone;
	 }
	 public void setPhone(String phone) {
		 this.phone = phone;
	 }
	 public String getBookname() {
		 return bookname;
	 }
	 public void setBookname(String bookname) {
		 this.bookname = bookname;
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
	 public void setPrice(String d) {
		 this.price = d;
	 }
	 public String getPaymode() {
		 return paymode;
	 }
	 public void setPaymode(String paymode) {
		 this.paymode = paymode;
	 }
	 @Override
	 public String toString() {
		return "Book_order [id=" + id + ", orderId=" + orderId + ", name=" + name + ", email=" + email + ", address="
				+ address + ", phone=" + phone + ", bookname=" + bookname + ", author=" + author + ", price=" + price
				+ ", paymode=" + paymode + "]";
	 }
     
}
