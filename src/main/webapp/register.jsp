<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="all_components/allCss.jsp"%>

</head>
<body class="bg-light">
	<%@ include file="all_components/navbar.jsp"%>

	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6 col-lg-5">
				<div class="card shadow mt-5">
					<div class="card-body">
						<h3 class="text-center mb-4">
							<i class="bi bi-person-plus-fill"></i> Registration Page
						</h3>

						<!-- Success Message -->
						<c:if test="${not empty succMsg}">
							<div class="alert alert-success text-center">${succMsg}</div>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<!-- Failure Message -->
						<c:if test="${not empty failMsg}">
							<div class="alert alert-danger text-center">${failMsg}</div>
							<c:remove var="failMsg" scope="session" />
						</c:if>

						<form action="register" method="POST">
							<!-- Full Name -->
							<div class="mb-3">
								<label class="form-label">Full Name</label>
								<div class="input-group">
									<span class="input-group-text"><i
										class="bi bi-person-fill"></i></span> <input type="text"
										class="form-control" placeholder="Enter your full name"
										name="fname" required>
								</div>
							</div>

							<!-- Email -->
							<div class="mb-3">
								<label class="form-label">Email Address</label>
								<div class="input-group">
									<span class="input-group-text"><i
										class="bi bi-envelope-fill"></i></span> <input type="email"
										class="form-control" placeholder="Enter your email"
										name="email" required>
								</div>
							</div>

							<!-- Phone -->
							<div class="mb-3">
								<label class="form-label">Phone Number</label>
								<div class="input-group">
									<span class="input-group-text"><i
										class="bi bi-telephone-fill"></i></span> <input type="tel"
										class="form-control" placeholder="Enter your phone number"
										name="phno" required>
								</div>
							</div>

							<!-- Password -->
							<div class="mb-3">
								<label class="form-label">Password</label>
								<div class="input-group">
									<span class="input-group-text"><i
										class="bi bi-lock-fill"></i></span> <input type="password"
										class="form-control" placeholder="Enter your password"
										name="pass" required>
								</div>
							</div>

							<!-- Terms Checkbox -->
							<div class="form-check mb-3">
								<input type="checkbox" class="form-check-input" id="terms"
									name="check"> <label class="form-check-label"
									for="terms">I agree to the Terms & Conditions</label>
							</div>

							<!-- Submit -->
							<div class="d-grid">
								<button type="submit" class="btn btn-primary">Register</button>
							</div>

							<!-- Login Link -->
							<p class="text-center mt-3">
								Already have an account? <a href="login.jsp">Login here</a>
							</p>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>



</body>
</html>