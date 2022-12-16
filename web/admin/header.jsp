<%--
  Created by IntelliJ IDEA.
  User: 19767
  Date: 2018/11/30
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="index.jsp">图书商城后台</a>
        </div>
        <div>
            <ul class="nav navbar-nav">
                <li ><a href="${pageContext.request.contextPath }/admin/order_list">订单管理</a></li>
                <li ><a href="${pageContext.request.contextPath }/admin/user_list">客户管理</a></li>
                <li ><a href="${pageContext.request.contextPath }/admin/goods_list">商品管理</a></li>
                <li ><a href="${pageContext.request.contextPath }/admin/type_list">类目管理</a></li>
                <li><a href="${pageContext.request.contextPath }/user_logout">退出</a></li>
            </ul>
        </div>
    </div>
</nav>
