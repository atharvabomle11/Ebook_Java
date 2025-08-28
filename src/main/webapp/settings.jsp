<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.entity.User" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ebooks Dashboard</title>

<%@include file="all_components/allCss.jsp"%>

<style>
    body {
        background: #f4f6f9;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    .dashboard-container {
        margin: 40px auto;
        max-width: 1100px;
    }
    .card-box {
        border-radius: 18px;
        padding: 30px 20px;
        text-align: center;
        color: #fff;
        transition: all 0.3s ease-in-out;
        cursor: pointer;
        min-height: 180px;
    }
    .card-box:hover {
        transform: translateY(-8px) scale(1.03);
        box-shadow: 0 12px 28px rgba(0,0,0,0.25);
    }
    .card-box i {
        font-size: 45px;
        margin-bottom: 15px;
    }
    .card-box h5 {
        font-size: 22px;
        font-weight: bold;
        margin-bottom: 8px;
    }
    .card-box p {
        font-size: 15px;
        font-weight: 400;
    }

    /* Different colors for each card */
    .card-sell { background: linear-gradient(135deg, #42a5f5, #1e88e5); }
    .card-login { background: linear-gradient(135deg, #66bb6a, #43a047); }
    .card-address { background: linear-gradient(135deg, #ffb74d, #f57c00); }
    .card-order { background: linear-gradient(135deg, #ec407a, #d81b60); }
    .card-help { background: linear-gradient(135deg, #ab47bc, #8e24aa); }

    /* Gap between upper and lower rows */
    .row.g-4 {
        row-gap: 40px;
    }
</style>
</head>
<body>
    <%@include file="all_components/navbar.jsp"%>
    <c:if test="${empty userObj }">
      <c:redirect url="login.jsp"></c:redirect>
    </c:if>
    

    <div class="container dashboard-container">
        <h3 class="text-center mb-4">Hello, ${userObj.name} </h3>
        <div class="row g-4">
            <div class="col-md-4 col-lg-4">
            <a href="sellbook.jsp" style="color:white;text-decoration:none;">
                <div class="card-box card-sell">
                    <i class="fas fa-book-open"></i>
                    <h5>Sell Old Book</h5>
                    <p>Sell your used books quickly</p>
                </div>
             </a>
            </div>
            
            <div class="col-md-4 col-lg-4">
            <a href="oldbook.jsp" style="color:white;text-decoration:none;">
                <div class="card-box card-sell">
                    <i class="fas fa-book-open"></i>
                    <h5>Old Book</h5>
                    <p>Sell your used books quickly</p>
                </div>
             </a>
            </div>
            <div class="col-md-4 col-lg-4">
            <a href="editprofile.jsp" style="color:white;text-decoration:none;">
                <div class="card-box card-login">
                    <i class="fas fa-user-edit"></i>
                    <h5>Login & Security</h5>
                    <p>Edit your profile securely</p>
                </div>
                </a>
            </div>
            
            <div class="col-md-6 col-lg-4">
            <a href="order.jsp" style="color:white;text-decoration:none;">
                <div class="card-box card-order">
                    <i class="fas fa-box"></i>
                    <h5>My Order</h5>
                    <p>Track your order history</p>
                </div>
                </a>
            </div>
            <div class="col-md-6 col-lg-4">
            <a href="helpline.jsp" style="color:white;text-decoration:none;">
                <div class="card-box card-help">
                    <i class="fas fa-headset"></i>
                    <h5>Help Center</h5>
                    <p>24×7 Support Service</p>
                </div>
                </a>
            </div>
            
        </div>
    </div>
</body>
</html>
