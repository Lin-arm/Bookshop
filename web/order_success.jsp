<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<title>支付成功</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
	<link type="text/css" rel="stylesheet" href="css/style.css">
	<link rel="shortcut icon" href="https://pic1.imgdb.cn/item/635d4e7f16f2c2beb1394e9a.png">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="layer/layer.js"></script>
	<script type="text/javascript" src="js/cart.js"></script>
</head>
<body>

	<!--header-->
	<jsp:include page="header.jsp"/>
	<!--//header-->

	<!--cart-items-->
	<div class="cart-items">
		<div class="container">

			<c:if test="${!empty msg }">
				<div class="alert alert-success">${msg }</div>
			</c:if>

			<p><a class="btn btn-success" href="${pageContext.request.contextPath }/order_list">查看我的订单</a></p>
		</div>
	</div>
	<!--//cart-items-->	
	

	<!--footer-->
	<jsp:include page="footer.jsp"/>
	<!--//footer-->


</body>
</html>