<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.DAO.BookDAOImpl,com.DB.DBConnect,com.entity.BookDts,java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Books - Admin</title>

<%@ include file="allCss.jsp" %>

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
    .table-container {
        background: white;
        padding: 20px;
        border-radius: 15px;
        box-shadow: 0 4px 20px rgba(0,0,0,0.1);
        margin-top: 30px;
    }
    h2 {
        font-weight: bold;
        color: #343a40;
    }
    table {
        border-radius: 10px;
        overflow: hidden;
    }
    thead {
        background: linear-gradient(45deg, #007bff, #6610f2);
        color: white;
    }
    tbody tr:hover {
        background-color: #f1f1f1;
        transition: 0.2s ease-in-out;
    }
    .btn-edit {
        background-color: #0d6efd;
        color: white;
        border-radius: 20px;
        padding: 5px 15px;
    }
    .btn-delete {
        background-color: #dc3545;
        color: white;
        border-radius: 20px;
        padding: 5px 15px;
    }
    .search-bar {
        margin-top: 20px;
    }
</style>

</head>
<body>

<%@ include file="navbar.jsp" %>
<c:if test="${empty userObj }">
		<c:redirect url="../login.jsp" />
	</c:if>
<main>

<div class="container">
    <div class="row justify-content-between align-items-center mt-4">
        <div class="col-md-6">
            <h2>📚 Hello Admin</h2>
        </div>
        <div class="col-md-6 text-end search-bar">
            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search Book..." aria-label="Search">
                <button class="btn btn-primary" type="submit">Search</button>
            </form>
        </div>
    </div>
    
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

    <div class="table-container">
        <table class="table table-hover text-center">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Image</th>
                    <th>Book Name</th>
                    <th>Author</th>
                    <th>Price</th>
                    <th>Category</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
            
            <%  
              BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
              List<BookDts> list  = dao.getBooks();
              for(BookDts b:list){
            %>
              <tr>
                    <td><%= b.getBookId()%></td>
                    <td><img src="../book/<%= b.getPicname()%>" style="width:50px;height:50px;"></td>
                    <td><%= b.getBookName() %></td>
                    <td><%= b.getAuthor() %></td>
                    <td><%= b.getPrice() %></td>
                    <td><%= b.getBookCategory() %></td>
                    <td><%= b.getStatus() %></td>
               
                    <td>
                        <a href="edit_book.jsp?id=<%= b.getBookId() %>" class="btn btn-edit">Edit</a>
                        <a href="../deleteBook?id=<%= b.getBookId() %>" class="btn btn-delete">Delete</a>
                    </td>
                </tr>
              <%
              }
            %>
                <!-- Example Row -->
                
                
            </tbody>
        </table>
    </div>
</div>
</main>

<%@include file="footer.jsp" %>
</body>
</html>
