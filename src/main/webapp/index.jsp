<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect,com.DAO.BookDAOImpl,com.entity.BookDts"%>
<%@page import="java.util.List,java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook: Index</title>
<%@include file="all_components/allCss.jsp"%>
<style type="text/css">
html, body {
	height: 100%;
	margin: 0;
	display: flex;
	flex-direction: column;
}

main {
	flex: 1; /* This pushes footer down */
}

.back-img {
	background: url("img/book.jpg");
	height: 50vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}

.crd-ho:hover {
	background-color: #fcf7f7;
}
</style>
</head>
<body style="background-color: #f7f7f7;">
	<%@include file="all_components/navbar.jsp"%>
	
	
	
	<% User u = (User)session.getAttribute("userObj"); %>

	<main>
		<div class="container-fluid back-img">
			<h2 class="text-center text-danger">EBook Management System</h2>
		</div>

		<%-- <%
   Connection conn = DBConnect.getConn();
   out.println(conn);
%>
 --%>
		<!-- Start recent book -->
		<div class="container">
			<h3 class="text-center">Recent Book</h3>
			<div class="row">
				<%
				BookDAOImpl dao1 = new BookDAOImpl(DBConnect.getConn());
				List<BookDts> list1 = dao1.getRecentBooks();
				for (BookDts b : list1) {
				%>
				<div class="col-md-3">
					<div class="card crd-ho">
						<div class="card-body text-center">
							<img alt="" src="book/<%=b.getPicname()%>"
								style="width: 150px; height: 200px;" class="img-thumblin">
							<p><%=b.getBookName()%></p>
							<p><%=b.getAuthor()%></p>

							<%
							if (b.getBookCategory().equals("Old")) {
							%>
							<p>
								Categories:<%=b.getBookCategory()%></p>
							<div class="row">

								<a href="view_details.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-1">View Details</a>
								<a href="" class="btn btn-danger btn-sm ml-1"><i
									class="fa-solid fa-indian-rupee-sign"></i><%=b.getPrice()%></a>
							</div>
							<%
							} else {
							%>
							Categories:<%=b.getBookCategory()%></p>
							<div class="row">
							<%if(u==null){ %>
							     <a href="login.jsp" class="btn btn-danger btn-sm ml-2">Add Cart</a>
							<% }  else {%>
							       <a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId() %>" class="btn btn-danger btn-sm ml-2">Add Cart</a> 
							
							<% } %>
								<a
									href="view_details.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-1">View Details</a> <a
									href="" class="btn btn-danger btn-sm ml-1"><i
									class="fa-solid fa-indian-rupee-sign"></i><%=b.getPrice()%></a>
							</div>

							<%
							}
							%>
							<p>
						</div>
					</div>
				</div>

				<%
				}
				%>



			</div>

			<div class="text-center mt-1">
				<a href="all_recent_books.jsp" class="btn btn-danger btn-sm text-white">View All</a>
			</div>
		</div>
		<!-- End Recent book -->
		<hr>
		<!-- Start New book -->
		<div class="container">
			<h3 class="text-center">New Book</h3>
			<div class="row">
				<%
				BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
				List<BookDts> list = dao.getNewBooks();
				for (BookDts b : list) {
				%>
				<div class="col-md-3">
					<div class="card crd-ho">
						<div class="card-body text-center">
							<img alt="" src="book/<%=b.getPicname()%>"
								style="width: 150px; height: 200px;" class="img-thumblin">
							<p><%=b.getBookName()%></p>
							<p><%=b.getAuthor()%></p>
							<p>Categories: New</p>
							<div class="row">
							<%if(u==null){ %>
							     <a href="login.jsp" class="btn btn-danger btn-sm ml-2">Add Cart</a>
							<% }  else {%>
							       <a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId() %>" class="btn btn-danger btn-sm ml-2">Add Cart</a> 
							
							<% } %>
								<a
									href="view_details.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-1">View Details</a> <a
									href="" class="btn btn-danger btn-sm ml-1"><i
									class="fa-solid fa-indian-rupee-sign"></i><%=b.getPrice()%></a>
							</div>
						</div>
					</div>
				</div>

				<%
				}
				%>



			</div>

			<div class="text-center mt-1">
				<a href="all_new_books.jsp"" class="btn btn-danger btn-sm text-white">View All</a>
			</div>
		</div>
		<!-- End New book -->
		<hr>
		<!-- Start Old book -->
		<div class="container">
			<h3 class="text-center">Old Book</h3>
			<div class="row">
				<%
				BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
				List<BookDts> list2 = dao2.getOldBooks();
				for (BookDts b : list2) {
				%>
				<div class="col-md-3">
					<div class="card crd-ho">
						<div class="card-body text-center">
							<img alt="" src="book/<%=b.getPicname()%>"
								style="width: 150px; height: 200px;" class="img-thumblin">
							<p><%=b.getBookName()%></p>
							<p><%=b.getAuthor()%></p>
							<p>
								Categories:<%=b.getBookCategory()%></p>
							<div class="row">
								<a
									href="view_details.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-1">View Details</a> <a
									href="" class="btn btn-danger btn-sm ml-1"><i
									class="fa-solid fa-indian-rupee-sign"></i><%=b.getPrice()%></a>
							</div>
						</div>
					</div>
				</div>

				<%
				}
				%>

				<div class="text-center mt-1">
					<a href="all_old_books.jsp" class="btn btn-danger btn-sm text-white">View All</a>
				</div>
			</div>
	</main>

	<%@ include file="all_components/footer.jsp"%>

</body>
</html>
