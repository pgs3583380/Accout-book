<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<meta charset="utf-8">
<head>
    <script type="text/javascript" src="/js/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="/js/common.js"></script>
    <script type="text/javascript" src="/js/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/js/bootstrap/css/bootstrap.min.css"/>
    <style type="text/css">
        .form-control {
            width: 76%;
        }

        label {
            width: 20%;
            float: left;
            line-height: 34px;
            color: white;
        }

        .input {
            float: left;
            margin-left: 4%;
            background: none;
            color: white;
            border: 1px solid #fff

        }

        .input:focus {
            border: 1px solid white;
            box-shadow: 0 0 6px white;
        }

        .clear {
            clear: both;
        }

        .form-back {
            width: 80%;
            margin: 0 auto;
        }

        body {
            background-image: url("/img/index5.jpg");
            background-size: 100%;
            background-position: top center;
            background-repeat: no-repeat;

        }

        button.btn {
            padding: 6px 30px;
            margin-left: 4%;
        }

        .formcnt {
            padding: 50px 0px;
            width: 500px;
            margin-top: 15%;
            border-radius: 10px;
            background-color: rgba(255, 255, 255, 0.1);
            box-shadow: 0px 0px 20px rgba(255, 255, 255, 0.3);
            border: 2px solid rgb(161, 194, 61);
            --background: url(../../../img/index5.jpg);
            background-position: top center;

        }
    </style>
    <script type="text/javascript">
        function check() {
            var username = $("#username").val();
            var password = $("#password").val();
            var repassword = $("#repassword").val();
            if (isEmpty(username) || isEmpty(password) || isEmpty(repassword)) {
                alert("用户名或者密码不能为空");
                return false;
            }
            if (password != repassword) {
                alert("两次密码输入不一致");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
<div class="formcnt center-block">
    <form role="form" action="/toregister" method="post" onsubmit="return check()" id="re">
        <div class="form-back">
            <div class="form-group">
                <label for="username">用户名</label>
                <input type="text" class="form-control input" id="username" name="username" placeholder="用户名">
                <div class="clear"></div>
            </div>
            <div class="form-group">
                <label for="password">新密码</label>
                <input type="password" class="form-control input" id="password" name="password" placeholder="新密码">
                <div class="clear"></div>
            </div>
            <div class="form-group">
                <label for="repassword">再输入一次</label>
                <input type="password" class="form-control input" id="repassword" placeholder="再输入一次新密码">
                <div class="clear"></div>
            </div>
            <div>
                <label><%=(String) session.getAttribute("msg") == null ? "" : (String) session.getAttribute("msg")%></label>
                <button type="submit" class="btn btn-warning">注册</button>
                <button type="button" class="btn btn-warning" onclick="location.href='/'">登录</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>