<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Profile</title>
<%@include file="all_components/allCss.jsp"%>

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />

<style>
body {
	background: #f4f7fb;
	font-family: Arial, sans-serif;
}

.form-wrapper {
	display: flex;
	justify-content: center;
	margin-top: 60px;
}

.form-container {
	width: 420px;
	background: #fff;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
}

.form-header {
	text-align: center;
	font-size: 22px;
	font-weight: bold;
	margin-bottom: 20px;
	color: #007bff;
}

.form-group {
	margin-bottom: 18px;
}

.form-group i {
	margin-right: 8px;
	color: #007bff;
}

.form-control {
	border-radius: 6px;
}

.btn-submit {
	width: 100%;
	background: #007bff;
	color: white;
	font-weight: bold;
	border-radius: 6px;
}

.btn-submit:hover {
	background: #0056b3;
}
</style>
</head>
<body>
	<%@include file="all_components/navbar.jsp"%>
	<c:if test="${empty userObj }">
      <c:redirect url="login.jsp"></c:redirect>
    </c:if>

	<div class="form-wrapper">
		<div class="form-container" >
			<div class="form-header">Edit Profile</div>
			<c:if test="${not empty succMsg}">
				<div class="alert alert-success text-center">${succMsg}</div>
				<c:remove var="succMsg" scope="session" />
			</c:if>

			<!-- Failure Message -->
			<c:if test="${not empty failMsg}">
				<div class="alert alert-danger text-center">${failMsg}</div>
				<c:remove var="failMsg" scope="session" />
			</c:if>


			<form action="updateProfile" method="post">
				<input type="hidden" value="${userObj.id }" name="id">
				<div class="form-group">
					<label><i class="fa fa-user"></i> Name*</label> <input type="text"
						class="form-control" name="name" placeholder="Enter your name"
						value="${userObj.name}" required>
				</div>

				<div class="form-group">
					<label><i class="fa fa-envelope"></i> Email*</label> <input
						type="email" class="form-control" name="email"
						placeholder="Enter your email" value="${userObj.email}" required>
				</div>

				<div class="form-group">
					<label><i class="fa fa-phone"></i> Phone*</label> <input
						type="text" class="form-control" name="phno"
						placeholder="Enter your phone number" value="${userObj.phno}"
						required>
				</div>

				<div class="form-group">
					<label><i class="fa fa-lock"></i> Password*</label> <input
						type="password" class="form-control" name="pass"
						placeholder="Enter password" required>
				</div>

				<button type="submit" class="btn btn-submit">Update</button>
			</form>
		</div>
	</div>

</body>
</html>
