<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head lang="en">
		<meta charset="UTF-8">
		<title></title>
		
		<jsp:include page="/WEB-INF/views/front-end/common/css.jsp"></jsp:include>
		
		<style type="text/css">
			.error-template {
				padding: 40px 15px;
				text-align: center;
			}
			.error-actions {
				margin-top: 15px;
				margin-bottom: 15px;
			}
			.error-actions .btn {
				margin-right: 10px;
			}
		</style>
		
		<jsp:include page="/WEB-INF/views/front-end/common/js.jsp"></jsp:include>
	</head>
	<body>
		<div class="container">
		    <div class="row">
		        <div class="col-md-4"></div>
		        <div class="col-md-4">
		            <form method="POST" action="/cai-nay-la-thuoc-tinh-action-trong-form-login" class="form-signin">
		            
				        <h2 class="form-heading">Log in</h2>
						
						<c:if test="${not empty param.co_loi_xay_ra}">
							<div class="alert alert-danger" role="alert">
							  	Login attempt was not successful, try again.
							</div>
						</c:if>

						<!-- phải đặt đúng là username để spring-secure lấy được giá trị -->
						<div class="form-group">
							<input type="text" name="username" class="form-control" placeholder="Username">
						</div>
						
						<!-- phải đặt đúng là password để spring-secure lấy được giá trị -->
						<div class="form-group">
							<input type="password" name="password" class="form-control" placeholder="Password">
						</div>

						<button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
						<h4 class="text-center"><a href="${pageContext.request.contextPath}/registration">Create an account</a></h4>
				        
			    	</form>
		        </div>
		        <div class="col-md-4"></div>
		    </div>
		</div>
	</body>
</html>