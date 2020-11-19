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
	</head>
	<body>
<jsp:include page="../header.jsp"></jsp:include>

		<div class="changguan_focus"></div>

		<div class="inside_cgmain">
			<div class="hdwrap">
				<div class="hdflash f_list">
					<div class="flashlist">
						<div class="f_out">
							<img src="${venue.imgsrc}" width="624" height="360" />
						</div>
					</div>
				</div>
			</div>

			<div class="right_cgjs">
				<div class="content">
					<div class="cont">
						<h1 class="yahei">${venue.title}</h1>
						<div class="js">
							${venue.content}
						</div>
						<p>场馆地址 : ${venue.address} </p>
					</div>
				</div>
			</div>
			</div>
			<div class="clear"></div>
	<jsp:include page="../footer.jsp"></jsp:include>
	</body>
</html>