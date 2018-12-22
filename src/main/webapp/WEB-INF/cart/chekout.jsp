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
		<h3>Cart Page</h3>
		<table cellpadding="2" cellspacing="2" border="1">
			<tr>

				<th>Id</th>
				<th>Name</th>
				<th>Price</th>
				<th>Quantity</th>	
				<th>Sub Total</th>
			</tr>
			
			<c:forEach var="id" items="${cart.keySet()}">
				<tr>
					<td>${id}</td>
					<td>${allitems.get(id).getName()}</td>
					<td>${allitems.get(id).getPrice()}</td>
					<td>${cart.get(id)}</td>
					<td>${cart.get(id) * allitems.get(id).getPrice()} </td>
					<c:set var = "total" value ="${total + cart.get(id) * allitems.get(id).getPrice()}"></c:set>
				</tr>
			</c:forEach>

			<tr>
				<td colspan="4" align="right">Sum</td>
				<td>${total}</td>
			</tr>
		</table>
		<br> <a href="${pageContext.request.contextPath }/">Continue
			Shopping</a> <br>

	<a href="/payment">	<button type="button" class="btn btn-outline-primary">Check
			Out</button></a>

	</div>

</body>
</html>