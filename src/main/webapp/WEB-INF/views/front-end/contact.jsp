<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- SPRING FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Shop Homepage - Start Bootstrap Template</title>

<jsp:include page="/WEB-INF/views/front-end/common/css.jsp"></jsp:include>

</head>

<body>

	<!-- Navigation -->
	<jsp:include page="/WEB-INF/views/front-end/common/header.jsp"></jsp:include>

	<!-- Page Content -->
	<div class="container">

		<div class="row">

			<div class="col-lg-3">

				<!-- category -->
				<jsp:include page="/WEB-INF/views/front-end/common/category.jsp"></jsp:include>

			</div>
			<!-- /.col-lg-3 -->

			<div class="col-lg-9">

				<!-- cách 1 -->
				<%-- <div class="row">
					<div class="mb-4 contact-form">
						<h1 class="my-4">Contact Form</h1>
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

							<input type="submit" value="Submit">
						</form>
					</div>
				</div> --%>
				
				<!-- cách 2: sử dụng spring-form -->
				<%-- <div class="row">
					<div class="mb-4 contact-form">
						<h1 class="my-4">Contact Form</h1>
						<sf:form action="${pageContext.request.contextPath}/contact" method="post" modelAttribute="contact">
							<label for="fname">First Name</label>
							<sf:input path="firstname" id="fname"/>
									
							<label for="lname">Last Name</label>
							<sf:input path="lastname" id="lname"/>
									
							<input type="submit" value="Submit">
					 	</sf:form>
			 		</div>
			 	</div> --%>
			 	
			 	<!-- cách 3: Sử dụng Ajax sử dụng HTML Form đẻ vẽ giao diện -->
			 	<div class="row">
					<div class="mb-4 contact-form">
						<h1 class="my-4">Contact Form</h1>
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

							<input type="submit" value="Submit">
						</form>
					</div>
				</div>
				

			</div>
			<!-- /.col-lg-9 -->

		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->

	<jsp:include page="/WEB-INF/views/front-end/common/footer.jsp"></jsp:include>

	<jsp:include page="/WEB-INF/views/front-end/common/js.jsp"></jsp:include>


</body>

</html>
