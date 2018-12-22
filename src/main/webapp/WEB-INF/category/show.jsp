<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> --%>
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

		
	

		<div>

			<h1>
				<c:out value="${databaseCategory.getName()}" />
			</h1>
			@@ these are products
			<c:forEach items="${databaseCategory.products}" var="product">
				<p>
					<c:out value="${product.getName()}" />
				</p>
			</c:forEach>
			@@

			<h1>These items not in the category</h1>

			<c:forEach items="${ otherProducts }" var="other">
				<option value="${other.id}"><c:out value="${other.name}" /></option>
			</c:forEach>






			<form method="post" action="/categories/${databaseCategory.id }/add">
				<h3>Add Product:</h3>
				<select name="newProduct">
					<c:forEach items="${ otherProducts }" var="other">
						<option value="${other.id}"><c:out value="${other.name}" /></option>
					</c:forEach>
				</select> <input type="hidden" name="category" value=${category.id }>
				<input type="submit" value="Add Product">
			</form>



			<%-- 	<form:form action="/addprodcut" method="post"
				modelAttribute="category">
				<form:select path="product">
					<c:forEach items="${allproduct}" var="d">
						<form:option value="${d.id}" label="${d.name}" />
					</c:forEach>
				</form:select>

			</form:form> 
 --%>
			<%-- 			<form>
				<select>
					<option><c:out value="${databaseCategory.getName()}"/> </option>
					<option><c:out value="${databaseCategory.getId()}"/> </option>
				</select>
			</form>  --%>
		</div>

	</div>

</body>
</html>