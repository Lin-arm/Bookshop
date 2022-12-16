<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE html>
<html>
<head>
	<title>商品列表</title>
	<meta charset="utf-8"/>
	<link rel="stylesheet" href="css/bootstrap.css"/>
	<link rel="stylesheet" href="css/admin.css"/>
	<link rel="shortcut icon" href="https://pic1.imgdb.cn/item/635d4e7f16f2c2beb1394e9a.png">
</head>
<body>
<div class="container-fluid">

	<jsp:include page="/admin/header.jsp"/>

	<div class="text-right"><a class="btn btn-warning" href="${pageContext.request.contextPath }/admin/goods_add.jsp">添加商品</a></div>

	<br>

	<ul role="tablist" class="nav nav-tabs">
		<li <c:if test="${type==0 }">class="active"</c:if> role="presentation"><a href="${pageContext.request.contextPath }/admin/goods_list">全部商品</a></li>
		<li <c:if test="${type==1 }">class="active"</c:if> role="presentation"><a href="${pageContext.request.contextPath }/admin/goods_list?type=1">条幅推荐</a></li>
		<li <c:if test="${type==2 }">class="active"</c:if> role="presentation"><a href="${pageContext.request.contextPath }/admin/goods_list?type=2">热销推荐</a></li>
		<li <c:if test="${type==3 }">class="active"</c:if> role="presentation"><a href="${pageContext.request.contextPath }/admin/goods_list?type=3">新书推荐</a></li>
	</ul>





	<br>

	<table class="table table-bordered table-hover">

		<tr>
			<th width="4%">ID</th>
			<th width="10%">图片</th>
			<th width="10%">名称</th>
			<th width="6%">作者</th>
			<th width="10%">出版社</th>
			<th width="8%">ISBN</th>
			<th width="30%">介绍</th>
			<th width="5%">价格</th>
			<th width="6%">类目</th>
			<th width="20%">操作</th>
		</tr>

		<c:forEach items="${p.list }" var="g">
			<tr>
				<td><p>${g.id }</p></td>
				<td><p><a href="${pageContext.request.contextPath }/goods_detail?id=${g.id}" target="_blank"><img src="${pageContext.request.contextPath }${g.cover}" width="100px" height="100px"></a></p></td>
				<td><p><a href="${pageContext.request.contextPath }/goods_detail?id=${g.id}" target="_blank">${g.name}</a></p></td>
				<td><p>${g.author}</p></td>
				<td><p>${g.press}</p></td>
				<td><p>${g.isbn}</p></td>
				<td style="text-align: left"><p>&nbsp;&nbsp;&nbsp;&nbsp;${g.intro}</p></td>
				<td><p>${g.price}</p></td>
				<td><p>${g.type.name}</p></td>
				<td>
					<p>
						<c:choose>
							<c:when test="${g.isScroll }">
								<a class="btn btn-info" href="${pageContext.request.contextPath }/admin/goods_recommend?id=${g.id }&method=remove&typeTarget=1&pageNumber=${p.pageNumber}&type=${type}">移出条幅</a>
							</c:when>
							<c:otherwise>
								<a class="btn btn-primary" href="${pageContext.request.contextPath }/admin/goods_recommend?id=${g.id }&method=add&typeTarget=1&pageNumber=${p.pageNumber}&type=${type}">加入条幅</a>
							</c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${g.isHot }">
								<a class="btn btn-info" href="${pageContext.request.contextPath }/admin/goods_recommend?id=${g.id }&method=remove&typeTarget=2&pageNumber=${p.pageNumber}&type=${type}">移出热销</a>
							</c:when>
							<c:otherwise>
								<a class="btn btn-primary" href="${pageContext.request.contextPath }/admin/goods_recommend?id=${g.id }&method=add&typeTarget=2&pageNumber=${p.pageNumber}&type=${type}">加入热销</a>
							</c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${g.isNew }">
								<a class="btn btn-info" href="${pageContext.request.contextPath }/admin/goods_recommend?id=${g.id }&method=remove&typeTarget=3&pageNumber=${p.pageNumber}&type=${type}">移出新品</a>
							</c:when>
							<c:otherwise>
								<a class="btn btn-primary" href="${pageContext.request.contextPath }/admin/goods_recommend?id=${g.id }&method=add&typeTarget=3&pageNumber=${p.pageNumber}&type=${type}">加入新品</a>
							</c:otherwise>
						</c:choose>

					</p>
					<a class="btn btn-success" href="${pageContext.request.contextPath }/admin/goods_editshow?id=${g.id }& pageNumber=${p.pageNumber}&type=${type}">修改</a>
					<a class="btn btn-danger" href="${pageContext.request.contextPath }/admin/goods_delete?id=${g.id }&pageNumber=${p.pageNumber}&type=${type}">删除</a>
				</td>
			</tr>
		</c:forEach>


	</table>

	<br>
	<jsp:include page="/page.jsp">
		<jsp:param value="${pageContext.request.contextPath }/admin/goods_list" name="url"/>
		<jsp:param value="&type=${type }" name="param"/>
	</jsp:include>
	<br>
</div>
</body>
</html>