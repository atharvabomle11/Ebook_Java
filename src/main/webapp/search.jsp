<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.DB.DBConnect"%>
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
			
			<div class="row">
				<%
				String ch = request.getParameter("ch");
				BookDAOImpl dao1 = new BookDAOImpl(DBConnect.getConn());
				List<BookDts> list1 = dao1.getBookBySearch(ch);
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
							<p>
								Categories:<%=b.getBookCategory()%></p>
							<div class="row">

								<a href="view_details.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-1">View Details</a>
								<a href="" class="btn btn-danger btn-sm ml-1"><i
									class="fa-solid fa-indian-rupee-sign"></i><%=b.getPrice()%></a>
							</div>
							<%
							} else {
							%>
							Categories:<%=b.getBookCategory()%></p>
							<div class="row">
								<a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a> <a
									href="view_details.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-1">View Details</a> <a
									href="" class="btn btn-danger btn-sm ml-1"><i
									class="fa-solid fa-indian-rupee-sign"></i><%=b.getPrice()%></a>
							</div>

							<%
							}
							%>
							<p>
						</div>
					</div>
				</div>

				<%
				}
				%>

</body>
</html>