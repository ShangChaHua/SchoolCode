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
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>更新物资</title>
    <style>
        .row{
            padding: 20px;
            font-size: 22px;
            text-align: center;
        }
        .form{
            width: 500px;
            padding: 20px;
            margin: 150px auto;
            border-radius: 10px;
            box-shadow: 1px 1px 2px 2px rgba(0, 0, 0.1, 0.2);
        }
    </style>
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="form">
        <form action="${pageContext.request.contextPath}/good/updateGood" method="post" class="needs-validation">
            <div class="form-group row">
                <div class="col-md-12 column"><h2>更新物资</h2></div>
            </div>
            <input type="hidden" name="id" value="${good.id}"/>
            <div class="form-group row">
                <div class="input-group input-group-lg">
                    <span class="input-group-addon">#</span>
                    <input type="text" class="form-control" name="goodName" value="${good.goodName}" required pattern="^[\u4e00-\u9fa5]+$">
                </div>
            </div>
            <div class="form-group row">
                <div class="input-group input-group-lg">
                    <span class="input-group-addon">i</span>
                    <input type="number" class="form-control" name="quantity" value="${good.quantity}" required>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-12">
                    <input style="width: 200px; border-radius: 20px" type="submit" class="btn btn-primary btn-lg" value="更&nbsp;&nbsp;新"/>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>

<script>
    $(document).ready(function() {
        $('form').validate();
    });
</script>
