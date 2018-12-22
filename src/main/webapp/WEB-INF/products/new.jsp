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
		<h1>Please Create the new Products</h1>
		<form:form method="POST" action="/createnew/product"
			modelAttribute="product">
			<table>
				<tr>
					<td><form:label path="name">Name</form:label></td>
					<td><form:input path="name" /></td>
				</tr>
				<tr>
					<td><form:label path="description">Description</form:label></td>
					<td><form:input path="description" /></td>
				</tr>
				<tr>
					<td><form:label path="price">Price</form:label></td>
					<td><form:input path="price" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Create" /></td>
				</tr>
			</table>
		</form:form>
	</div>

</body>
</html>


