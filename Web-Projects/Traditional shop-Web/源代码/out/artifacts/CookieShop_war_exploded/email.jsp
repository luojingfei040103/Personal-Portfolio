<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2025/1/3
  Time: 0:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="@{/regemail}" method="post">
  <input type="text" placeholder="邮箱号" name="email" id="email">
  <input type="button" value="获取验证码" id="hqyzm">
  <br>
  <input type="text" placeholder="验证码" name="yzm"><br>
  <input type="submit" value="登录/注册">
</form>

<script>
  let button=document.querySelector("#hqyzm");
  function countdown() {
    var count = 30; // 倒计时时间（秒）
    var timer = setInterval(function() {
      count--;
      console.log(count)
      button.value = "倒计时(" + count + "秒)"; // 更新按钮文本
      button.enabled='false';
      if (count <= 0) {
        clearInterval(timer); // 停止倒计时
        button.value = "获取验证码"; // 更新按钮文本
        button.enabled='true';
      }
    }, 1000); // 每秒更新一次
  }
  button.addEventListener('click',function(){
    //跳到Servlet
    let email = document.querySelector("#email").value;
    // window.location='/file/getvcode?email='+email;
    var xhr = new XMLHttpRequest();//ajax实现局部刷新
    xhr.open('GET', '/jdbc/getvcode?email='+email, true); // 第三个参数设置为true表示异步处理
    xhr.send();
    alert("验证码已发送");
    countdown();
  })
</script>
</body>
</html>
