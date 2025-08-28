<%@page import="com.entity.BookDts"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Details</title>
<%@include file="all_components/allCss.jsp"%>
<!-- Bootstrap Icons -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css"
	rel="stylesheet">

<style>
/* Hover effect for feature badges */
.feature-badge {
	transition: all 0.3s ease; /* smooth effect */
	cursor: default;
}

.feature-badge.text-primary:hover {
	background-color: #0d6efd; /* Bootstrap primary */
	color: #fff !important;
}

.feature-badge.text-warning:hover {
	background-color: #ffc107; /* Bootstrap warning */
	color: #000 !important;
}

.feature-badge.text-success:hover {
	background-color: #198754; /* Bootstrap success */
	color: #fff !important;
}
</style>

</head>
<body>
	<%@include file="all_components/navbar.jsp"%>

	<%
	int id = Integer.parseInt(request.getParameter("bid"));
	BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
	BookDts b = dao.getBookById(id);
	%>

	<div class="container my-5">
		<div class="card shadow-lg border-0">
			<div class="row g-0 p-4 align-items-center">

				<!-- Book Image -->
				<div class="col-md-4 text-center">
					<img src="book/<%=b.getPicname()%>" alt="Book Image"
						class="img-fluid rounded shadow" style="max-height: 320px;">
				</div>

				<!-- Book Info -->
				<div class="col-md-8 ps-4">
					<h2 class="fw-bold text-dark mb-3"><%=b.getBookName()%></h2>

					<p class="mb-2">
						<strong>Author:</strong> <span class="text-secondary"><%=b.getAuthor()%></span>
					</p>
					<p class="mb-3">
						<strong>Category:</strong> <span class="badge bg-info text-dark"><%=b.getBookCategory()%></span>
					</p>
					<%
					if ("Old".equals(b.getBookCategory())) {
					%>
					<h5 class="text-primary">Contact to Seller</h5>
					<h5 class="text-primary">
						Email:<%=b.getEmail()%></h5>

					<%
					}
					%>

					<!-- Cash on Delivery / Return / Free Delivery -->
					<div class="mb-3">
						<button class="btn btn-sm btn-outline-primary">
							<i class="fas fa-shipping-fast"></i> Cash On Delivery
						</button>
						<button class="btn btn-sm btn-outline-warning">
							<i class="fas fa-undo"></i> Return Available
						</button>
						<button class="btn btn-sm btn-outline-success">
							<i class="fas fa-truck"></i> Free Delivery
						</button>
					</div>

					<!-- Cart and Price Buttons -->
					<%
					if ("Old".equals(b.getBookCategory())) {
					%>
					<div class="mt-3">
						<a href="index.jsp" class="btn btn-success me-2"> <i
							class="fas fa-cart-plus"></i> Continue Shopping
						</a> <a href="" class="btn btn-danger"> <i
							class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice() %>
						</a>
					</div>
					<%
					} else {
					%>
					<div class="mt-3">
						<a href="" class="btn btn-primary me-2"> <i
							class="fas fa-cart-plus"></i> Add Cart
						</a> <a href="" class="btn btn-danger"> <i
							class="fa-solid fa-indian-rupee-sign"></i><%=b.getPrice() %>
						</a>
					</div>
					<%
					}
					%>


				</div>
			</div>
		</div>
	</div>

</body>
</html>
