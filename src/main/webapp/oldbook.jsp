<%@page import="com.entity.BookDts"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book List</title>
<%@include file="all_components/allCss.jsp"%>
</head>
<body>
	<%@include file="all_components/navbar.jsp"%>
	
	<c:if test="${not empty succMsg }">
	  <p class="text-center text-success">${succMsg }</p>
	  <c:remove var="succMsg" scope="session"/>
	</c:if>
	
	

	<div class="container mt-5">
		<h3 class="text-center mb-4">My Books</h3>
		<div class="table-responsive">
			<table class="table table-striped table-bordered text-center">

				<thead class="bg-primary text-white">
					<tr>
						<th>Book Name</th>
						<th>Author</th>
						<th>Price</th>
						<th>Category</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<%
					User us = (User) session.getAttribute("userObj");
					String email = us.getEmail();
					BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
					List<BookDts> list = dao.getBookByOld(email, "Old");
					for (BookDts b : list) {
					%>
                       <tr>
						<td><%=b.getBookName() %></td>
						<td><%=b.getAuthor() %></td>
						<td><%=b.getPrice() %></td>
						<td><%=b.getBookCategory() %></td>
						<td><a href="deleteOldBook?em=<%=b.getEmail() %>&&id=<%=b.getBookId() %>" class="btn btn-danger btn-sm">Delete</a>
						</td>
					</tr>
					<%
					}
					%>
					<!-- Example Row -->
					
					<!-- Dynamic rows from DB will go here -->
				</tbody>
			</table>
		</div>
	</div>

</body>
</html>
