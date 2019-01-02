<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<style>
.card-body {
	background-color: linen;
	background-image: url("img/background.jpg");
}
#ft {
	color: black;
	margin-left: 0px;
	background-color: 778899;
}

</style>
<head>

<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Home page</title>
</head>
<body>
	<div class = "container">
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
						<li class="nav-item active"><a class="nav-link" href="/">Home
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

  <section id="about" class="section">
		<div class="container">
			<h4>Who We Are</h4>
			<div class="row">
				<div class="span4 offset1">
					<div>
						<h2>We live with <strong>creativity</strong></h2>
						<p>
							Lorem ipsum dolor sit amet consectetur, adipisicing elit. Facere,
							 dolores vel reiciendis corporis assumenda culpa natus dolorem atque sint provident magnam itaque sequi.
							 Itaque vitae vero dolor, officiis est atque!
						</p>
					</div>
				</div>
				<div class="span6">
					<div class="aligncenter">
						<img src="img/icons/creativity.png" alt="" />
					</div>
				</div>
			</div>
			<div class="row">
				<div class="span2 offset1 flyIn">
					<div class="people">
						<img class="team-thumb img-circle" src="img/team/img-1.jpg" alt="" />
						<h3>Archie Joe</h3>
						<p>
							Company director
						</p>
					</div>
				</div>
				<div class="span2 flyIn">
					<div class="people">
						<img class="team-thumb img-circle" src="img/team/img-2.jpg" alt="" />
						<h3>Sachi Joe</h3>
						<p>
							Product Director
						</p>
					</div>
				</div>
				<div class="span2 flyIn">
					<div class="people">
						<img class="team-thumb img-circle" src="img/team/img-3.jpg" alt="" />
						<h3>Sari Joe</h3>
						<p>
							Marketing  Manager
						</p>
					</div>
				</div>
				<div class="span2 flyIn">
					<div class="people">
						<img class="team-thumb img-circle" src="img/team/img-4.jpg" alt="" />
						<h3>Suman Joe</h3>
						<p>
							Sales Director
						</p>
					</div>
				</div>
				<div class="span2 flyIn">
					<div class="people">
						<img class="team-thumb img-circle" src="img/team/img-5.jpg" alt="" />
						<h3>Rashi R</h3>
						<p>
							Sale Manager
						</p>
					</div>
				</div>
			</div>
		</div>
		<!-- /.container -->
	</section>
			<div id="ft">


			<div class="row">
				<div class="col-sm">

					<div>
						<h5>Locations</h5>
						<ul>
							<li>Brent wood</li>
							<li>Concord</li>
							<li>Pittsburg</li>
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
</body>
</html>