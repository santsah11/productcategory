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
<title>Total Product In cart</title>
</head>
<body>
	<div class="container">

	<h3>Products Page</h3>
	<table cellpadding="2" cellspacing="2" border="1">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Photo</th>
			<th>Price</th>
			<th>Buy</th>
		</tr>
		<c:forEach var="product" items="${products }">
			<tr>
				<td>${product.id }</td>
				<td>${product.name }</td>
				<td><img src="${pageContext.request.contextPath }/resources/http://learningprogramming.net/wp-content/uploads/java/spring_mvc/${product.photo }" width="50"></td>
				<td>${product.price }</td>
				<td align="center">
					<a href="${pageContext.request.contextPath }/cart/buy/${product.id}">Buy Now</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	</div>

</body>
</html>