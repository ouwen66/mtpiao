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
	$(function() {

		var galleries = $('.ad-gallery').adGallery();
		$('#switch-effect').change(function() {
			galleries[0].settings.effect = $(this).val();
			return false;
		});
		$('#toggle-slideshow').click(function() {
			galleries[0].slideshow.toggle();
			return false;
		});
		$('#toggle-description').click(function() {
			if (!galleries[0].settings.description_wrapper) {
				galleries[0].settings.description_wrapper = $('#descriptions');
			} else {
				galleries[0].settings.description_wrapper = false;
			}
			return false;
		});
	});

	function checkform(){
			var bool = true;
			if(!checkUsername() || !checkPwd()){
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
</script>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>>
	<div id="login_mainbox">

		<div class="left"></div>
		<div class="right">
			<div class="cont">
				<form id="loginform" name="loginform" method="post" action="login">
					<span style="color: red;"> ${loginErrorInfo}</span>
					<p>
						账&nbsp;&nbsp;&nbsp;号：<input type="text" name="username" id="username"
							class="input_sty" />
					</p>

					<p>
						密&nbsp;&nbsp;&nbsp;码：<input type="password" name="pwd" id="pwd" class="input_sty" />
					</p>
					<p style="position: relative;">
						验证码：<input type="text" name="code" id="code" class="input_sty2" />
						<!-- 验证码 显示 -->
						<img onclick="javascript:getvCode()" id="verifyimg"
							style="position: absolute;top:0px;right:70px;" />
					</p>
					<!-- <p class="mdl">
						<label> <input type="checkbox" name="checkbox"
							id="checkbox" />
						</label> 十天内免登陆
					</p> -->
					<p class="dl">
						<label> <input type="submit" name="button2" id="button2"
							onclick="return checkform()" value="登 陆" /><!-- <span><a
								href="#">忘记密码?</a></span>
						</label> -->
					</p>
				</form>
				<p class="zc">
					<a href="/zhuce.jsp"><img src="images/icon_zc.gif" width="151"
						height="27" /></a>
				</p>
			</div>

		</div>

		<div class="clear"></div>
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
