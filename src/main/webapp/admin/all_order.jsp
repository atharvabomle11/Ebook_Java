<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Orders - Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
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
        .table thead {
            background-color: #4a69bd;
            color: white;
        }
        .card {
            border-radius: 12px;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.1);
        }
        .header-title {
            color: #4a69bd;
            font-weight: bold;
        }
    </style>
</head>
<body>

    <%@ include file="navbar.jsp" %>

<main>
    <div class="container my-5">
        <div class="card p-4">
            <h2 class="text-center header-title mb-4">📚 All Orders</h2>
            <div class="table-responsive">
                <table class="table table-hover align-middle">
                    <thead>
                        <tr>
                            <th>Order ID</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Address</th>
                            <th>Phone No</th>
                            <th>Book Name</th>
                            <th>Author</th>
                            <th>Price</th>
                            <th>Payment Type</th>
                        
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>ORD001</td>
                            <td>John Doe</td>
                            <td>john@example.com</td>
                            <td>123 Main Street</td>
                            <td>9876543210</td>
                            <td>Java Programming</td>
                            <td>James Gosling</td>
                            <td>₹500</td>
                            <td>UPI</td>
                            <td>
                                <a href="#" class="btn btn-danger btn-sm" onclick="return confirm('Delete this order?');">Delete</a>
                            </td>
                        </tr>
                        <tr>
                            <td>ORD002</td>
                            <td>Mary Smith</td>
                            <td>mary@example.com</td>
                            <td>456 Park Avenue</td>
                            <td>9871234560</td>
                            <td>Data Structures</td>
                            <td>Mark Allen</td>
                            <td>₹450</td>
                            <td>Credit Card</td>
                            <td>
                                <a href="#" class="btn btn-danger btn-sm" onclick="return confirm('Delete this order?');">Delete</a>
                            </td>
                        </tr>
                        <tr>
                            <td>ORD003</td>
                            <td>Ravi Kumar</td>
                            <td>ravi@example.com</td>
                            <td>78 MG Road</td>
                            <td>9988776655</td>
                            <td>Python Basics</td>
                            <td>Guido van Rossum</td>
                            <td>₹600</td>
                            <td>Cash on Delivery</td>
                            <td>
                                <a href="#" class="btn btn-danger btn-sm" onclick="return confirm('Delete this order?');">Delete</a>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="10" class="text-center text-muted">End of Orders</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <%@include file="footer.jsp" %>
</body>
</html>
