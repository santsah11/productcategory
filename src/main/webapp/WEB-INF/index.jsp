<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/styles.css" />
<style>
/*  body {  */
/*  background-color: linen;  */
/*  }  */
#ft {
	color: black;
	margin-left: 0px;
	background-color: 778899;
}

.card-body {
	background-color: linen;
	background-image: url("img/background.jpg");
}
</style>

<meta charset="ISO-8859-1">
<title>Home page</title>

</head>
<body>
	<div class="container">

		<div class="card text-center">

			<div class="card-body" id="header">
				<div class="container">

					<div class="row">

						<div class="col-8">
							<h1>Welcome Arc Bay</h1>
							<img src="img/sunglass1.jpg" height=100px; width=150px;" >

						</div>
						<div class="col-4">
							<a class="nav-link" href="/cart/products"> <img
								src="img/shopping-bag-icon-41029.png" height=50px width=50px>[<c:out
									value="${count}" />]
							</a>

						</div>
					</div>

				</div>

			</div>
			<!-- Navigation -->

			<nav class="navbar navbar-expand-lg navbar-light bg-light"
				class="nav nav-pills nav-fill">

				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item active"><a class="nav-link" href="">Home
								<span class="sr-only">(current)</span>
						</a></li>

						<li class="nav-item" class="nav-item nav-link"><a
							class="nav-link" href="#">Boots</a>
						<li class="nav-item"><a class="nav-link" href="#">Sunglasses</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">Purses</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#"></a></li>

						<li class="nav-item"><a class="nav-link" href="/about">About</a></li>
						<li class="nav-item"><a class="nav-link" href="/getintouch">Contact</a>
						</li>

						<li class="nav-item">
							<form class="form-inline" action="/products/search" method="post">
								<input class="form-control mr-sm-2" type="search"
									placeholder="Search" aria-label="Search" name = "name">
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

		</div>

		<div id="ft">


			<div class="row">
				<div class="col-sm">

					<div>
						<h5>Locations</h5>
						<ul>
							<li>Brent wood</li>
							<li>Brent wood</li>
							<li>Brent wood</li>
						</ul>


					</div>

				</div>
				<div class="col-sm">

					<div>
						<h5>Delevery Informations</h5>
						<ul>
							<li>Express Delivery</li>
							<li>Regular Deliver</li>
							<li>Free Delivery</li>
						</ul>

					</div>

				</div>
				<div class="col-sm">
					<h5>Return Police</h5>
					<ul>
						<li>14 days Return policy</li>
						<li>30 days Return policy</li>
						<li>60 days Return policy</li>
					</ul>
				</div>


			</div>
		</div>
	</div>


	</div>

	</div>
</body>
</html>