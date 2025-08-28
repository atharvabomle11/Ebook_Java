<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Service</title>
<%@include file="all_components/allCss.jsp"%>

<style>
    body {
        background: #f8f9fa;
    }
    .service-container {
        max-width: 600px;
        margin: 60px auto;
        padding: 30px;
        background: #fff;
        border-radius: 12px;
        box-shadow: 0 6px 20px rgba(0,0,0,0.1);
        text-align: center;
    }
    .service-icon {
        font-size: 70px;
        color: #28a745;
        margin-bottom: 20px;
    }
    h2 {
        font-weight: bold;
        color: #333;
    }
    h5 {
        color: #555;
        margin-bottom: 20px;
    }
    .contact-number {
        font-size: 20px;
        font-weight: bold;
        color: #007bff;
        margin: 15px 0;
    }
    .btn-custom {
        background: #007bff;
        color: #fff;
        padding: 10px 25px;
        border-radius: 30px;
        font-size: 16px;
        transition: 0.3s;
    }
    .btn-custom:hover {
        background: #0056b3;
    }
</style>
</head>
<body>
<%@include file="all_components/navbar.jsp"%>

<div class="container">
    <div class="service-container">
        <div class="service-icon">
            <i class="fas fa-phone-volume"></i>
        </div>
        <h2>24 × 7 Customer Service</h2>
        <h5>We are always here to help you</h5>
        <p class="contact-number">📞 +0671 1234567</p>
        <a href="index.jsp" class="btn btn-custom">Go to Home</a>
    </div>
</div>

</body>
</html>
