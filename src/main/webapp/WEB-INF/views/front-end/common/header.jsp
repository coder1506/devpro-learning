<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	<div class="container">
		<a class="navbar-brand" href="#">Start Bootstrap</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active">
					<a class="nav-link" href="${pageContext.request.contextPath}/">Home <span class="sr-only">(current)</span> </a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">About</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Services</a> </li>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/contact">Contact</a></li>
				<li class="nav-item"><a class="nav-link" href="#" data-toggle="modal" data-target="#exampleModal">Contact (AJAX)</a></li>
				<li class="nav-item">
					<a class="nav-link btn" href="${pageContext.request.contextPath}/hien-thi-san-pham-trong-gio-hang">
						<img alt="" src="${pageContext.request.contextPath}/images/1250px-Shopping_cart_icon.svg.png" width="20" height="20">
						<span>(</span><span id="thong_tin_gio_hang"></span>${SL_SP_GIO_HANG }<span>)</span>
					</a>
				</li>
				<li>
					<sec:authorize access="hasAuthority('ADMIN')">
						<li class="nav-item"><a class="nav-link" href="#">Admin Page</a> </li>
					</sec:authorize>
					<sec:authorize access="hasAuthority('GUEST')">
						<li class="nav-item"><a class="nav-link" href="#">Users Page</a> </li>
					</sec:authorize>
				</li>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/cai-nay-la-thuoc-tinh-href-trong-the-a-logout">Logout</a></li>
				
			</ul>
		</div>
	</div>
</nav>

<!-- Contact Form -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Contact</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
			
				<div class="row">
					<div class="mb-4 contact-form">
						<form action="${pageContext.request.contextPath}/contact" method="post">

							<label for="fname">First Name</label>
							<input type="text" id="fname" name="firstname" placeholder="Your name..">
							
							<label for="lname">Last Name</label>
							<input type="text" id="lname" name="lastname" placeholder="Your last name..">
							
							<label for="country">Country</label>
							<select id="country"
								name="country">
								<option value="australia">Australia</option>
								<option value="canada">Canada</option>
								<option value="usa">USA</option>
							</select>
							
							<label for="subject">Subject</label>
							<textarea id="subject" name="subject" placeholder="Write something.." style="height: 200px"></textarea>
						</form>
					</div>
				</div>
			
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary" onclick="Shop.saveContact();">Send contact</button>
			</div>
		</div>
	</div>
</div>