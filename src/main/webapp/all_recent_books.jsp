<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.DB.DBConnect,com.entity.User"%>
<%@page import="com.DAO.BookDAOImpl,com.entity.BookDts,java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_components/allCss.jsp"%>
</head>
<body>
    <%@include file="all_components/navbar.jsp"%>

    <div class="container">
        <h3 class="text-center">Recent Book</h3>
        <div class="row">
            <%
                User u = (User)session.getAttribute("userObj"); 
                BookDAOImpl dao1 = new BookDAOImpl(DBConnect.getConn());
                List<BookDts> list1 = dao1.getAllRecentBooks();
                for (BookDts b : list1) {
            %>
            <div class="col-md-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/<%=b.getPicname()%>"
                            style="width: 150px; height: 200px;" class="img-thumblin">
                        <p><%=b.getBookName()%></p>
                        <p><%=b.getAuthor()%></p>

                        <%
                            if (b.getBookCategory().equals("Old")) {
                        %>
                        <p>Categories: <%=b.getBookCategory()%></p>
                        <div class="row">
                            <a href="view_details.jsp?bid=<%=b.getBookId() %>"
                                class="btn btn-success btn-sm ml-1">View Details</a> 
                            <a href=""
                                class="btn btn-danger btn-sm ml-1">
                                <i class="fa-solid fa-indian-rupee-sign"></i><%=b.getPrice()%>
                            </a>
                        </div>
                        <%
                            } else {
                        %>
                        <p>Categories: <%=b.getBookCategory()%></p>
                        <div class="row">
                            <%
                                if(u == null) { 
                            %>
                                <a href="login.jsp" class="btn btn-danger btn-sm ml-2">Add Cart</a>
                            <%
                                } else {
                            %>
                                <a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId() %>"
                                    class="btn btn-danger btn-sm ml-2">Add Cart</a>
                            <%
                                } 
                            %>
                            <a href="view_details.jsp?bid=<%=b.getBookId() %>"
                                class="btn btn-success btn-sm ml-1">View Details</a> 
                            <a href=""
                                class="btn btn-danger btn-sm ml-1">
                                <i class="fa-solid fa-indian-rupee-sign"></i><%=b.getPrice()%>
                            </a>
                        </div>
                        <%
                            } // end of if-else for category
                        %>
                    </div>
                </div>
            </div>
            <%
                } // end of for loop
            %>
        </div>
    </div>
</body>
</html>
