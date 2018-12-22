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
		<div class="card-body">
				<h5 class="card-title">Payment page will be some generic stuff</h5>
				<p class="card-text">This is my payment page </p>
			
			</div>
			<nav class="navbar navbar-expand-lg navbar-light bg-light">

				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item active"><a class="nav-link" href="#">Home
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
		
		<a href="/charge">
		<form action="/charge" method="POST">
			<script src="https://checkout.stripe.com/checkout.js"
				class="stripe-button" data-key="pk_test_WC0u9b51v9dUirq1dHT5R2VP"
				data-amount="<c:set var = "total" value ="${total + cart.get(id) * allitems.get(id).getPrice()}"></c:set>" data-name="Sant.com"
				data-description="Example charge"
				data-image="https://stripe.com/img/documentation/checkout/marketplace.png"
				data-locale="auto" data-zip-code="true">
				
			</script>
			
		</form>
		</a>
		 <hr>
		 <h1>Thanks for shopping with us come back soon</h1>
		
		<div class="card text-center">
			<div class="card-body">
				<h5 class="card-title">This is footer sections</h5>
				<h5 class="card-title">Will be some information about web site</h5>
			</div>
		</div>
	</div>
	</div>

</body>
</html>