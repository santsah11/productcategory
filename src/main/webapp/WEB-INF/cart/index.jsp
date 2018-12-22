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
<title>Cart Page payment </title>
</head>
<body>
	<div class="container">
	 
		<h3>Cart Page</h3>
	<table cellpadding="2" cellspacing="2" border="1">
		<tr>
			<th>Option</th>
			<th>Id</th>
			<th>Name</th>
			<th>Photo</th>
			<th>Price</th>
			<th>Quantity</th>
			<th>Sub Total</th>
		</tr>
		<c:set var="total" value="0"></c:set>
		<c:forEach var="item" items="${sessionScope.cart }">
			<c:set var="total"
				value="${total + item.product.price * item.quantity }"></c:set>
			<tr>
				<td align="center"><a
					href="${pageContext.request.contextPath }/cart/remove/${item.product.id }"
					onclick="return confirm('Are you sure?')">Remove</a></td>
				<td>${item.product.id }</td>
				<td>${item.product.name }</td>
				<td><img src="${pageContext.request.contextPath }/resources/http://learningprogramming.net/wp-content/uploads/java/spring_mvc/${item.product.photo }"
					width="50"></td>
				<td>${item.product.price }</td>
				<td>${item.quantity }</td>
				<td>${item.product.price * item.quantity }</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="6" align="right">Sum</td>
			<td>${total }</td>
		</tr>
	</table>
	<br>
	<h1> Will be Payment System apply</h1> <br>
	<button type="button" class="btn btn-primary">Buy</button> <br>
	<a href="${pageContext.request.contextPath }/product">Continue
		Shopping</a>
	</div>

</body>
</html>