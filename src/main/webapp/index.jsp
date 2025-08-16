<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook: Index</title>
<%@include file="all_components/allCss.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/book.jpg");
	height: 50vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}

.crd-ho:hover{
  background-color:#fcf7f7;
}
</style>
</head>
<body style="background-color:#f7f7f7;">
	<%@include file="all_components/navbar.jsp"%>
	<div class="container-fluid back-img">
		<h2 class="text-center text-danger">EBook Management System</h2>
	</div>

<%-- <%
   Connection conn = DBConnect.getConn();
   out.println(conn);
%>
 --%>
 <!-- Start recent book -->
	<div class="container">
    <h3 class="text-center">Recent Book</h3>
    <div class="row">
        <div class="col-md-3">
            <div class="card crd-ho">
                <div class="card-body text-center">
                    <img alt="" src="book/java.jpg" style="width: 150px; height: 200px;" class="img-thumblin">
                    <p>Java Programming</p>
                    <p>Balguruswamy</p>
                    <p>Categories: New</p>
                    <div class="row">
                        <a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>
                        <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">299</a>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="col-md-3">
            <div class="card crd-ho">
                <div class="card-body text-center">
                    <img alt="" src="book/java.jpg" style="width: 150px; height: 200px;" class="img-thumblin">
                    <p>Java Programming</p>
                    <p>Balguruswamy</p>
                    <p>Categories: New</p>
                    <div class="row">
                        <a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>
                        <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">299</a>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="col-md-3">
            <div class="card crd-ho">
                <div class="card-body text-center">
                    <img alt="" src="book/java.jpg" style="width: 150px; height: 200px;" class="img-thumblin">
                    <p>Java Programming</p>
                    <p>Balguruswamy</p>
                    <p>Categories: New</p>
                    <div class="row">
                        <a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>
                        <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">299</a>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="col-md-3">
            <div class="card crd-ho">
                <div class="card-body text-center">
                    <img alt="" src="book/java.jpg" style="width: 150px; height: 200px;" class="img-thumblin">
                    <p>Java Programming</p>
                    <p>Balguruswamy</p>
                    <p>Categories: New</p>
                    <div class="row">
                        <a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>
                        <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">299</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="text-center mt-1">
      <a href="" class="btn btn-danger btn-sm text-white">View All</a>
    </div>
</div>
<!-- End Recent book -->
<hr>
<!-- Start New book -->
	<div class="container">
    <h3 class="text-center">New Book</h3>
    <div class="row">
        <div class="col-md-3">
            <div class="card crd-ho">
                <div class="card-body text-center">
                    <img alt="" src="book/java.jpg" style="width: 150px; height: 200px;" class="img-thumblin">
                    <p>Java Programming</p>
                    <p>Balguruswamy</p>
                    <p>Categories: New</p>
                    <div class="row">
                        <a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>
                        <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">299</a>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="col-md-3">
            <div class="card crd-ho">
                <div class="card-body text-center">
                    <img alt="" src="book/java.jpg" style="width: 150px; height: 200px;" class="img-thumblin">
                    <p>Java Programming</p>
                    <p>Balguruswamy</p>
                    <p>Categories: New</p>
                    <div class="row">
                        <a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>
                        <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">299</a>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="col-md-3">
            <div class="card crd-ho">
                <div class="card-body text-center">
                    <img alt="" src="book/java.jpg" style="width: 150px; height: 200px;" class="img-thumblin">
                    <p>Java Programming</p>
                    <p>Balguruswamy</p>
                    <p>Categories: New</p>
                    <div class="row">
                        <a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>
                        <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">299</a>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="col-md-3">
            <div class="card crd-ho">
                <div class="card-body text-center">
                    <img alt="" src="book/java.jpg" style="width: 150px; height: 200px;" class="img-thumblin">
                    <p>Java Programming</p>
                    <p>Balguruswamy</p>
                    <p>Categories: New</p>
                    <div class="row">
                        <a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>
                        <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">299</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="text-center mt-1">
      <a href="" class="btn btn-danger btn-sm text-white">View All</a>
    </div>
</div>
<!-- End New book -->
<hr>
<!-- Start Old book -->
	<div class="container">
    <h3 class="text-center">Old Book</h3>
    <div class="row">
        <div class="col-md-3">
            <div class="card crd-ho">
                <div class="card-body text-center">
                    <img alt="" src="book/java.jpg" style="width: 150px; height: 200px;" class="img-thumblin">
                    <p>Java Programming</p>
                    <p>Balguruswamy</p>
                    <p>Categories: New</p>
                    <div class="row">
                        <a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>
                        <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">299</a>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="col-md-3">
            <div class="card crd-ho">
                <div class="card-body text-center">
                    <img alt="" src="book/java.jpg" style="width: 150px; height: 200px;" class="img-thumblin">
                    <p>Java Programming</p>
                    <p>Balguruswamy</p>
                    <p>Categories: New</p>
                    <div class="row">
                        <a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>
                        <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">299</a>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="col-md-3">
            <div class="card crd-ho">
                <div class="card-body text-center">
                    <img alt="" src="book/java.jpg" style="width: 150px; height: 200px;" class="img-thumblin">
                    <p>Java Programming</p>
                    <p>Balguruswamy</p>
                    <p>Categories: New</p>
                    <div class="row">
                        <a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>
                        <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">299</a>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="col-md-3">
            <div class="card crd-ho">
                <div class="card-body text-center">
                    <img alt="" src="book/java.jpg" style="width: 150px; height: 200px;" class="img-thumblin">
                    <p>Java Programming</p>
                    <p>Balguruswamy</p>
                    <p>Categories: New</p>
                    <div class="row">
                        <a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>
                        <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">299</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="text-center mt-1">
      <a href="" class="btn btn-danger btn-sm text-white">View All</a>
    </div>
</div>

<%@ include file="all_components/footer.jsp" %>

</body>
</html>
