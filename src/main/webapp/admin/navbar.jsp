<!-- Font Awesome CDN -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	rel="stylesheet">

<div class="container-fluid"
	style="height: 10px; background-color: #3f51b5"></div>
<!-- Top Header -->
<div class="container-fluid py-3"
	style="background: linear-gradient(90deg, #f8f9fa, #e9ecef);">
	<div class="row align-items-center">

		<!-- Logo -->
		<div class="col-md-3 d-flex align-items-center">
			<i class="fas fa-book-reader fa-2x text-success me-2"></i>
			<h3 class="m-0 fw-bold" style="color: #28a745;">E-Book</h3>
		</div>

		<!-- Search -->
		<div class="col-md-5">
			<form class="d-flex">
				<input class="form-control rounded-pill me-2 shadow-sm"
					type="search" placeholder="Search eBooks..." aria-label="Search">
				<button class="btn btn-primary rounded-pill shadow-sm px-5"
					type="submit">Search</button>
			</form>
		</div>

		<!-- Login & Register -->
		<div class="col-md-4 text-end">
			<c:if test="${not empty userObj }">

				<a href="login.jsp"
					class="btn btn-outline-primary rounded-pill shadow-sm me-2 px-4">
					<i class="fas fa-user"></i>${userObj.name }</a>
				<a data-toggle="modal" data-target="#exampleModal"
					class="btn btn-outline-primary rounded-pill shadow-sm me-2 px-4">
					<i class="fas fa-user"></i> Logout
				</a>
			</c:if>

			<c:if test="${empty userObj }">
				<a href="../login.jsp"
					class="btn btn-success rounded-pill shadow-sm px-4"> <i
					class="fas fa-sign-in-alt"></i> Login
				</a>

				<a href="../register.jsp"
					class="btn btn-success rounded-pill shadow-sm px-4"> <i
					class="fas fa-sign-in-alt"></i> Register
				</a>

			</c:if>

		</div>

		<!-- Button trigger modal -->


		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel"></h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
					   <div class="text-center">
					      <h5>Do you want to logout</h5>
					      <button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<a href="../logout" type="button" class="btn btn-primary text-white">Logout</a>
					   </div>
					</div>
					<div class="modal-footer">
						
					</div>
				</div>
			</div>
		</div>

	</div>
</div>





<nav class="navbar navbar-expand-lg navbar-light bg-custom"
	style="background-color: #3f51b5; height: 70px;">
	<a
		class="navbar-brand d-flex align-items-center text-white nav-link text-white"
		href="adminHome.jsp"> <i class="fa-solid fa-house fa-1.5x me-2"></i>
		<!-- Bigger icon & spacing --> <span
		style="font-size: 1.5rem; margin-left: 15px;">Home</span>
	</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
</nav>
