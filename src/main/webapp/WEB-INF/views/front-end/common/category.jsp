<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- Search form -->
<div class="md-form my-4">
  <input class="form-control" type="text" placeholder="Search" aria-label="Search">
</div>

<div class="list-group">

	<c:forEach var = "category" items = "${categories }">
		<a href="${pageContext.request.contextPath}/category/${category.seo}" class="list-group-item ${currentCategorySeo==category.seo ? 'active' : '' }">${category.name }</a>
	</c:forEach>

</div>