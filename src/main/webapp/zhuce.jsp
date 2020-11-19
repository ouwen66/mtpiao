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

<script type="text/javascript">
  function checkform(){
		var bool = true;
		if(!checkUsername() || !checkPwd() || !checkRePwd() || !checkBox()){
				bool = false;
			}
		return bool;
	}

	function checkUsername(){
			var bool = true;
			var value = $('#username').val();
			if(!value){
				alert('用户名不能为空！');
				bool = false;
			}else if(value.length < 3 || value.length > 20){
				alert('用户名长度必须在3 ~ 20之间！');
				bool = false;
			}
			return bool;
		}
	
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

	function checkBox(){
		var bool = true;
		if($("#checkbox").prop("checked") == false){
			alert('请勾选阅读并同意以下服务条款！');
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
  </script>
</head>
<body>
<%
	String registInfo = (String) request.getAttribute("registInfo");
	if(registInfo != null){
	if (registInfo.equals("注册成功，点击登录！")) {
	%>
	<script type="text/javascript">
		alert("<%=registInfo%>");
		window.location = '/denglu.jsp'; 
	</script>
	<%
		}else{
	%>
	<script type="text/javascript">
		alert("<%=registInfo%>");
		window.location = '/zhuce.jsp'; 
	</script>
	<%
		}
	}
	%>
	<jsp:include page="/header.jsp"></jsp:include>
	<div id="Regis_mainbox">
		<p class="title">
			<img src="images/zc_title.gif" width="167" height="25"
				style="margin-top: 14px; margin-left: 13px;" />
		</p>
		<div class="left">
			<form id="regisform" name="form2" method="post" action="regist" style="width:300px;margin: auto;">
				<div class="cont">
					<span style="color: red"> ${registErrorInfo}</span>
					<p>
						&nbsp;用&nbsp;户&nbsp;名：<input type="text" name="username" id="username"
							class="input_sty" />
						<!-- <span><img src="images/icon_x.gif" width="12" height="12" /> 邮箱不能为空</span> -->
					</p>
					<p>
						设置密码：<input type="password" name="pwd" id="pwd" class="input_sty" />
					</p>
					<p>
						确认密码：<input type="password" name="repwd" id="repwd"
							class="input_sty" />
					</p>
					<p style="position: relative;">
						&nbsp;验&nbsp;证&nbsp;码：<input type="text" name="code" id="code"
							class="input_sty2" /> <img onclick="javascript:getvCode()"
							id="verifyimg" style="position: absolute; top: 0px; left: 170px;" />
					</p>
					<p class="zc_but">
						<input type="submit" name="button2" id="button2" value="注 册"
							onclick="return checkform()" />
					</p>
					<div class="tk">
						<input type="checkbox" name="checkbox" id="checkbox" />
						我已经阅读并同意以下服务条款
					</div>
				</div>
			</form>
		</div>

		<div class="right">
			<div class="cont">
				<h3>梦田会员服务条款</h3>
				本服务协议内容包括协议正文及所有永乐票务已经发布的或将来可能发布的各类规则。<br />
				各类规则在网站发布后即生效，并成为本协议不可分割的一部分，与协议正文具有同等法律效力。<br />
				本站的各项电子服务的所有权及知识产权归永乐票务所有。本站提供的服务将完全按照永乐票务发布的服务条款和操作规则严格执行。<br />
				用户在使用永乐票务提供的各项服务的同时，应承诺接受并遵守各项相关规则的规定。<br />
				永乐票务有权根据需要不定时地制定、修改本协议或各类规则，如本协议或各项规则有任何变更、增补，永乐票务将在网站上刊载公告通知用户。<br />
				如用户不同意协议及各类规则变更，则须停止使用永乐票务提供的“服务”。如用户登录或继续使用“服务”的，将视为用户已接受经修订或增补的协议及各类规则。除本站另行明确声明外，任何使“服务”范围扩大或功能增强的新内容均受本协议约束。<br />
				在用户确认本服务协议后，用户和永乐票务将会建立合同关系并受本服务协议的约束。请用户务必在注册之前认真阅读全部服务协议内容，如有任何疑问，可向永乐票务咨询。<br />
				1、无论用户事实上是否在注册之前认真阅读了本服务协议，只要用户勾选“我已阅读协议，并同意”并点击注册按钮按照永乐票务注册程序成功注册为用户，用户的行为即视为已同意并签署了本服务协议。<br />
				2、在下订单的同时，用户也同时承认了其拥有购买这些产品的权利能力和行为能力，并且将对用户在订单中提供的所有信息的真实性负责。<br />
				<br /> 二、服务简介<br /> 1、本站运用自己的操作系统通过国际互联网络为用户提供网络服务，用户须承担下列义务：<br />
				1.1自行配备上网所需设备，包括电脑、调制解调器或其它必备上网装置。<br /> 1.2
				自行负担个人上网所支付的与此服务有关的电话费用、网络费用。<br /> 2、为便于向用户及时提供各项服务，用户需保证：<br />
				2.1提供详尽、准确、真实的个人资料。<br /> 2.2不断更新注册资料，符合及时、详尽、准确、真实的要求。<br />
				3、信息的披露<br /> 永乐票务网站对用户所提供的真实姓名、地址、电子邮箱、手机号码和笔名予以保密，但下列情形除外：<br />
				3.1用户书面授权披露个人信息资料的。<br />
				3.2根据法律的有关规定，或者行政、司法机关的要求，向第三方或者行政、司法机关披露的。<br />
				3.3因用户有违反中国法律或网站政策的情形，需要向第三方披露的。<br />
				3.4为向用户提供其所要求的产品和服务，而必须将用户的个人信息告知第三方的。<br />
				3.5其他本站根据法律或者网站政策，认为应当披露的。<br /> 4、服务内容<br /> 永乐票务网根据实际情况提供下列服务：<br />
				4.1提供演出门票、体育赛事门票、预订、在线选座、短信/邮件通知等。<br /> 4.2在线客服、演出资讯、问答评论等。<br />
				5、服务的变更、中断和终止：<br /> 永乐票务保留变更、中断或终止部分网络服务的权利。<br />
				5.1永乐票务保留根据实际情况随时调整网站平台提供的服务种类、形式的权利。永乐票务不承担因业务调整给用户造成的损失。<br />
				5.2用户同意，永乐票务可自行全权决定以任何理由(包括但不限于永乐票务认为用户已违反本协议的字面意义和精神，或以不符合本协议的字面意义和精神的方式行事，)终止用户的“服务”密码
			</div>
		</div>
	</div>
	<div class="changguan_focus"></div>
	<jsp:include page="/footer.jsp"></jsp:include>
	<script type="text/javascript">
		getvCode();
		/**
		 * 获取验证码
		 * 将验证码写到login.html页面的id = verifyimg 的地方
		 */
		function getvCode() {
			//document.getElementById("verifyimg").src = timestamp("http://127.0.0.1:8888/verifyCode");
			document.getElementById("verifyimg").src = timestamp("verifyCode");
		}
		//为url添加时间戳
		function timestamp(url) {
			var getTimestamp = new Date().getTime();
			if (url.indexOf("?") > -1) {
				url = url + "&timestamp=" + getTimestamp
			} else {
				url = url + "?timestamp=" + getTimestamp
			}
			return url;
		};
	</script>
</body>
</html>
