<%-- JSP Page Directive --%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bookness Online BookStore</title>
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
	<div class="row row-col-1 row-cols-md-3 m-auto my-4">
      <div class="m-auto col-md-3" id="cards">
        <div class="card h-100">
          <img src="https://miro.medium.com/max/1800/1*5eV1xmJs2-sJ4DdejfdnQA.png" class="card-img-top" alt="..." />
          <div class="card-body">
            <h5 class="card-title">Javascript</h5>
            <p class="card-text">
              This Is A Book For Javascript. Beginner Friendly all Things need foe beginners there in pdf book mentioned
              please Download and gain knowledge about javascript
            </p>
            <a href="https://drive.google.com/file/d/1YOuhfAak-Z3Ra_NBX9_AMhFShuQsMMpI/view?usp=sharing" download
              target="_blank" class="btn btn-info" data-toggle="tooltip" data-bs-placement="right"
              title="Download Book">Download Book</a>
          </div>
        </div>
      </div>
      <div class="m-auto col-md-3">
        <div class="card h-100">
          <img src="https://i.pinimg.com/originals/1f/ec/3e/1fec3ee0665075852c4665a01259682d.png" class="card-img-top"
            alt="..." />
          <div class="card-body">
            <h5 class="card-title">C Programming</h5>
            <p class="card-text">Advance C Programming Course From Pdf File Please Download This File From Here and You
              Have From Zero To Hero In C Programming</p>
            <a href="https://drive.google.com/file/d/1_NA-zRm6BXcI8Q45UJmQ0o1NGBQkFQF8/view?usp=sharing" download
              target="_blank" class="btn btn-info" data-toggle="tooltip" data-bs-placement="right"
              title="Download Book">Download Book</a>
          </div>
        </div>
      </div>
      <div class="col-md-3 m-auto">
        <div class="card h-100">
          <img src="https://www.vtc.com/files/images/courses/33797.jpeg" class="card-img-top" alt="..." />
          <div class="card-body">
            <h5 class="card-title">C++ Course</h5>
            <p class="card-text">
              Advance C++ Course in Simple English Labguage Please Download A Pdf From Here and Gain Your Knowlwdge in C++
            </p>
            <a href="https://drive.google.com/file/d/11W13yROf4_qr7N0P9HbBeB-SKTdeQs6W/view?usp=sharing" download
              target="_blank" class="btn btn-info" data-toggle="tooltip" data-bs-placement="right"
              title="Download Book">Download Book</a>

          </div>
        </div>
      </div>
      </div>
        </div>
        <div class="row row-col-1 row-cols-md-3 m-auto my-4 mb-8">
          <div class="m-auto col-md-3">
            <div class="card h-100">
              <img src="https://miro.medium.com/max/840/1*RJMxLdTHqVBSijKmOO5MAg.jpeg" class="card-img-top" alt="..." />
              <div class="card-body">
                <h5 class="card-title">Python Programming</h5>
                <p class="card-text">
                  Python Programming Course From Basic To Advance Level Please Download a Pdf File and Make You To A
                  Professional Python Developer Or Freelancer.
                </p>
                <a href="https://drive.google.com/file/d/1BQsKJ7yCo93vCW9SoJibFOUGPYivdgQ_/view?usp=sharing" download
                  target="_blank" class="btn btn-info" data-toggle="tooltip" data-bs-placement="right"
                  title="Download Book">Download Book</a>

              </div>
            </div>
          </div>
          <div class="m-auto col-md-3">
            <div class="card h-100">
              <img src="https://d1jnx9ba8s6j9r.cloudfront.net/imgver.1551437392/img/co_img_193_1504782213.png"
                class="card-img-top" alt="..." />
              <div class="card-body">
                <h5 class="card-title">Java Programming</h5>
                <p class="card-text">Java Programming Language From Basic To Advance Level. Learn Java Programming With Object
                  Oriented Programming(OOP) From This Pdf Book.</p>
                <a href="https://drive.google.com/file/d/1I_D-UmWHdXkNKNODdlvfNxtzHyMkA8M8/view?usp=sharing" download
                  target="_blank" class="btn btn-info" data-toggle="tooltip" data-bs-placement="right"
                  title="Download Book">Download Book</a>

              </div>
            </div>
          </div>
          <div class="col-md-3 m-auto">
            <div class="card h-100">
              <img src="https://www.surat-training-course.com/ampimage/fluttercourseinsurat.webp" class="card-img-top"
                alt="..." />
              <div class="card-body">
                <h5 class="card-title">Flutter(DART)</h5>
                <p class="card-text">
                  Learn Flutter From Basic To Advance Level. you can build android, desktop and ios application using flutter.
                </p>
                <a href="https://drive.google.com/file/d/1wY9Ky8cHO1D5WCnCr0ppFSyL2RiHYP0K/view?usp=sharing" download
                  target="_blank" class="btn btn-info" data-toggle="tooltip" data-bs-placement="right"
                  title="Download Book">Download Book</a>

              </div>
            </div>
          </div>

</body>
</html>
