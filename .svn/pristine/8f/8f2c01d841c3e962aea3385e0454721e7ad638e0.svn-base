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
<script type="text/javascript">
	function checkBuy() {
		var user = <%=session.getAttribute("user")%>
		if (null == user) {
			var msg = "您尚未登录，是否前往登录！";
			if(confirm(msg)==true){
				window.location.href = "../denglu.jsp";
				return false;
			}else{
				return false;
			}
		}
		return true;
	}	
	
	function changeNum(a) {
		//目前文本框中的数量
		var num = document.getElementById("num").value;
		//将字符串转换成数值
		num = parseInt(num);
		//点击减号
		if (a == 0) {
			num = num - 1;
		}
		if (a == 1) {
			num = num + 1;
		}
		if (num < 1) {
			num = 1;
		}
		//将文本框的值改变为num
		document.getElementById("num").value = num;
	}
</script>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<div class="inside_buycent">
		<p class="your_post">
			<a href="/queryGoods">首页</a> > ${goods.gname}
		</p>
		<div class="buy_maibox">
			<h1 class="yahei">${goods.gname}</h1>
			<div class="left">
				<div class="left_poster">
					<a href="#"><img src="${goods.imgsrc}" width="278" height="384" /></a>

				</div>
				<div class="clear"></div>
			</div>
			<div class="right">
				<div class="piao_js">
					<p>
						<span>售票状态：<strong> <c:if
									test="${goods.salestate==0}">售票中</c:if> <c:if
									test="${goods.salestate==2}">已售罄</c:if>
						</strong></span>
					</p>
					<p>
						<span>演出时间： ${goods.showtime}</span>演出场馆： <a href="#">${goods.showaddress}</a>
					</p>
					<div class="clear"></div>

					<p class="price">
						售票价格：<span>￥${goods.price}</span><a id="example1"
							href="images/zwt.jpg"></a>
					</p>

					<p class="price">
						购买数量： <input type="button" value="-" onclick="changeNum(0)"
							style="width: 30px;" /> <input type="number" id="num" name="num"
							value="1"
							style="width: 60px; font-size: 16px; text-align: center;" /> <input
							type="button" value="+" onclick="changeNum(1)"
							style="width: 30px;" />
					</p>
				</div>
				<div class="buy_buttom">
					<a href="#"><img src="images/icon_buy2.gif" width="158"
						height="50" /></a><a href="/addToCart?id=${goods.id}" onclick="return checkBuy();"><img
						src="images/icon_gwc2.gif" width="158" height="50" /></a>
				</div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>