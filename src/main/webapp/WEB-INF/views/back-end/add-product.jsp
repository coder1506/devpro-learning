<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- SPRING FORM -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard - SB Admin</title>
        
        <jsp:include page="/WEB-INF/views/back-end/common/css.jsp"></jsp:include>
        
    </head>
    <body class="sb-nav-fixed">
        <jsp:include page="/WEB-INF/views/back-end/common/header.jsp"></jsp:include>
        
        <div id="layoutSidenav">
            
            <jsp:include page="/WEB-INF/views/back-end/common/menu.jsp"></jsp:include>
            
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Dashboard</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Dashboard</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                Thêm mới sản phẩm
                            </div>
                            <div class="card-body">
                            
                            	<!-- Nếu cần phải upload file thì form bắt buộc phải có enctype="multipart/form-data" -->
                            	<form:form action="${pageContext.request.contextPath}/admin/product" method="post" modelAttribute="product" enctype="multipart/form-data">
                            		
                            		<form:hidden path="id"/>
                            		
                            		<div class="form-group">
										<label>Category</label>
										<form:select class="form-control form-control-line" path="category.id"> <!-- product.getCategory().setId() -->
											<form:options items="${categories}" itemValue="id" itemLabel="name"/>
										</form:select>
									</div>
									
									<div class="form-group">
										<label>Title</label>
										<form:input type="text" class="form-control" path="title"/>
										<small id="emailHelp" class="form-text text-muted">
											Tối đa 15 kí tự.
										</small>
									</div>
									
									<div class="form-group">
										<label>Short Description</label>
										<form:input type="text" class="form-control" path="shortDes"/>
										<small id="emailHelp" class="form-text text-muted">
											Sẽ hiển thị tại màn hình danh sách sản phẩm.
										</small>
									</div>
									
									<div class="form-group">
										<label>Giá bán</label>
										<form:input type="text" class="form-control" path="price"/>
										<small id="emailHelp" class="form-text text-muted">
											Đơn vị tính là VNĐ.
										</small>
									</div>
									
									<div class="form-group">
										<label>Giảm giá</label>
										<form:input type="text" class="form-control" path="priceSale"/>
										<small id="emailHelp" class="form-text text-muted">
											Đơn vị tính là VNĐ.
										</small>
									</div>
									
									<div class="form-group">
										<label>Details description</label>
										<form:textarea id="txtDetailDescription" class="form-control" path="shortDetails"/>
									</div>
									
									<div class="form-group">
										<label>Images</label>
										<input type="file" name="product_images" class="form-control" multiple="multiple">
									</div>
						
									<button type="submit" class="btn btn-primary">Lưu trữ</button>
                            	</form:form>
                            	
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2020</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/js/admin/scripts.js"></script>
        <script src="${pageContext.request.contextPath}/summernote/summernote.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/datatables-demo.js"></script>
        <script type="text/javascript">
        	$( document ).ready(function() {
        		$('#txtDetailDescription').summernote();
        	});        
        </script>
    </body>
</html>
