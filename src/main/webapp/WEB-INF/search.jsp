<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Home page</title>
</head>
<body>
	<div class="container">

		<h1>Here is result of your Search</h1>
<%-- 		<form action="/products/search" method="post"> --%>
<!-- 			<input type="text" name="name" /> <input type="submit" /> -->
<%-- 		</form> --%>


		<c:forEach items="${products}" var="product">
			<c:out value="${product.getName()}" /><br>
			<c:out value="${product.getDescription()}" />
			<br>
			<c:out value="${product.getPrice()}" />
		</c:forEach>
	</div>

</body>
</html>