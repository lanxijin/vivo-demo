/* 展示商品 */
(function(){
	$.ajax({
		url:'http://localhost/vivo-demo/src/php/Mall.php',
		type:'get',
		dataType:'json',
		success(res){
			var len = 5;
			var goodsLen = $('.nav-goods ul').length;
			for(var i=0; i<goodsLen; i++){
				var str = '';
				for(var j=i*len; j<len+i*len; j++){
					str += `
					<li><a href="./detail.html?id=${res[j].id}">
						<div class="goods-img">
							<img src="${res[j].imgpath}" alt="">
						</div>
						<p class="goods-name">${res[j].name}</p>
						<p class="goods-icon">${res[j].xin}</p>
					</a></li>
					`;
				}
				str += `
				<li class="phone-li">
				<div>
					<div>
						<b class="iconfont icon-caidan"></b>
						<span>全部NEX机型</span>
					</div>
					<div>
						<b class="iconfont icon-ai-phone"></b>
						<span>对比NEX机型</span>
					</div>
					</div>
				</li>
				`;
				$('.nav-goods ul').eq(i).children().append(str);
			}

			/* 导航列表展示 */
			ajaxGoods(res,0,6,6,12,'.lis1');
			ajaxGoods(res,8,16,12,20,'.lis2');
			ajaxGoods(res,17,22,22,30,'.lis3');
			ajaxGoods(res,22,26,19,29,'.lis4');
			ajaxGoods(res,1,10,3,13,'.lis5');
			ajaxGoods(res,34,39,30,40,'.lis6');
			ajaxGoods(res,29,37,20,33,'.lis7');

			/* V抢购商品展示 */
			var vStr = '';
			for(var i=5,len=20; i<len; i++){
				vStr += `
				<li>
					<a href="./detail.html?id=${res[i].id}">
						<img src="${res[i].imgpath}">
					</a>
					<div class="prod">
						<p class="name">${res[i].name}</p>
						<p class="desc">${res[i].introduce}</p>
						<p class="price">
							<span><dfn>￥</dfn>${res[i].price}</span>
							<span><dfn>￥</dfn>${res[i].delprice}</span>
						</p>
					</div>
				</li>
				`;
			}
			$('.v-listBody .swiper-wrapper').html(vStr);
		}
	});
})();

/* 封装展示轮播图导航栏数据 */
function ajaxGoods(res,i1,max1,i2,max2,label){
	var str2Top = '';
	for(var i=i1; i<max1; i++){
		str2Top += `
			<li>
				<a href="./detail.html?id=${res[i].id}">${res[i].name}</a>
			</li>
		`;
	}
	var str2Btm = '';
	$(label+' .category-hd').html(str2Top);
	for(var i=i2; i<max2; i++){
		str2Btm += `
		<li>
		<i class="${res[i].iconHot}"></i>
		<a href="./detail.html?id=${res[i].id}">
			<img src="${res[i].imgpath}">
			<span>${res[i].name}</span>
		</a>
		</li>
		`;
	}
	$(label+' .category-bd').html(str2Btm);
}

/* 是否登录 */
function userIsLogin(){
	if(getCookie('username')){
		$('.head-rgh .login').html('<a href="#">个人中心</a><span> | </span><a class="out" href="#">退出</a>');
		$('.out').click(function(){
			removeCookie('username');
			removeCookie('password');
			location.href = './Mall.html';
		});
	}else{
		$('.head-rgh .login').html('<a href="./login.html">登录</a><span> | </span><a href="./reg.html">注册</a>');
	}
}
userIsLogin();

/* 导航栏商品下拉 */
function navMenu(){
	var navMenu = $('.nav-goods');
	var h;
	var index;
	$('.nav ul li').hover(function(){
		index = $(this).index();
		$('.nav-goods ul').eq(index).css('display','block');
		h = navMenu.height();
		navMenu.css({'top':-h+'px'});
		navMenu.stop().animate({
			top:0,
		},400);
	},function(){
		$('.nav-goods ul').eq(index).css('display','none');
		navMenu.stop().animate({
			top:-h+'px',
		},400);
	})
	navMenu.hover(function(){
		$('.nav-goods ul').eq(index).css('display','block');
		navMenu.stop().animate({
			top:0,
		},400);
	},function(){
		$('.nav-goods ul').eq(index).css('display','none');
		navMenu.stop().animate({
			top:-h+'px',
		},400);
	})
}
navMenu();



/* 轮播图 */
(function(){
	var index = 0;
	//下一张要显示的
	var nextIndex = 0;
	//计时器
	var timer;
	//调用函数
	autoPlay();
	function animatePlay(){
		$(".banner a").eq(index).fadeOut(1000);
		$(".banner a").eq(nextIndex).fadeIn(1000);
		$(".banner ul li").eq(nextIndex).addClass("first").siblings().removeClass("first");
	}
	function autoPlay(){
		timer = setInterval(function(){
			nextIndex++;
			if(nextIndex>4){
				nextIndex = 0;
			}
			animatePlay();
			index = nextIndex;
		},2000);
	}
	$(".banner ul li").click(function(){
		clearInterval(timer);
		nextIndex = $(this).index();
		animatePlay();
		index = nextIndex;
		autoPlay();
	});
	$(".banner").hover(function(){
		clearInterval(timer);
	},function(){
		autoPlay();
	});
})();


