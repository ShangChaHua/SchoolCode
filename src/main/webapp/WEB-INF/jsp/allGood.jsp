<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2023/12/28
  Time: 22:14
  To change this template use File | Settings | File Templates.
--%>
<%--
  Author：XuLu
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>物资管理</title>
    <style>
        .table th, .table td {
            text-align: center;
            vertical-align: middle !important;
        }

        .breadcrumb > li + li:before {
            color: #CCCCCC;
            content: "/ ";
            padding: 0 5px;
        }
    </style>
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse" role="navigation" style="margin-bottom: 0; border-radius: 0">
    <div class="container-fluid">
        <div class="navbar-brand" style="font-size: 24px ">
            <span class="glyphicon glyphicon-gbp"></span>&emsp;物资管理系统
        </div>


        <form class="form-inline" action="${pageContext.request.contextPath}/good/queryGood" method="post">
            <div class="input-group navbar-brand navbar-right">
                <input type="text" name="goodName" class="form-control" placeholder="输入物资名称" required>
                <span class="input-group-btn">
            <button type="submit" class="btn btn-primary">
              <span class="glyphicon glyphicon-search"></span> 查询
            </button>
          </span>
            </div>
        </form>
    </div>
</nav>

<div class="col-md-2 column"
     style="background-color: #333333;height: 100%;padding:0;border-right: 1px solid #e6e6e6;font-size: 16px">
    <ul class="nav nav-stacked">
        <li><a href="${pageContext.request.contextPath}/good/allGood">&nbsp;<span
                class="glyphicon glyphicon-home"></span>&emsp;首页</a></li>

        <li class="dropdown">
            <a data-toggle="collapse" data-parent="#accordion"
               href="#collapseOne">
                &nbsp;<span class="glyphicon glyphicon-shopping-cart"></span>&emsp;物资管理
                <span class="caret"></span>
            </a>
            <ul id="collapseOne" class="panel-collapse collapse nav nav-stacked">
                <li><a href="${pageContext.request.contextPath}/good/toAddGood">&emsp;<span
                        class="glyphicon glyphicon-plus-sign"></span>&emsp;新增物资</a></li>
            </ul>
        </li>

        <li><a href="#">&nbsp;<span class="glyphicon glyphicon-envelope"></span>&emsp;信息管理</a></li>
        <li><a href="#">&nbsp;<span class="glyphicon glyphicon-cog"></span>&emsp;系统设置</a></li>
        <li><a href="${pageContext.request.contextPath}/">&nbsp;<span class="glyphicon glyphicon-log-in"></span>&emsp;退出登录</a>
        </li>
    </ul>
</div>

<div class="col-md-10 column" style="margin: 20px 0">
    <div class="row">
        <div class="col-md-12 column">
            <ul class="breadcrumb" style="font-size: 18px">
                <li><a href="${pageContext.request.contextPath}/good/allGood">首页</a></li>
                <li class="active"><a href="${pageContext.request.contextPath}/good/allGood">物资管理</a></li>
                <li></li>
            </ul>
            </a>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th class="col-md-3 column">物资id</th>
                    <th class="col-md-3 column">物资名称</th>
                    <th class="col-md-3 column">物资数量</th>
                    <th class="col-md-3 column">操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="good" items="${requestScope.get('goodList')}">
                    <tr>
                        <td>${good.id}</td>
                        <td>${good.goodName}</td>
                        <td>${good.quantity}</td>
                        <td>
                            <a class="btn btn-warning"
                               href="${pageContext.request.contextPath}/good/toUpdateGood?id=${good.getId()}">
                                <span class="glyphicon glyphicon-edit"></span> 更改
                            </a>&emsp;
                            <a class="btn btn-danger"
                               href="${pageContext.request.contextPath}/good/delGood/?id=${good.getId()}">
                                <span class="glyphicon glyphicon-trash"></span> 删除
                            </a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

</div>
</body>
</html>

