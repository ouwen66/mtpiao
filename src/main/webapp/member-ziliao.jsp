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
<script type="text/javascript" src="js/bigpicroll.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
</head>
<body>
	<%
		String updateInfo = (String) request.getAttribute("updateInfo");
	if (updateInfo != null) {
	%>
	<script type="text/javascript">
		alert("<%=updateInfo%>");
		window.location = '/queryUserById';
	</script>
	<%
		}
	%>
	<jsp:include page="/header.jsp"></jsp:include>

	<div class="inside_member" style="width: 1000px; height: 362px;">
		<div class="member_leftnav">
			<h3>
				<strong>会员中心</strong>
			</h3>
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
		<div class="member_rightc">
			<div class="xiugaimima member_boxsty">
				<p class="stitle">
					<strong>个人资料</strong>
				</p>
				<form id="form2" name="form2" method="post" action="/updateUser">
					<table width="337" height="141" border="0" cellpadding="0"
						cellspacing="0" class="ziliao_table">
						<tr>
							<td width="65">姓 名：</td>
							<td width="272"><label> <input type="text"
									name="realname" id="textfield2" value="${userInfo.realname }"
									class="input-text-2" />
							</label></td>
						</tr>
						<tr>
							<td>性 别：</td>
							<td>
								<c:choose>
								<c:when test="${userInfo.sex=='男'}">
									<label class="radio"> 
									<input type="radio" id="sexRadio" value="男" name="sex" checked="checked" /><span class="m">男</span>
									</label> 
									<label class="radio"> <input type="radio" id="sexRadio1" value="女" name="sex" /><span class="f">女</span>
									</label> &nbsp;
								</c:when>
								<c:otherwise>
									<label class="radio"> 
									<input type="radio" id="sexRadio" value="男" name="sex" /><span class="m">男</span>
									</label> 
									<label class="radio"> <input type="radio" id="sexRadio1" value="女" name="sex" checked="checked" /><span class="f">女</span>
									</label> &nbsp;
								</c:otherwise>
							</c:choose>
							</td>
						</tr>
						<tr>
							<td>出生日期：</td>
							<td><input id="cardinp" type="text" class="input-text-2"
								name="birthday" value="${userInfo.birthday }" /></td>
						</tr>
						<tr>
							<td>身份证号：</td>
							<td><input id="cardinp" type="text" class="input-text-2"
								name="cardid" value="${userInfo.cardid }" /></td>
						</tr>
						<tr>
							<td>所在城市：</td>
							<td><input id="cardinp" type="text" class="input-text-2"
								name="city" value="${userInfo.city }" /></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td><input type="submit" name="button2" id="button2"
								value="保存" class="tj_buts" style="margin-left: 0;" /></td>
						</tr>
					</table>
				</form>
			</div>

		</div>

	</div>
	<div class="clear"></div>

	<div class="changguan_focus"></div>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>