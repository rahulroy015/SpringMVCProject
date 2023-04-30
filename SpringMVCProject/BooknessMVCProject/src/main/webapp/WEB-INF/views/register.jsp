<%-- JSP Page Directive --%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bookness Online BookStore - Register</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<style>
p {
	color: white;
	background-color: black;
	padding: 10px;
}

.heading {
	padding: 80px;
	font-size: 40px;
	background-color: beige;
	color:#58ae3a;
}
</style>

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Bookness</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="index.jsp">Home</a></li>
					<%
					String id = (String) session.getAttribute("email");

					if (id == null) {
					%>
					<li class="nav-item"><a class="nav-link" href="login">Login</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="register">Register</a>
					</li>
					<%}else{ %>
					<li class="nav-item"><a class="nav-link" href="logout">Logout</a>
					</li>
					<%} %>

				</ul>
			</div>
		</div>
	</nav>

	<h1 class='text-center heading'>Bookness The BookStore</h1>

	<div class="container">
		<h2 class="mt-4">Register</h2>
		<form action="register" method="POST">
			<div class="mb-3">
				<label for="name" class="form-label">Name</label>
				<input type="text" class="form-control" id="name" name="name" required>
			</div>
			<div class="mb-3">
				<label for="email" class="form-label">Email address</label>
				<input type="email" class="form-control" id="email" name="email" required>
        			</div>
        			<div class="mb-3">
        				<label for="password" class="form-label">Password</label>
        				<input type="password" class="form-control" id="password" name="password" required>
        			</div>
        			<div class="mb-3">
        				<label for="confirmPassword" class="form-label">Confirm Password</label>
        				<input type="password" class="form-control" id="confirmPassword" name="confirmPassword" required>
        			</div>
        			<button type="submit" class="btn btn-primary">Register</button>
        		</form>
        	</div>
        </body>
        </html>







