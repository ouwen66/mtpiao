<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
					<p class="stitle"><strong>订单管理</strong></p>
					<table border="0"  class="dingdan_table">
						<tr class="title">
							<th width="115">所购票信息</th>
							<th width="154">数量</th>
							<th width="154">金额	</th>
							<th width="221">状态</th>
							<th width="128">操作</th>
						</tr>
					</table>
				</div>
			</div>
			<div class="clear"></div>
		<div class="changguan_focus"></div>
		<jsp:include page="/footer.jsp"></jsp:include>
	</body>
</html>
