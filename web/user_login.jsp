<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<title>用户登录</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
	<link type="text/css" rel="stylesheet" href="css/style.css">
	<link rel="shortcut icon" href="https://pic1.imgdb.cn/item/635d4e7f16f2c2beb1394e9a.png">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/simpleCart.min.js"></script>
</head>
<body>

	
	<!--header-->
	<jsp:include page="header.jsp">
		<jsp:param name="flag" value="9"/>
	</jsp:include>
	<!--//header-->

	
	<!--account-->
	<div class="account">
		<div class="container">
			<div class="register">
				<c:if test="${!empty msg }">
					<div class="alert alert-success">${msg }</div>
				</c:if>
				<c:if test="${!empty failMsg }">
					<div class="alert alert-danger">${failMsg }</div>
				</c:if>

				<form action="${pageContext.request.contextPath }/user_login" method="post">
					<div class="register-top-grid">
						<h3>用户登录</h3>
						<div class="input">
							<span>用户名/邮箱 <label style="color:red;">*</label></span>
							<input type="text" name="ue" placeholder="请输入用户名" required="required">
						</div>
						<div class="input">
							<span>密码 <label style="color:red;">*</label></span>
							<input type="password" name="password" placeholder="请输入密码" required="required">
						</div>

						<div class="clearfix"> </div>
					</div>
					<div class="register-but text-center">
						<input type="submit" value="提交">
						<div class="clearfix"> </div>
					</div>
				</form>
				<div class="clearfix"> </div>
			</div>
	    </div>
	</div>
	<!--//account-->

	
	<!--footer-->
	<div style="position: fixed;bottom: 0;width: 100%">
		<jsp:include page="footer.jsp"/>
	</div>
	<!--//footer-->

	
</body>
</html>