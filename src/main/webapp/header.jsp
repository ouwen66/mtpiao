<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="header">
		<div class="w1002" style="overflow: visible; height: 105px;">
			<div class="header_top">
				<span class="left" style="float: left;"> 
					<c:choose>
						<c:when test="${empty user}">
							<a href="/denglu.jsp" class="dl">用户登录</a>|<a href="/zhuce.jsp"
								class="dl">用户注册</a>
						</c:when>
						<c:otherwise>
				梦田票欢迎您进入本网站
				<a href="/member.jsp" class="dl">个人中心</a>|<a href="/cart.jsp"
								class="dl" onclick="">购物车</a>|<a href="/exit" class="dl"
								onclick="">退出登陆</a>
						</c:otherwise>
					</c:choose>
				</span> <a href="#">梦田票导航</a><a href="#">帮助中心</a>
			</div>

			<div class="site_logo floatl">
				<a href="#"><img src="images/site_logo.gif" width="170"
					height="65" /></a>
			</div>
			<div class="header_search floatl">
				<p class="hot">
					热门搜索：<a href="#">周杰伦</a>|<a href="#">刘德华</a>|<a href="#">张惠妹</a>|<a
						href="#">汪峰</a>|<a href="#">张杰</a>
				</p>
				<form id="form1" name="form1" method="post"
					action="/queryGoodsByGname">
					<div>
						<input type="text" name="gname" id="gname" class="input_style" /><input
							type="submit" name="button" id="button" value=" " class="but_tj" />
					</div>
				</form>
			</div>
		</div>

		<div id="site_nav">
			<div>
				<div class="clearfix nav_post">
					<p class="yahei">
						<a href="/queryGoods">首 页</a><a href="queryGoodsByGtype?gtype=演唱会">演唱会</a>
						<a href="queryGoodsByGtype?gtype=歌剧话剧">歌剧话剧</a>
						<a href="queryGoodsByGtype?gtype=音乐会">音乐会</a>
						<a href="queryGoodsByGtype?gtype=体育赛事">体育赛事</a>
						<a href="queryGoodsByGtype?gtype=儿童亲子">儿童亲子</a>
						<a href="/queryAllVenue">演出场馆</a>
					</p>
				</div>

			</div>
		</div>
	</div>
</body>
</html>