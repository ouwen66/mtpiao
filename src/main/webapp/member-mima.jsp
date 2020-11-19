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
<link rel="stylesheet" type="text/css"
	href="css/jquery.fancybox-1.3.4.css" media="screen" />
<script type="text/javascript" src="js/jquery.ad-gallery.js"></script>
<script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
<script src="js/foucsbox.js" type="text/javascript"></script>
<script type="text/javascript" src="js/bigpicroll.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
<script type="text/javascript">
		function checkPwd(){
				var bool = true;
				var value = $('#pwd').val();
				if(!value){
					alert('密码不能为空！');
					bool = false;
				}else if(value.length < 3 || value.length > 20){
					alert('密码用户名长度必须在3 ~ 20之间！');
					bool = false;
				}
				return bool;
			}

			function checkRePwd(){
				var bool = true;
				var value1 = $('#pwd').val();
				var value = $('#repwd').val();
				if(!value){
					alert('确认密码不能为空！');
					bool = false;
				}else if(value.length < 3 || value.length > 20){
					alert('确认密码用户名长度必须在3 ~ 20之间！');
					bool = false;
				}else if(value1 != value){
					alert('两次密码输入不一致！')
					bool = false;		
				}
				return bool;
			}

		 function check(){
				var bool = true;
				if(!checkPwd() || !checkRePwd()){
						bool = false;
					}
				return bool;
			}
		</script>
</head>
<body onload="clear();">
<%
	String updateInfo = (String) request.getAttribute("updateInfo");
	if(updateInfo != null){
	%>
	<script type="text/javascript">
		alert("<%=updateInfo%>");
		window.location = '/member-mima.jsp'; 
	</script>
	<%
		}
	%>
	<jsp:include page="/header.jsp"></jsp:include>
	<div class="inside_member" style="width: 1000px; height: 362px;">
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
		<div class="dingdan member_boxsty" style="position: relative;width:600px;margin: auto;">
			<p class="stitle">
				<strong>修改密码</strong>
			</p>
			<span style="color:red;position: absolute;left:430px;top:60px;">${updateInfo}</span>
			<form id="pwdform" name="form2" method="post" action="/updatePwd?username=<%=session.getAttribute("username")%>">
				<table width="337" height="141" border="0" cellpadding="0"
					cellspacing="0" class="xgmm_table">
					<tr>
						<td width="65">原 密 码：</td>
						<td width="272"><label> <input type="password"
								name="oldpwd" id="oldpwd" class="input-text-2" />
						</label></td>
					</tr>
					<tr>
						<td>新 密 码：</td>
						<td><input type="password" name="pwd" id="pwd"
							class="input-text-2" /></td>
					</tr>
					<tr>
						<td>确认密码：</td>
						<td><input type="password" name="repwd" id="repwd"
							class="input-text-2" /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td><input type="submit" name="button2" id="button2"
							value="保存" class="tj_buts" onclick="return check()" /></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<div class="clear"></div>
	<div class="changguan_focus"></div>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>
