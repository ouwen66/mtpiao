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
<script type="text/javascript" src="js/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css"
	href="css/jquery.fancybox-1.3.4.css" media="screen" />
<script type="text/javascript" src="js/jquery.ad-gallery.js"></script>
<script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
<script src="js/foucsbox.js" type="text/javascript"></script>

</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>

 <div class="inside_buycent">
    	<p class="your_post"><a href="/queryGoods">首页</a> > 
    	<c:if test="${noticetype ==2 }">公告</c:if>
    	<c:if test="${noticetype ==1 }">娱乐资讯</c:if>
    	</p>
 </div>
	<div class="inside_newsmian">

		<div class="inside_newslist">
			<c:forEach items="${noticeList}" var="notice">
				<dl>
					<dt>
						<span>${notice.newstime}</span><a
							href="selectNoticeById?id=${notice.id}">${notice.title }</a>
					</dt>
					<dd>
					<div style="overflow: hidden; text-overflow: ellipsis;height: 40px;">
					${notice.content }
					</div>
						<a href="selectNoticeById?id=${notice.id}">[查看更多]</a>
					</dd>
				</dl>
			</c:forEach>
			<div class="page_list">
				<a href="#">上一页</a><a href="#">1</a><a href="#">2</a><span>3</span><a
					href="#">4</a><a href="#">5</a><a href="#">6</a><a href="#">7</a><a
					href="#">下一页</a>
			</div>


		</div>

		<div class="inside_newsright">
			<div class="remen">
				<div class="titles">
					<strong>热门推荐</strong>
				</div>
				 <ul>
				 	<c:forEach items="${hotGoods}" var="hotGoods">
                       <li>
                       <a href="/queryGoodsById?id=${hotGoods.id}"><img src="${hotGoods.imgsrc}" width="171" height="214" /></a>
                       <p><a href="/queryGoodsById?id=${hotGoods.id}">${hotGoods.gname}</a></p><span>${hotGoods.showtime}</span>
                       </li>
                    </c:forEach>
                 </ul>
			</div>
		</div>
		<div class="clear"></div>
	</div>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>
