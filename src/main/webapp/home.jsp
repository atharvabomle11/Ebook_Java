<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1>User home page</h1>
    <c:if test="${not empty succMsg}">
			<h1>Name:${succMsg.name}</h1>
			<h1>Email:${succMsg.email}</h1>
			<c:remove var="succMsg" scope="session" />
	</c:if>
    
</body>
</html>