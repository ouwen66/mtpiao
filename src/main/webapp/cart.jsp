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
<script type=text/javascript src="js/jquery-1.5.1.js"></script>
<script>
	//当商品数量发生变化时触发该方法
	function changeProductNum(count, totalCount, id, bt) {
		bt = parseInt(bt);
		count = parseInt(count);
		totalCount = parseInt(totalCount);
		//如果数量为0，判断是否要删除商品
		if (count == 0) {
			if (confirm("确认删除商品吗?")) {
				count == 0;
			} else {
				return count == 1;
			}
		}
		if (count > totalCount) {
			alert("已达到商品最大购买量");
			count = totalCount;
		}
		location.href = "/changeCart?id=" + id + "&count=" + count + "&bt="
				+ bt;
	}
	//确认是否删除购物车中的商品
	function delCart() {
		var msg = "您确定要删除该商品吗？";
		if (confirm(msg) == true) {
			return true;
		} else {
			return false;
		}
	}

	function checkLogin() {
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
</script>
</head>
<body onload="checkLogin()">
	<jsp:include page="header.jsp"></jsp:include>
	<div class="inside_cart">
		<p class="btitle yahei">
			<strong>购物车</strong><span>Cart</span>
		</p>
		<div class="payment-header">
			<p class="yahei clearfix">
				<span class="this">查看购物车</span><span>填写并核对订单信息</span><span>提交订单</span><span>订单追踪</span>
			</p>
			<div class="step1"></div>
		</div>
		<div class="sp_xx">
			<table width="928" height="84" border="0" cellpadding="0"
				cellspacing="0">
				<tr class="ttitle">
					<td width="307" height="34">商品信息</td>
					<td width="101">单价</td>
					<td width="116">库存</td>
					<td width="141">购买票数</td>
					<td width="132">合计</td>
					<td width="129">操作</td>
				</tr>
				<!-- 遍历购物车中数据 -->
				<c:forEach items="${cart.goodsMap }" var="c">
					<tr>
						<td class="sp">
							<table width="302" height="45" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="82" class="leftimg"><img
										src="${c.value.goods.imgsrc }" width="144" height="189" /></td>
									<td width="220">
										<p>
											<a href="#">${c.value.goods.gname }</a>
										</p>
										<p>地点：${c.value.goods.showaddress }</p>
										<p>时间：${c.value.goods.showtime }</p>
										<p>票价：${c.value.goods.price }</p>
									</td>
								</tr>
							</table>
						</td>
						<td>${c.value.goods.price }</td>
						<td>${c.value.goods.num}</td>
						<td class="shul">
							<!--数量控制--> 
							<input class="bt" type="button" value="-" onclick="changeProductNum('${c.value.quantity-1}','${c.value.goods.num}','${c.key}','0')" />
							<input type="number" id="num" name="num" value="${c.value.quantity }" /> 
							<input class="bt" type="button" value="+" onclick="changeProductNum('${c.value.quantity+1}','${c.value.goods.num}','${c.key}','1')" />
						</td>
						<td>￥${c.value.price }</td>
						<td>
							<!-- 删除商品 --> <a href="/deleteCart?id=${c.value.goods.id }"
							onclick="javascript:return delCart()"> <img
								src="images/icon_x2.gif" width="19" height="19" />
						</a>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>

		<div class="jiesuan_next">
			<!-- 商品总量和商品总价 -->
			共 ${cart.num} 件 商品总价(不含运费)： <strong>${cart.price}</strong>元
			<!-- 结算按钮 -->
			<a href="#"><img src="images/icon_js.gif" width="86" height="32" /></a>
		</div>
	</div>
	<div class="clear"></div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>