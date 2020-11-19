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
<link rel="stylesheet" type="text/css" href="css/jquery.fancybox-1.3.4.css" media="screen" />
<script type="text/javascript" src="js/jquery.ad-gallery.js"></script>
<script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
<script src="js/foucsbox.js" type="text/javascript"></script>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>	

 <div class="inside_buycent">
    	<p class="your_post"><a href="/queryGoods">首页</a> > 
    	<c:if test="${notice.noticetype ==2 }"><a href="/selectNotice?noticetype=2">公告</a></c:if>
    	<c:if test="${notice.noticetype ==1 }"><a href="/selectNotice?noticetype=1">娱乐资讯</a></c:if>
    	 > ${notice.title }</p>
    </div>
    	
    	<div class="inside_newsmian">
        
            <div class="inside_newslist">
                 
                 <div class="info">
                 	<h1 class="yahei">${notice.title}</h1>
                    <p>发布时间：${notice.newstime}文章来源：梦田票务网</p>
                 </div>
                 
                 <div class="content">
                 	${notice.content}
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
