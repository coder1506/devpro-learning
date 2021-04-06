<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

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

				<div id="carouselExampleIndicators" class="carousel slide my-4"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleIndicators" data-slide-to="0"
							class="active"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner" role="listbox">
						<div class="carousel-item active">
							<img src="${pageContext.request.contextPath}/images/923f7e9ec895d8f3052fb96e0290be57.png" width="900" height="350" alt="First slide">
						</div>
						<div class="carousel-item">
							<img src="${pageContext.request.contextPath}/images/c0378941acbd6e6a3b0975714da215d8.png" width="900" height="350" alt="Second slide">
						</div>
						<div class="carousel-item">
							<img src="${pageContext.request.contextPath}/images/523d94ffa578dff2e7954c369a59f428.jpg" width="900" height="350" alt="Second slide">
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>

				<div class="row">
				
					<c:forEach var = "product" items = "${products }">
						<div class="col-lg-4 col-md-6 mb-4">
							<div class="card h-100">
								<c:choose>
									<c:when test = "${empty product.productImages }">
										<img class="card-img-top" src="http://placehold.it/700x400" alt="">
									</c:when>
									<c:otherwise>
										<img class="card-img-top" src="${pageContext.request.contextPath}/file/upload/${product.productImages.get(0).path }" alt="">
									</c:otherwise>
								</c:choose>
								<div class="card-body">
									<h4 class="card-title">
										<a href="${pageContext.request.contextPath}/product/details/${product.seo}">${product.title }</a>
									</h4>
									<h5> 
										${product.priceSale }
										<span style="text-decoration: line-through;">${product.price }</span> 
									</h5>
									<p class="card-text">${product.shortDes }</p>
								</div>
								<div class="card-footer">
									<div class="d-flex justify-content-between">
										<div><small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small></div>
										<div><button type="button" class="btn btn-danger" onclick="Shop.chon_san_pham_dua_vao_gio_hang(${product.id}, 1);">Mua hàng</button></div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
					
				</div>
				
				<div class="row d-flex justify-content-center mb-4">
					<div class="mr-2">
						<button type="button" class="btn btn-outline-primary" onclick="Shop.chon_san_pham_dua_vao_gio_hang(${product.id}, 1);">Previous</button>
					</div>
					<div>
						<button type="button" class="btn btn-outline-primary" onclick="Shop.chon_san_pham_dua_vao_gio_hang(${product.id}, 1);">&nbsp;&nbsp;&nbsp;Next&nbsp;&nbsp;&nbsp;</button>
					</div>
				</div>
				<!-- /.row -->

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
