<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script type="text/javascript" src="js/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css"
	href="css/jquery.fancybox-1.3.4.css" media="screen" />
<script type="text/javascript" src="js/jquery.ad-gallery.js"></script>
<script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
<script src="js/foucsbox.js" type="text/javascript"></script>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>

	<div class="inside_cgmain">
		<div class="left_category">
			<form id="form2" name="form2" method="post"
				action="/queryVenueByTitle">
				<div class="cglist_search">
					<p>
						名称 <input type="text" name="title" id="title" value="${title }"
							class="input_sty" /> <label> <input type="submit"
							name="button2" id="button2" value=" " class="sear_but" />
						</label>
					</p>
				</div>
			</form>

			<div class="inside_cglist">

				<c:forEach items="${venueList}" var="venue">
					<dl class="clearfix">
						<dt>
							<a href="/queryVenueById?id=${venue.id}"><img
								src="${venue.imgsrc}" width="185" height="120" /></a>
						</dt>
						<dd>
							<h3 class="yahei">
								<a href="/queryVenueById?id=${venue.id}">${venue.title}</a>
							</h3>
							<div
								style="overflow: hidden; text-overflow: ellipsis; height: 70px;">
								<p id="content">场馆简介：${venue.content}</p>
							</div>
							<p class="ck">
								<a href="/queryVenueById?id=${venue.id}">查看详情&gt;&gt;</a>
							</p>
						</dd>
					</dl>
				</c:forEach>
				<div class="page_list">
					<a href="#">上一页</a><a href="#">1</a><a href="#">2</a><span>3</span><a
						href="#">4</a><a href="#">5</a><a href="#">6</a><a href="#">7</a><a
						href="#">下一页</a>
				</div>


			</div>

		</div>

		<div class="cg_righttj">
			<div class="tj_cg">
				<p class="cg_title">
					<strong>推荐</strong>场馆<span>Recommend</span>
				</p>
				<ul>
					<c:forEach items="${hotVenue}" var="hotVenue">
						<li><a href="/queryVenueById?id=${hotVenue.id}"><img
								src="${hotVenue.imgsrc}" width="185" height="120" /></a>
						<p>
								<a href="/queryVenueById?id=${hotVenue.id}">${hotVenue.title}</a>
							</p></li>
					</c:forEach>
				</ul>
			</div>

			<div class="tj_yc">
				<p class="cg_title">
					<strong>推荐</strong>演出<span>Recommend</span>
				</p>
				<ul>
					<c:forEach items="${hotGoods}" var="hotGoods">
						<li><a href="/queryGoodsById?id=${hotGoods.id}">·${hotGoods.gname}</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>