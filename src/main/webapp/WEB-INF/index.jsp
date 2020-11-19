<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>梦田票务</title>
<link href="css/header.css" rel="stylesheet" type="text/css" />
<link href="css/index.css" rel="stylesheet" type="text/css" />
<link href="css/lunbo.css" rel="stylesheet" type="text/css" />
<script type=text/javascript src="js/jquery-1.7.1.min.js"></script>
<script type=text/javascript src="js/ifocus.js"></script>
<script type="text/javascript" src="js/scool.js"></script>
<script type="text/javascript" src="js/imgp.js"></script>
<script type="text/javascript" src="js/jquery.switchable[all].min.js"></script>
<script type="text/javascript" src="js/jquery.jcarousel.pack.js"></script>
</head>
<script type="text/javascript">
	var s =
<%=session.getAttribute("goodsList")%>
	function a() {
		if (s == null) {
			window.location.href = "/queryGoods";
		}
	}
</script>
<body onload="a();">
	<jsp:include page="/header.jsp"></jsp:include>
	<!--图片轮播和公告-->
	<div class="wrap-box" style="height: 330px;">
		<!--图片轮播-->
		<div id="banner">
			<div id="box">
				<img src="images/but_left.png" id="arrow-left"> <img
					src="images/but_right.png" id="arrow-right">
				<!--控制显示在图片上的点-->
				<ul id="multi-circles">
					<li></li>
					<li></li>
				</ul>
				<div id="multi-images">
				<a href="/queryGoodsById?id=1"><img src="./images/banner_1.jpg"> </a>
				<a><img src="./images/banner_2.jpg"></a>
					<div class="clear"></div>
				</div>
			</div>
		</div>
		<!-- 公告 -->
		<div class="index-side index-con-side" id="noticeList">
			<div class="clear ie-side">
				<h3 class="fl">公告</h3>
				<span class="fr"> <a href="/selectNotice?noticetype=2" target="_blank"
					class="font-song">更多>></a>
				</span>
			</div>
			<dl>
				<dt>
					<a href="/selectNoticeById?id=24" title="“岁月”巡演开启倒计时 汪峰与乐队开始排练" target="_blank"> <img
						src="images/anno/1.jpg" alt="“岁月”巡演开启倒计时 汪峰与乐队开始排练" width="210"
						height="120" />
					</a>
				</dt>
				<dd style="margin-top: 5px;">
					<a href="/selectNoticeById?id=24" title="“岁月”巡演开启倒计时 汪峰与乐队开始排练" target="_blank">
						“岁月”巡演开启倒计时 汪峰与乐队开始排练 </a>
				</dd>
			</dl>
			<ul>
				<c:forEach items="${noticeList2 }" var="notice" varStatus="status">
					<c:if test="${status.count >1 }">
						<li><a href="/selectNoticeById?id=${notice.id }" title="${notice.title }" target="_blank">${notice.title }</a></li>
					</c:if>
				</c:forEach>
			</ul>
		</div>
	</div>

	<!-- 热门推荐 -->
	<div class="wrap-box" style="height: 330px;">
		<div class="index_lcbox" style="border: 1px solid #eee;">
			<h2>热门推荐</h2>
			<ul class="right_ul clearfix">
				<c:forEach items="${goodsListhot }" var="goods" varStatus="status">
					<c:if test="${status.count < 5}">
						<li><a href="/queryGoodsById?id=${goods.id }"
							title="${goods.gname }" target="_blank"><img
								src="${goods.imgsrc }" alt="${goods.gname }" width="150px"
								height="200px" /><br> <span>${goods.gname }</span></a></li>
					</c:if>
				</c:forEach>
			</ul>
		</div>

		<!-- 娱乐资讯 -->
		<div class="index-side index-con-side" id="noticeList">
			<div class="clear ie-side">
				<h3 class="fl">娱乐资讯</h3>
				<span class="fr"> <a href="/selectNotice?noticetype=1" target="_blank"
					class="font-song">更多>></a>
				</span>
			</div>
			<dl>
				<dt>
					<a href="/selectNoticeById?id=1" title="“听音乐，赏樱花”——2018芒果樱花节活动今天正式启动" target="_blank"> <img
						src="images/anno/2.jpg" alt="“听音乐，赏樱花”——2018芒果樱花节活动今天正式启动" width="210"
						height="120" />
					</a>
				</dt>
				<dd style="margin-top: 5px;">
					<a href="/selectNoticeById?id=1" title="“听音乐，赏樱花”——2018芒果樱花节活动今天正式启动" target="_blank">
						“听音乐，赏樱花”——2018芒果樱花节活动今天正式启动 </a>
				</dd>
			</dl>
			<ul>
				<c:forEach items="${noticeList1 }" var="notice" varStatus="status">
					<c:if test="${status.count >1 }">
						<li><a href="/selectNoticeById?id=${notice.id }" title="${notice.title }" target="_blank">${notice.title }</a></li>
					</c:if>
				</c:forEach>
			</ul>
		</div>
	</div>

	<!-- 演唱会 -->
	<div class="wrap-box"
		style="width: 1200px; 420 px; border: 1px #eee solid; margin-top: 20px; padding: 0;">
		<div class="recommend-box" style="width: 1160px; height: 100%;">
			<h1>
				<span class="type1">F1 演唱会</span> <a
					href="queryGoodsByGtype?gtype=演唱会" class="link fr tl1">进入演唱会频道</a>
			</h1>
			<div class="m-showbox clearfix">
				<c:forEach items="${goodsList1 }" var="goods" varStatus="status">
					<c:if test="${status.first }">
						<div class="m-showbox-left">
							<div class="bigpic">
								<a href="/queryGoodsById?id=${goods.id }"
									title="${goods.gname }" target="_blank"> <img
									src="${goods.imgsrc }" alt="${goods.gname }" />
									<div class="txt">${goods.gname }</div>
								</a>
							</div>
						</div>
					</c:if>
					<div class="classify-cont">
						<c:if test="${status.count > 1 }">
							<dl>
								<dt>
									<a href="/queryGoodsById?id=${goods.id }"
										title="${goods.gname }" target="_blank"> <img class="lazy"
										src="${goods.imgsrc }" />
									</a>
								</dt>
								<dd class="title">
									<a href="/queryGoodsById?id=${goods.id }"
										title="${goods.gname }" target="_blank"> ${goods.gname } </a>
								</dd>
								<dd class="date">${goods.showtime }</dd>
								<dd class="address">
									<a href="#" title="${goods.showaddress }" target="_blank">
										${goods.showaddress } </a>
								</dd>
								<dd class="price">
									<span class="hsfh">￥</span> <span>${goods.price }</span>起
								</dd>
								<dd></dd>
							</dl>
						</c:if>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>

	<!-- 歌剧话剧 -->
	<div class="wrap-box"
		style="width: 1200px; 420 px; border: 1px #eee solid; margin-top: 20px; padding: 0;">
		<div class="recommend-box" style="width: 1160px; height: 100%;">
			<h1>
				<span class="type2">F2 歌剧话剧</span> <a
					href="queryGoodsByGtype?gtype=歌剧话剧" class="link fr tl2">进入歌剧话剧频道</a>
			</h1>
			<div class="m-showbox clearfix">
				<c:forEach items="${goodsList2 }" var="goods" varStatus="status">
					<c:if test="${status.first }">
						<div class="m-showbox-left">
							<div class="bigpic">
								<a href="/queryGoodsById?id=${goods.id }"
									title="${goods.gname }" target="_blank"> <img
									src="${goods.imgsrc }" alt="${goods.gname }" />
									<div class="txt">${goods.gname }</div>
								</a>
							</div>
						</div>
					</c:if>
					<div class="classify-cont">
						<c:if test="${status.count > 1 }">
							<dl>
								<dt>
									<a href="/queryGoodsById?id=${goods.id }"
										title="${goods.gname }" target="_blank"> <img class="lazy"
										src="${goods.imgsrc }" />
									</a>
								</dt>
								<dd class="title">
									<a href="#" title="${goods.gname }" target="_blank">
										${goods.gname } </a>
								</dd>
								<dd class="date">${goods.showtime }</dd>
								<dd class="address">
									<a href="#" title="${goods.showaddress }" target="_blank">
										${goods.showaddress } </a>
								</dd>
								<dd class="price">
									<span class="hsfh">￥</span> <span>${goods.price }</span>起
								</dd>
								<dd></dd>
							</dl>
						</c:if>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>

	<!-- 音乐会 -->
	<div class="wrap-box"
		style="width: 1200px; 420 px; border: 1px #eee solid; margin-top: 20px; padding: 0;">
		<div class="recommend-box" style="width: 1160px; height: 100%;">
			<h1>
				<span class="type3">F3 音乐会</span> <a
					href="queryGoodsByGtype?gtype=音乐会" class="link fr tl3">进入音乐会频道</a>
			</h1>
			<div class="sub-box clearfix">
				<ul class="m-list">
					<c:forEach items="${goodsList3 }" var="goods">
						<li><a href="/queryGoodsById?id=${goods.id }"
							title="${goods.gname }" target="_blank"> <img
								src="${goods.imgsrc }" width="150" height="200"
								alt="${goods.gname }" /> ${goods.gname }
						</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>


	<!-- 儿童亲子 -->
	<div class="wrap-box"
		style="width: 1200px; 420 px; border: 1px #eee solid; margin-top: 20px; padding: 0;">
		<div class="recommend-box" style="width: 1160px; height: 100%;">
			<h1>
				<span class="type5">F4 儿童亲子</span> <a
					href="queryGoodsByGtype?gtype=儿童亲子" class="link fr tl5">进入儿童亲子频道</a>
			</h1>
			<div class="sub-box clearfix">
				<ul class="m-list">
					<c:forEach items="${goodsList4 }" var="goods">
						<li><a href="/queryGoodsById?id=${goods.id }"
							title="${goods.gname }" target="_blank"> <img
								src="${goods.imgsrc }" width="150" height="200"
								alt="${goods.gname }" /> ${goods.gname }
						</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>


	<!-- 体育赛事 -->
	<div class="wrap-box"
		style="width: 1200px; 420 px; border: 1px #eee solid; margin-top: 20px; padding: 0;">
		<div class="recommend-box" style="width: 1160px; height: 100%;">
			<h1>
				<span class="type4">F5 体育赛事</span> <a
					href="queryGoodsByGtype?gtype=体育赛事" class="link fr tl4">进入体育赛事频道</a>
			</h1>
			<div class="sub-box clearfix">
				<ul class="m-list">
					<c:forEach items="${goodsList5 }" var="goods">
						<li><a href="/queryGoodsById?id=${goods.id }"
							title="${goods.gname }" target="_blank"> <img
								src="${goods.imgsrc }" width="150" height="200"
								alt="${goods.gname }" /> ${goods.gname }
						</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
	<script type="text/javascript" src="js/lunbo.js"></script>
</body>
</html>