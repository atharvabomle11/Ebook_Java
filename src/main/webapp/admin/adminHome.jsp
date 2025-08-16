<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home</title>
<%@include file="allCss.jsp" %>
<style>
    body {
        background-color: #f5f7fa;
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
    .dashboard-card {
        transition: all 0.3s ease-in-out;
        cursor: pointer;
        border-radius: 15px;
    }
    .dashboard-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 10px 20px rgba(0,0,0,0.15);
    }
    .dashboard-icon {
        font-size: 2.5rem;
        margin-bottom: 15px;
    }
    .card-title {
        font-weight: bold;
        font-size: 1.2rem;
    }
    
</style>
</head>
<body>
<%@include file="navbar.jsp" %>

<main>
<div class="container py-5">
    <h1 class="mb-4 text-center fw-bold ">📚 Hello Admin</h1>

    <div class="row g-4">
        <!-- Add Books -->
        <div class="col-md-3">
        <a href="add_books.jsp" style="text-decoration:none;">   
            <div class="card text-center p-4 shadow-sm dashboard-card bg-primary text-white">
                <div class="dashboard-icon">
                    <i class="bi bi-plus-circle"></i>
                </div>
                <div class="card-title">Add Books</div>
            </div>
            </a>     
        </div>

        <!-- All Books -->
        <div class="col-md-3">
        <a href="all_books.jsp" style="text-decoration:none;"> 
            <div class="card text-center p-4 shadow-sm dashboard-card bg-danger text-white">
                <div class="dashboard-icon">
                    <i class="bi bi-book"></i>
                </div>
                <div class="card-title">All Books</div>
            </div>
            </a>
        </div>

        <!-- Orders -->
        <div class="col-md-3">
        <a href="all_order.jsp" style="text-decoration:none;"> 
            <div class="card text-center p-4 shadow-sm dashboard-card bg-warning text-dark">
                <div class="dashboard-icon">
                    <i class="bi bi-box"></i>
                </div>
                <div class="card-title">Orders</div>
            </div>
            </a>
        </div>

        <!-- Logout -->
        <div class="col-md-3">
            <div class="card text-center p-4 shadow-sm dashboard-card bg-success text-white">
                <div class="dashboard-icon">
                    <i class="bi bi-box-arrow-right"></i>
                </div>
                <div class="card-title"><a>Logout</div>
            </div>
        </div>
    </div>
</div>
</main>

<!-- Bootstrap Icons CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
<%@include file="footer.jsp" %>

</body>
</html>
