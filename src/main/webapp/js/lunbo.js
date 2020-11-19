var arrowLeft = document.getElementById("arrow-left");
var arrowRight = document.getElementById("arrow-right");
// 获取包含图片的DIV
var multiImages = document.getElementById("multi-images");
// 获取指示器
var circles = document.getElementById("multi-circles").getElementsByTagName(
		"li");
// 获取包含轮播图的DIV
var box = document.getElementById("box");
// 当前索引
var currentIndex = 0;
// 上一张图片
var preIndex = 0;
// 定时器
var timer = null;

arrowLeft.addEventListener("click", preMove);
arrowRight.addEventListener("click", nextMove);
// 获取指示器的索引
for (let i = 0; i < circles.length; i++) {
	// 设置属性
	circles[i].setAttribute("id", i);
	circles[i].addEventListener("mouseenter", overCircle);
}
// 创建定时器
// 第一个参数 方法名
// 第二个参数 时间 每隔2000ms调用一次方法
timer = setInterval(nextMove, 5000);

box.addEventListener("mouseover", function() {
	clearInterval(timer);
	arrowLeft.style.display = "block";
	arrowRight.style.display = "block";
});
box.addEventListener("mouseout", function() {
	timer = setInterval(nextMove, 5000);
	arrowLeft.style.display = "none";
	arrowRight.style.display = "none";
});
changeCircleColor(preIndex, currentIndex);

function overCircle() {
	preIndex = currentIndex;
	currentIndex = parseInt(this.id);
	// multiImages.style.transition="1.5s";
	changeCircleColor(preIndex, currentIndex);
	moveImage();
}

// 改变指示器的颜色
function changeCircleColor(preIndex, currentIndex) {
	circles[preIndex].style.backgroundColor = "rgb(255,255,255)";
	circles[currentIndex].style.backgroundColor = "rgb(255,0,0)";
}

// 切换到上一张图片
function preMove() {
	preIndex = currentIndex;
	if (currentIndex != 0) {
		currentIndex--;
		// multiImages.style.transition="1s";
	} else {
		currentIndex = 1;
		// multiImages.style.transition="0.5s";
	}
	changeCircleColor(preIndex, currentIndex);
	moveImage();
}

// 图片移动的方法
function nextMove() {
	// 默认情况下 当前索引与上一页索引
	preIndex = currentIndex;
	if (currentIndex != 1) {
		currentIndex++;
	} else {
		currentIndex = 0;
	}
	// 改变指示器的颜色
	changeCircleColor(preIndex, currentIndex);
	moveImage();
}

// 移动图片
function moveImage() {
	multiImages.style.left = -currentIndex * 930 + "px";
}
