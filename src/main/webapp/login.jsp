<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="all_components/allCss.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body style="overflow-y: hidden;">
	<%@ include file="all_components/navbar.jsp"%>


	<!-- Full page container for login form -->
	<div class="d-flex justify-content-center align-items-start" 
     style="min-height: calc(100vh - 60px); margin-top: 50px;">
		<div class="card shadow-lg p-4" style="width: 100%; max-width: 400px;">
			<div class="text-center mb-4">
				<i class="bi bi-box-arrow-in-right"
					style="font-size: 2rem; color: #0d6efd;"></i>
				<h3 class="mt-2">Login</h3>
			</div>
			
			<c:if test="${not empty failMsg}">
					<div class="alert alert-danger text-center">${failMsg}</div>
					<c:remove var="failMsg" scope="session" />
			</c:if>

			<form action="login" method="post">
				<div class="mb-3">
					<label class="form-label">Email address</label>
					<div class="input-group">
						<span class="input-group-text"><i
							class="bi bi-envelope-fill"></i></span> 
							<input type="email"
							class="form-control" name="email" placeholder="Enter email" name="email" required >
					</div>
				</div>
				<div class="mb-3">
					<label class="form-label">Password</label>
					<div class="input-group">
						<span class="input-group-text"><i class="bi bi-lock-fill"></i></span>
						<input type="password" class="form-control" 
							placeholder="Enter password" name="pass" required>
					</div>
				</div>
				<div class="d-grid">
					<button type="submit" class="btn btn-primary">Login</button>
				</div>
				<p class="text-center mt-3 text-white">
					Don't have an account? <a href="register.jsp" class="text-warning">Create
						Account</a>
				</p>
			</form>
		</div>
	</div>

</body>


</html>