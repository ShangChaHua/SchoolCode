<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2024/6/19
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%--
  Author：XuLu
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册页面</title>
    <style>
        .row {
            padding: 25px;
            font-size: 26px;
            text-align: center;
        }

        .form {
            display: flex;
            width: 1000px;
            /*padding: 20px;*/
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

        <img src="img1.png" class="col-md-6" style="padding: 0;border-radius: 10px 0 0 10px;">

        <form action="${pageContext.request.contextPath}/user/register" method="post" class="needs-validation col-md-6">
            <div class="form-group row">
                <div class="col-md-12 column"><h2>用户注册</h2></div>
            </div>
            <div class="form-group row">
                <div class="input-group input-group-lg">
                    <span class="input-group-addon">#</span>
                    <input type="text" class="form-control" placeholder="请输入用户名" name="uName" required>
                </div>
            </div>
            <div class="form-group row">
                <div class="input-group input-group-lg">
                    <span class="input-group-addon">*</span>
                    <input type="text" class="form-control" placeholder="请输入密码" name="password" required>
                </div>
            </div>
            <div class="form-group row">
                <div class="input-group input-group-lg">
                    <span class="input-group-addon">*</span>
                    <input type="text" class="form-control" placeholder="请再次输入密码" name="Spassword" required>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-12">
                    <input style="width: 200px; border-radius: 20px" type="submit" id="specialButton" class="btn btn-primary btn-lg" value="返&nbsp;&nbsp;回"/>
                    <input style="width: 200px; border-radius: 20px" type="submit" class="btn btn-primary btn-lg" value="注&nbsp;&nbsp;册"/>
                </div>
            </div>
        </form>
    </div>
</div>

</body>
</html>

<script>
    $(document).ready(function () {
        $('form').validate();
    });
</script>
<script>
    document.getElementById('specialButton').addEventListener('click', function (event) {
        event.preventDefault(); // 阻止默认的表单提交行为
        //跳转到登录页面
        window.location.href = 'index.jsp';
    });
</script>