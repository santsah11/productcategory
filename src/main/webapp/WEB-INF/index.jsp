<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/styles.css">


<meta charset="ISO-8859-1">
<title>Home page</title>
</head>
<body>
	<div class="container">

		<div class="card text-center">

			<div class="card-body">
				<h5 class="card-title">Cart, login the home header</h5>
				<p class="card-text">With supporting text below as a natural
					lead-in to additional content.</p>
						<p>
					<a class="nav-link" href="/cart/products">Cart[<c:out
							value="${count}" />]
					</a>
				</p>
			</div>
		
			<nav class="navbar navbar-expand-lg navbar-light bg-light">

				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item active"><a class="nav-link" href="">Home
								<span class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Features</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">Boots</a>
						<li class="nav-item"><a class="nav-link" href="#">Sunglasses</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">Purses</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#"></a></li>
						<li class="nav-item"><a class="nav-link" href="#">About</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Contact</a>
						</li>

						<li class="nav-item">
							<form class="form-inline">
								<input class="form-control mr-sm-2" type="search"
									placeholder="Search" aria-label="Search">
								<button class="btn btn-outline-success my-2 my-sm-0"
									type="submit">Search</button>
							</form>
						</li>

					</ul>
				</div>
			</nav>

		</div>
		<div>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th scope="col">Product Name</th>
						<th scope="col">Description</th>
						<th scope="col">Price</th>
						<th scope="col">img</th>

					</tr>
				</thead>
				<tbody>
					<c:forEach items="${products}" var="product">
						<tr>
							<td><a href="/product/show/<c:out value="${product.id}"/>"><c:out
										value="${product.name}" /></a></td>
							<td><c:out value="${product.description}" /></td>
							<td><c:out value="${product.price}" /></td>
							<%-- <td><a href="languages/edit/<c:out value="${product.id}"/>">Edit</a>
								<a href="languages/delete/<c:out value="${product.id}"/>">Delete</a></td> --%>
							<td><img alt="" src="${product.img}" height=100 width=100>

							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="box">
				<p>This will be my box</p>

			</div>
		</div>

		<div class="card text-center">
			<div class="card-body">
				<h5 class="card-title">This is footer sections</h5>
				<h5 class="card-title">Will be some information about wbsites</h5>
			</div>
		</div>
	</div>
</body>
</html>