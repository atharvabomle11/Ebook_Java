<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.DAO.BookDAOImpl,com.DB.DBConnect,com.entity.BookDts" %>
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
     
     <main>
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="form-card">
                    <h3 class="text-center mb-4">📚 Edit Book</h3>
                    
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
                    
                    <%
                       int id = Integer.parseInt(request.getParameter("id"));
                       BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
                       BookDts b = dao.getBookById(id);
                    %>
                    
                    	
                    <form action="../editbooks" method="post" >
                         
                         <input type="hidden" name="bid" value="<%= b.getBookId()%>">
                        
                        <div class="mb-3">
                            <label>Book Name*</label>
                            <input type="text" name="bname" class="form-control" placeholder="Enter book name"value="<%=b.getBookName()%>" 
                            required>
                        </div>

                        <div class="mb-3">
                            <label>Author Name*</label>
                            <input type="text"  class="form-control" placeholder="Enter author name" name="bauthor" value="<%=b.getAuthor() %>" required>
                        </div>

                        <div class="mb-3">
                            <label>Price*</label>
                            <input type="number"  class="form-control" placeholder="Enter price" name="bprice" value="<%=b.getPrice() %>" required>
                        </div>
                 

                        <div class="mb-3">
                            <label>Book Status</label>
                            <select  class="form-select" name="bstatus" required>
                                <%  if("Active".equals(b.getStatus())){   %>
                                     <option value="Active">Active</option>
                                     <option value="Inactive">Inactive</option>
                                <%  } else {    %>
                                <option value="Active">Active</option>
                                       <option value="Inactive">Inactive</option>
                                <%  } %>
                                
                                
                            </select>
                        </div>

                        

                        <div class="text-center">
                            <button type="submit" class="btn btn-custom px-4">Update Book</button>
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
