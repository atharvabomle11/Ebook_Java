<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin : Add Books</title>
<%@include file="allCss.jsp" %>
<style>
    body {
        background: linear-gradient(to right, #eef2f3, #8e9eab);
        min-height: 100vh;
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
    .form-card {
        background: white;
        border-radius: 12px;
        padding: 30px;
        box-shadow: 0 6px 18px rgba(0, 0, 0, 0.1);
    }
    .form-card h3 {
        font-weight: bold;
        color: #2c3e50;
    }
    .btn-custom {
        background: #2980b9;
        color: white;
        transition: 0.3s;
    }
    .btn-custom:hover {
        background: #1f5d84;
    }
    label {
        font-weight: 500;
    }
</style>
</head>
<body>

    <%@include file="navbar.jsp" %>
    <c:if test="${empty userObj }">
		<c:redirect url="../login.jsp" />
	</c:if>
     
     <main>
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="form-card">
                    <h3 class="text-center mb-4">📚 Add New Book</h3>
                    
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
                    
                    <form action="../add_books" method="post" enctype="multipart/form-data">
                        
                        <div class="mb-3">
                            <label>Book Name*</label>
                            <input type="text" name="bname" class="form-control" placeholder="Enter book name" name="bname" required>
                        </div>

                        <div class="mb-3">
                            <label>Author Name*</label>
                            <input type="text"  class="form-control" placeholder="Enter author name" name="bauthor" required>
                        </div>

                        <div class="mb-3">
                            <label>Price*</label>
                            <input type="number"  class="form-control" placeholder="Enter price" name="bprice" required>
                        </div>

                        <div class="mb-3">
                            <label>Book Categories</label>
                            <select  class="form-select" name="bcategory" required>
                                <option value="">-- Select Category --</option>
                                <option value="New">New Book</option>
                                <option value="Old">Old Book</option>
                            </select>
                        </div>

                        <div class="mb-3">
                            <label>Book Status</label>
                            <select  class="form-select" name="bstatus" required>
                                <option value="">-- Select Status --</option>
                                <option value="Active">Active</option>
                                <option value="Inactive">Inactive</option>
                            </select>
                        </div>

                        <div class="mb-4">
                            <label>Upload Photo</label>
                            <input type="file"  class="form-control" name="bpic" required>
                        </div>

                        <div class="text-center">
                            <button type="submit" class="btn btn-custom px-4">Add Book</button>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
    </main>
    
    <%@include file="footer.jsp" %>

</body>
</html>
