<%@page import="com.DB.DBConnect,com.entity.User,com.entity.Cart,java.util.List"%>
<%@page import="com.DAO.CartDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Page</title>
<%@include file="all_components/allCss.jsp"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body class="bg-light">

	<%@include file="all_components/navbar.jsp"%>

	<c:if test="${empty userObj }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>

    <c:if test="${not empty succMsg }">
		<div class="alert alert-success" role="alert">${succMsg }</div>
		<c:remove var="succMsg" scope="session"></c:remove>
	</c:if>
	
	<c:if test="${not empty failedMsg }">
		<div class="alert alert-danger" role="alert">${failedMsg }</div>
		<c:remove var="failedMsg" scope="session"></c:remove>
	</c:if>
    

	<div class="container mt-5">
		<div class="row g-4">

			<!-- Left: Selected Items -->
			<div class="col-md-6">
				<div class="card shadow-lg rounded-3 border-0">
					<div
						class="card-header bg-success text-white text-center fs-4 fw-bold">
						Your Selected Item</div>
					<div class="card-body">
						<table class="table table-bordered text-center align-middle">
							<thead class="table-success">
								<tr>
									<th>Book Name</th>
									<th>Author</th>
									<th>Price</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<%
								User us = (User)session.getAttribute("userObj");
								CartDAOImpl dao = new CartDAOImpl(DBConnect.getConn());
								List<Cart> cart = dao.getBookByUser(us.getId());
								Double totalPrice = 0.00;
								%>
								<%for(Cart c:cart){ 
								   totalPrice +=c.getTotal_price();
								%>
								   <tr>
									<td><strong><%=c.getBooKName() %></strong></td>
									<td><%=c.getAuthor() %></td>
									<td><%=c.getTotal_price() %></td>
									<td>
									<a href="remove_cart?bid=<%=c.getBid()%>&&uid=<%=c.getUid()%>&&cid=<%=c.getCid() %>" class="btn btn-danger btn-sm">Remove</a>
									</td>
								</tr>
								<% } %>
								
								<tr>
								  <td>Total Price</td>
								  <td></td>
								  <td></td>
								  <td><%=totalPrice %></td>
								</tr>
								

							</tbody>
						</table>
					</div>
				</div>
			</div>

			<!-- Right: Order Form -->
			<div class="col-md-6">
				<div class="card shadow-lg rounded-3 border-0">
					<div
						class="card-header bg-success text-white text-center fs-4 fw-bold">
						Your Details for Order</div>
					<div class="card-body">
						<form action="order" method="post">
						<input type="hidden" name="id" value="${userObj.id }">
							<div class="row mb-3">
								<div class="col">
									<label class="form-label">Name</label> <input type="text"
										class="form-control" value="<%=us.getName() %>" readonly="readonly" name="name" required>
								</div>
								<div class="col">
									<label class="form-label">Email</label> <input type="email"
										class="form-control" value="<%=us.getEmail() %>" readonly="readonly" name="email" required>
								</div>
							</div>

							<div class="row mb-3">
								<div class="col">
									<label class="form-label">Mobile No</label> <input type="text"
										class="form-control" value="<%=us.getPhno() %>" readonly="readonly" name="phno" required>
								</div>
								<div class="col">
									<label class="form-label">Address</label> <input type="text"
										class="form-control" value="" name="address" required>
								</div>
							</div>

							<div class="row mb-3">
								<div class="col">
									<label class="form-label">Landmark</label> <input type="text"
										class="form-control" value="" name="landmark" required>
								</div>
								<div class="col">
									<label class="form-label">City</label> <input type="text"
										class="form-control" value="" name="city" required>
								</div>
							</div>

							<div class="row mb-3">
								<div class="col">
									<label class="form-label">State</label> <input type="text"
										class="form-control" placeholder="State" name="state" required>
								</div>
								<div class="col">
									<label class="form-label">Zip</label> <input type="text"
										class="form-control" placeholder="Zip code" name="zip" required>
								</div>
							</div>

							<div class="mb-3">
								<label class="form-label" for="paymode">Payment Mode</label> <select
									class="form-select" name="paymode">
									<option value="noselect" selected >--Select--</option>
									<option value="COD">Cash on Delivery</option>
									
								</select>
							</div>

							<div class="text-center">
								<button type="submit" class="btn btn-warning px-4 me-2 fw-bold">Order
									Now</button>
								<button type="button" class="btn btn-success px-4 fw-bold">Continue
									Shopping</button>
							</div>
						</form>
					</div>
				</div>
			</div>

		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
