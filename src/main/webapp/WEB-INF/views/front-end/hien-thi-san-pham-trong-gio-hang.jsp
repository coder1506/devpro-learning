<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- SPRING FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
				<h1 class="my-4">Gửi đơn hàng</h1>
				
				<div class="row mb-4">
					<div class="col">
						<form action="${pageContext.request.contextPath}/luu_don_hang" method="post">
							<div class="form-group">
								<label for="name">Tên khách hàng:</label>
								<input type="text" class="form-control" id="name" name="name">
							</div>
							<div class="form-group">
								<label for="email">Địa chỉ email:</label>
								<input type="email" class="form-control" id="email" name="email">
							</div>
							<div class="form-group">
								<label for="phone">Điện thoại liên hệ:</label>
								<input type="text" class="form-control" id="phone" name="phone">
							</div>
							<div class="form-group">
								<label for="address">Địa chỉ giao hàng:</label>
								<input type="text" class="form-control" id="address" name="address">
							</div>
							
							<button type="submit" class="btn btn-warning">Gửi đơn hàng</button>
							
						</form>
					</div>
				</div>
				
				<div class="row mb-4">
					<div class="col">

						<table class="table table-striped">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">Tên sản phẩm</th>
									<th scope="col">Số lượng</th>
									<th scope="col">Đơn giá</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${GIO_HANG.sanPhamTrongGioHangs }" var="item" varStatus="loop"> 
						    
								    <tr>
										<th scope="row">${loop.index + 1}</th>
										<td>${item.tenSanPham }</td>
										<td>${item.soluong }</td>
										<td>${item.giaban }</td>
									</tr>
								
								</c:forEach>
							</tbody>
						</table>
						
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
