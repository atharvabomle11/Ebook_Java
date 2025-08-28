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
<title>Your Orders</title>
<%@include file="all_components/allCss.jsp"%>
<style>
body {
	background-color: #f8f9fa;
}

.order-container {
	max-width: 900px;
	margin: 40px auto;
	padding: 20px;
	background: #fff;
	border-radius: 10px;
	box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
}

h2 {
	text-align: center;
	color: #007bff;
	margin-bottom: 25px;
	font-weight: bold;
}

.table th {
	background-color: #007bff;
	color: white;
	text-align: center;
}

.table td {
	text-align: center;
	vertical-align: middle;
}

.table-hover tbody tr:hover {
	background-color: #f1f1f1;
	cursor: pointer;
}
</style>
</head>
<body>
	<%@include file="all_components/navbar.jsp"%>
	<c:if test="${empty userObj }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>
	<div class="container">
		<div class="order-container">
			<h2>Your Order</h2>
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th>Order Id</th>
						<th>Name</th>
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
					List<Book_order> list = dao.getOrderBooks(us.getEmail());
					for (Book_order b : list) {
					%>
					<tr>
						<td><%=b.getOrderId()%></td>
						<td><%=b.getName()%></td>
						<td><%=b.getBookname()%></td>
						<td><%=b.getAuthor()%></td>
						<td><%=b.getPrice()%></td>
						<td><%=b.getPaymode()%></td>
					</tr>

					<%
					}
					%>

				</tbody>
			</table>
		</div>
	</div>

</body>
</html>
