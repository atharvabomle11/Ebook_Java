<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sell Book</title>
<%@include file="all_components/allCss.jsp"%>

<style>
    body {
        background: #f4f6f9;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    .form-container {
        max-width: 500px;
        margin: 60px auto;
        background: #fff;
        border-radius: 15px;
        box-shadow: 0 10px 30px rgba(0,0,0,0.15);
        overflow: hidden;
    }
    .form-header {
        background: linear-gradient(135deg, #42a5f5, #1e88e5);
        padding: 20px;
        text-align: center;
        color: #fff;
        font-size: 22px;
        font-weight: bold;
        letter-spacing: 1px;
    }
    .form-body {
        padding: 25px;
    }
    .form-body label {
        font-weight: 600;
        margin-top: 15px;
        display: block;
    }
    .form-control {
        border-radius: 10px;
        padding: 12px;
        border: 1px solid #ccc;
        transition: 0.3s ease;
        font-size: 15px;
    }
    .form-control:focus {
        border-color: #1e88e5;
        box-shadow: 0 0 8px rgba(30,136,229,0.3);
    }
    .btn-submit {
        background: linear-gradient(135deg, #43a047, #2e7d32);
        color: #fff;
        border: none;
        padding: 12px 20px;
        width: 100%;
        border-radius: 10px;
        font-size: 16px;
        font-weight: bold;
        margin-top: 20px;
        transition: all 0.3s ease-in-out;
    }
    .btn-submit:hover {
        background: linear-gradient(135deg, #2e7d32, #1b5e20);
        transform: translateY(-2px);
        box-shadow: 0 6px 16px rgba(0,0,0,0.25);
    }
</style>
</head>
<body>
    <%@include file="all_components/navbar.jsp"%>
     <c:if test="${empty userObj }">
      <c:redirect url="login.jsp"></c:redirect>
    </c:if>
    
    <c:if test="${not empty succMsg }">
	  <p class="text-center text-success">${succMsg }</p>
	  <c:remove var="succMsg" scope="session"/>
	</c:if>
    
    

    <div class="form-container">
        <div class="form-header">Sell Book</div>
        <div class="form-body">
            <form action="add_old_books" method="post" enctype="multipart/form-data">
            
            <input type="hidden" name="email" value="${userObj.email}">
                <label>Book Name*</label>
                <input type="text" name="bname" class="form-control" required>

                <label>Author Name*</label>
                <input type="text" name="bauthor" class="form-control" required>

                <label>Price*</label>
                <input type="number" name="bprice" class="form-control" required>

                <label>Upload Photo</label>
                <input type="file" name="bpic" class="form-control">

                <button type="submit" class="btn-submit">Sell</button>
            </form>
        </div>
    </div>
</body>
</html>
