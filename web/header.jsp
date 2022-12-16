<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link type="text/css" rel="stylesheet" href="css/header.css">

<!--header-->
<div class="header">
    <div class="container">
        <nav class="navbar navbar-default" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <h1 class="navbar-brand"><a href="${pageContext.request.contextPath }/index"></a></h1>
            </div>
            <!--navbar-header-->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="${pageContext.request.contextPath }/index" <c:if test="${param.flag==1}">class="active"</c:if>>图书商城</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle <c:if test="${param.flag==2}">active</c:if>" data-toggle="dropdown">分类<b class="caret"></b></a>
                        <ul class="dropdown-menu multi-column columns-2">
                            <li>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <h4>商品分类</h4>
                                        <ul class="multi-column-dropdown">

                                            <li><a class="list" href="${pageContext.request.contextPath }/goods_list">全部系列</a></li>

                                            <c:forEach items="${typeList}" var="t">
                                                <li><a class="list" href="${pageContext.request.contextPath }/goods_list?typeid=${t.id}">${t.name}</a></li>
                                            </c:forEach>


                                        </ul>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li><a href="${pageContext.request.contextPath }/goodsrecommend_list?type=2" <c:if test="${param.flag==3 && t==2}">class="active"</c:if>>热销</a></li>
                    <li><a href="${pageContext.request.contextPath }/goodsrecommend_list?type=3" <c:if test="${param.flag==3 && t==3}">class="active"</c:if>>新品</a></li>

                    <c:choose><%--switch--%>
                        <c:when test="${empty user }"><%--case:--%>
                            <li><a href="${pageContext.request.contextPath }/user_register.jsp" <c:if test="${param.flag==10 }">class="active"</c:if>>注册</a></li>
                            <li><a href="${pageContext.request.contextPath }/user_login.jsp" <c:if test="${param.flag==9 }">class="active"</c:if>>登录</a></li>
                        </c:when>
                        <c:otherwise><%--default:--%>
                        <li><a href="${pageContext.request.contextPath }/order_list" <c:if test="${param.flag==5 }">class="active"</c:if>>我的订单</a></li>
                        <li><a href="${pageContext.request.contextPath }/user_center.jsp" <c:if test="${param.flag==4 }">class="active"</c:if>>个人中心</a></li>
                        <li><a href="${pageContext.request.contextPath }/user_logout" >退出</a></li>
                        </c:otherwise>
                    </c:choose>

                    <c:if test="${!empty user && user.isadmin }">
                        <li><a href="${pageContext.request.contextPath }/admin/index.jsp" target="_blank">后台管理</a></li>
                    </c:if>
                </ul>
                <!--/.navbar-collapse-->
            </div>
            <!--//navbar-header-->
        </nav>
        <div class="header-info">
            <div class="header-right search-box" style="width: 225px">

<%--                <a href="javascript:;"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a>--%>
<%--                <div class="search">--%>
<%--                    <form class="navbar-form" action="${pageContext.request.contextPath }/goods_search">--%>
<%--                        <input type="text" class="form-control" name="keyword">--%>
<%--                        <button type="submit" class="btn btn-default <c:if test="${param.flag==7 }">active</c:if>" aria-label="Left Align">搜索</button>--%>
<%--                    </form>--%>
<%--                </div>--%>

                <form class="d-flex" role="search" action="${pageContext.request.contextPath }/goods_search">
                    <input class="form-control me-2" type="search" name="keyword" placeholder="书名/作者" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">搜索</button>
                </form>

            </div>

            <div class="header-right cart">
                <a href="${pageContext.request.contextPath }/goods_cart.jsp">
                    <span class="glyphicon glyphicon-shopping-cart <c:if test="${param.flag==8 }">active</c:if>" aria-hidden="true"><span class="card_num"><c:choose><c:when test="${empty order}"></c:when><c:otherwise>${order.amount}</c:otherwise></c:choose></span></span>
<%--                    <span class="glyphicon glyphicon-shopping-cart <c:if test="${param.flag==8 }">active</c:if>" aria-hidden="true"><span class="card_num" style="font-size: 14px;color: whitesmoke;background-color: red;border-radius: 33%"><c:choose><c:when test="${empty order}"> </c:when><c:otherwise>${order.amount}</c:otherwise></c:choose></span></span>--%>
                </a>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!--//header-->