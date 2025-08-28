<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl,com.entity.BookDts,java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<h3 class="text-center">Old Book</h3>
			<div class="row">
				<%
				BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
				List<BookDts> list2 = dao2.getAllOldBooks();
				for (BookDts b : list2) {
				%>
				<div class="col-md-3">
					<div class="card crd-ho">
						<div class="card-body text-center">
							<img alt="" src="book/<%=b.getPicname()%>"
								style="width: 150px; height: 200px;" class="img-thumblin">
							<p><%=b.getBookName()%></p>
							<p><%=b.getAuthor()%></p>
							<p>
								Categories:<%=b.getBookCategory()%></p>
							<div class="row">
								<a
									href="view_details.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-1">View Details</a> <a
									href="" class="btn btn-danger btn-sm ml-1"><i
									class="fa-solid fa-indian-rupee-sign"></i><%=b.getPrice()%></a>
							</div>
						</div>
					</div>
				</div>

				<%
				}
				%>


</body>
</html>