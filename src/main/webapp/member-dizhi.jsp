<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<script type="text/javascript" src="js/bigpicroll.js"></script>
		<script type="text/javascript" src="js/menu.js"></script>
		<script type="text/javascript">
		//确认是否删除地址
		function checkDel() {   
		    var msg = "您确定要删除该地址吗？";   
		    if (confirm(msg)==true){   
		    return true;   
		    }else{   
		    return false;   
		    }   
		}
		</script>
	</head>
	<body>
	<jsp:include page="/header.jsp"></jsp:include>
		<div class="inside_member" style="width:1000px;height:362px;">
			<div class="member_leftnav">
				<h3><strong>会员中心</strong></h3>
				<h4>交易管理</h4>
				<ul>
					<li><a href="/member.jsp">订单管理</a></li>
					<li><a href="#">我的收藏</a></li>
				</ul>
				<h4>账户中心</h4>
				<ul>
					<li><a href="/queryUserById">个人资料</a></li>
					<li><a href="/queryAllAddr">地址管理</a></li>
					<li><a href="/member-mima.jsp">密码修改</a></li>
				</ul>
			</div>
				<div class="dingdan member_boxsty">
					<p class="stitle"><strong>我的地址管理</strong><a href="/member-add-dizhi.jsp" style="float:right;">添加地址</a></p>
					<table border="0"  class="dingdan_table">
						<tr class="title">
							<th width="115">联系人</th>
							<th width="154">联系电话</th>
							<th width="300">地址</th>
							<th width="128">操作</th>
						</tr>
						<c:forEach items="${addressList}" var="address">
							<tr style="height: 30px">
								<td width="115">${address.nickname}</td>
								<td width="154">${address.telephone}</td>
								<td width="300">${address.address}</td>
								<td width="128">
								<!-- 修改地址 -->
								<a href="/toUpdate?id=${address.id}">修改</a>
								<!-- 删除地址 -->
								<a href="/deleteAddress?id=${address.id}" onclick="return checkDel();">删除</a>
								</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
			<div class="clear"></div>
		<div class="changguan_focus"></div>
		<jsp:include page="/footer.jsp"></jsp:include>
	</body>
</html>
