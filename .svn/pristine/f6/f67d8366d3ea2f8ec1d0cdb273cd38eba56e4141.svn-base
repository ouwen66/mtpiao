<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<title>梦田票务</title>
		<link href="css/header.css" rel="stylesheet" type="text/css" />
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script type=text/javascript src="js/jquery-1.7.1.min.js"></script>
		<script type=text/javascript src="js/ifocus.js"></script>
		<script type="text/javascript" src="js/scool.js"></script>
		<script type="text/javascript" src="js/imgp.js"></script>
		<script type="text/javascript" src="js/jquery.switchable[all].min.js"></script>
		<script type="text/javascript" src="js/jquery.jcarousel.pack.js"></script>
		<script type="text/javascript" src="js/datepicker.js"></script>
	</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>


		<div class="inside_productlist">
			<div class="your_post"><strong> 共为您检索出 <b>${goodsSize}</b> 个商品</strong><span>· 您现在的位置：</span><a href="/queryGoods">首页</a> > <a href="#">${key}</a></div>
			<div class="clear"></div>
			
			<c:forEach items="${goodsList }" var="goods">
				<div class="list_box">
				<div class="left"><a href="/queryGoodsById?id=${goods.id }"><img src="${goods.imgsrc }" width="134" height="178" /></a></div>
				<div class="right">
					<h3 class="yahei"><a href="/queryGoodsById?id=${goods.id }">${goods.gname }" 
							<c:if test="${goods.salestate==0}"><span style="background:#fdaf34; color:#FFF; font-weight:100; padding:3px 5px;">售票中</span></c:if>
							<c:if test="${goods.salestate==2}"><span style="background:red; color:#FFF; font-weight:100; padding:3px 5px;">已售罄</span></c:if>
					</a></h3>
					<p>演出时间：${goods.showtime}</p>
					<p>演出场馆：${goods.showaddress } </p>
					<p>门票价格：${goods.price } 元</p>
					<p>所属栏目：${goods.gtype }</p>
					<p class="buy"><a href="#"> </a></p>
				</div>
			</div>
			</c:forEach>
			
			
			<div class="page_list">
				<a href="#">上一页</a><a href="#">1</a><a href="#">2</a><span>3</span><a href="#">4</a><a href="#">5</a><a href="#">6</a><a
				 href="#">7</a><a href="#">下一页</a>
			</div>

		</div>

<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>