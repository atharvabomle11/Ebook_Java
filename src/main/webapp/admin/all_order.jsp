<%@page import="com.entity.Book_order"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.OrderDAOImpl"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Orders - Admin</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background-color: #f8f9fa;
}

html, body {
	height: 100%;
	margin: 0;
	display: flex;
	flex-direction: column;
}

main {
	flex: 1; /* This pushes footer down */
}

.table thead {
	background-color: #4a69bd;
	color: white;
}

.card {
	border-radius: 12px;
	box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.1);
}

.header-title {
	color: #4a69bd;
	font-weight: bold;
}
</style>
</head>
<body>

	<%@ include file="navbar.jsp"%>
	<c:if test="${empty userObj }">
		<c:redirect url="../login.jsp" />
	</c:if>
	<main>
		<div class="container my-5">
			<div class="card p-4">
				<h2 class="text-center header-title mb-4">📚 All Orders</h2>
				<div class="table-responsive">
					<table class="table table-hover align-middle">
						<thead>
							<tr>
								<th>Order ID</th>
								<th>Name</th>
								<th>Email</th>
								<th>Address</th>
								<th>Phone No</th>
								<th>Book Name</th>
								<th>Author</th>
								<th>Price</th>
								<th>Payment Type</th>

							</tr>
						</thead>
						<tbody>
							<%
							User us = (User) session.getAttribute("userObj");
							OrderDAOImpl dao = new OrderDAOImpl(DBConnect.getConn());
							List<Book_order> list = dao.getBooksAdmin();
							for (Book_order b : list) {
							%>
							<tr>
								<td><%=b.getOrderId()%></td>
								<td><%=b.getName()%></td>
								<td><%=b.getEmail() %></td>
								<td><%=b.getAddress() %></td>
								<td><%=b.getPhone() %></td>
								<td><%=b.getBookname() %></td>
								<td><%=b.getAuthor() %></td>
								<td><%=b.getPrice() %></td>
								<td><%=b.getPaymode() %></td>
								
							</tr>

							<%
							}
							%>
							
							
							
							<tr>
								<td colspan="10" class="text-center text-muted">End of
									Orders</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</main>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
	<%@include file="footer.jsp"%>
</body>
</html>
