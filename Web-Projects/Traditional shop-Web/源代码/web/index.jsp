<%--
  Created by IntelliJ IDEA.
  User: 19767
  Date: 2018/11/19
  Time: 15:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>商品列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link type="text/css" rel="stylesheet" href="css/bootstrap.css">
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="layer/layer.js"></script>
    <script type="text/javascript" src="js/cart.js"></script>
    <style>
        .header{
            background-color: #a94442;
        }
        .banner{
            background-color:  #dddbd6;
        }
        .subscribe{
            font-size: 20px;
            color: #2f2f2f;
        }
        .col-md-4 {
            width: 24.33%;

            /*border-radius: 40px;*/
        }
        @media (min-width: 992px) {
            .container {
                width: 1200px;
            }
        }
        .alert-danger{
            width: 1200px;
        }
        .gallery-grids{
            width: 1200px;
        }
        /*商品背景*/
        .gallery{
            background-color: #dddbd6;
        }
        .footer{
            background-color: #dddbd6;
        }
        /*商品出现框*/
        .gallery-grid.glry-two .gallery-info{
            left: 4.7%;
            width: 90%;
            height: 15%;
            bottom: 19%;
            border-radius: 0 0 35px 35px;
        }

/*推荐条颜色*/
        .alert-danger {
            color: #000000;
            background-color: #f1b68f;
            border-color: #ebccd1;
        }
      /*  轮播图里的立即购买*/
        .banner a{
            border-radius: 50%;
        }
        .gallery-grid img{
            border-radius: 20%
        }
        /*轮播图*/
        #banner1 {
            margin-top: -100px;
            margin-left: -60px;
            width: 1300px;
            height: 650px;
            border: 0px solid red;
            position: relative;
            clear: both;
        }

        #banner1 img {
            width: 1300px;
            height: 650px;
        }

        #banner1 a {
            color: yellow;
            font-weight: bold;
            text-decoration: none;
            width: 30px;
            height: 60px;
            line-height: 60px;
            display: block;
            text-align: center;
            position: absolute;
            top: 50%;
            margin-top: -15px;
            background-color: rgba(30, 144, 255, 0.8);
        }

        #button {
            width: 80px;
            position: absolute;
            left: 50%;
            margin-left: -40px;
            bottom: 50px;
        }

        #button li {
            list-style-position: inside;
            list-style-type: none;
            width: 10px;
            height: 10px;
            background-color: white;
            float: left;
            margin: 3px;
            border-radius: 5px;
        }

        #button li.select {
            background-color: yellow;
        }
        .subscribe2 {
            background: url(../picture/5.jpg) no-repeat 0px 0px fixed;
            background-size: 100% 100%;
        }
        .subscribe {
            background: url(../picture/4.jpg) no-repeat 0px 0px fixed;
            background-size: 100% 100%;
        }
    </style>
</head>
<body>
<!--header-->
<jsp:include page="/header.jsp">
    <jsp:param name="flag" value="1"></jsp:param>
</jsp:include>
<!--banner-->

<div class="banner">
    <div class="container">
        <!--轮播图-->
        <div id="banner1">
            <img src="../picture/1.jpg" alt="">
            <img src="../picture/2.jpg" alt="" style="display:none">
            <img src="../picture/3.jpg" alt="" style="display:none">
            <img src="../picture/4.jpg" alt="" style="display:none">
            <img src="../picture/6.jpg" alt="" style="display:none">
            <!-- 小圆点 -->
            <ul id="button">
                <li class="select"></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
        </div>
        <br>
        <script>
            let imgs = document.getElementById('banner1').getElementsByTagName('img');
            let but = document.getElementById('button').getElementsByTagName('li');
            let now = 0;
            function auto() {
                imgs[now].style.display = "block";
                but[now].className = "select";
                for (let j = 0; j < imgs.length; j++) { if (j != now) { imgs[j].style.display = "none"; but[j].className = "none"; } }
                now++; if (now == imgs.length) now = 0;
            }
            let timer1 = setInterval(auto, 1500);
        </script>
    </div>
</div>

<!--//banner-->

<div class="subscribe2"></div>

<!--gallery-->
<div class="gallery">
    <div class="container">
        <div class="alert alert-danger">文创推荐</div>
        <div class="gallery-grids">
            <c:forEach items="${hotList}" var="g">
                <div class="col-md-4 gallery-grid glry-two">
                    <a href="/goods_detail?id=${g.id}">
                        <img src="${g.cover}" class="img-responsive" alt="${g.name}" width="350" height="350"/>
                    </a>
                    <div class="gallery-info galrr-info-two">
                        <p>
                            <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                            <a href="/goods_detail?id=${g.id}">查看详情</a>
                        </p>
                        <a class="shop" href="javascript:;" onclick="buy(${g.id})">立刻购买</a>
                        <div class="clearfix"></div>
                    </div>
                    <div class="galy-info">
                        <p>${g.typeName}->${g.name}</p>
                        <div class="galry">
                            <div class="prices">
                                <h5 class="item_price">¥ ${g.price}</h5>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </c:forEach>


        </div>

<%--        <div class="clearfix"></div>--%>
<%--        <div class="alert alert-info">服饰</div>--%>
<%--        <div class="gallery-grids">--%>
<%--            <c:forEach items="${newList}" var="g">--%>
<%--                <div class="col-md-3 gallery-grid ">--%>
<%--                    <a href="/goods_detail?id=${g.id}">--%>
<%--                        <img src="${g.cover}" class="img-responsive" alt="${g.name}"/>--%>
<%--                    </a>--%>
<%--                    <div class="gallery-info">--%>
<%--                        <p>--%>
<%--                            <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>--%>
<%--                            <a href="/goods_detail?id=${g.id}">查看详情</a>--%>
<%--                        </p>--%>
<%--                        <a class="shop" href="javascript:;" onclick="buy(${g.id})">立刻购买</a>--%>
<%--                        <div class="clearfix"></div>--%>
<%--                    </div>--%>
<%--                    <div class="galy-info">--%>
<%--                        <p>${g.typeName} > ${g.name}</p>--%>
<%--                        <div class="galry">--%>
<%--                            <div class="prices">--%>
<%--                                <h5 class="item_price">¥ ${g.price}</h5>--%>
<%--                            </div>--%>
<%--                            <div class="clearfix"></div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </c:forEach>--%>


<%--        </div>--%>
    </div>
</div>
<!--//gallery-->

<!--subscribe-->
<div class="subscribe">
    中国传统服饰网
</div>
<!--//subscribe-->


<!--footer-->
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>