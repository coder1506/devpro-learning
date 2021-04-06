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
                                Danh sách sản phẩm
                            </div>
                            ${ messsage }
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>Title</th>
                                                <th>Category</th>
                                                <th>Price</th>
                                                <th>Status</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
	                                        <c:forEach items="${products }" var="product">
	                                            <tr>
	                                                <td>${product.title }</td>
	                                                <td>${product.category.name }</td>
	                                                <td>${product.price }</td>
	                                                <td>
	                                                	<span id="colProductStatus-${product.id }">
		                                                	<c:choose>
		                                                		<c:when test="${product.status}">
		                                                			<span class="badge badge-danger">Đã xoá</span>
		                                                		</c:when>
		                                                		<c:otherwise>
		                                                			<span class="badge badge-primary">Hoạt động</span>
		                                                		</c:otherwise>
		                                                	</c:choose>
	                                                	</span>
	                                                </td>
	                                                <td>
	                                                	<div class="d-flex flex-row bd-highlight">	
															<div class="d-flex flex-row bd-highlight">
																<a href="${pageContext.request.contextPath}/admin/product/${product.id}" class="btn btn-primary btn-sm">Sửa</a>
																&nbsp;
															</div>
															<div class="d-flex flex-row bd-highlight">
																<a href="javascript:void(0)" onclick="Shop.xoa_san_pham_tu_admin(${product.id})" class="btn btn-danger btn-sm">Xoá</a>	
															</div>
														</div>
	                                                </td>
	                                            </tr>
	                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
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
        <jsp:include page="/WEB-INF/views/back-end/common/js.jsp"></jsp:include>
    </body>
</html>
