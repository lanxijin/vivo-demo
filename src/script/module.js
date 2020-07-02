/* 展示商品 */
function navGoods(){
	$.ajax({
		url:'http://localhost/vivo-demo/src/php/Mall.php',
		type:'get',
		dataType:'json',
		success(res){
			var len = 5;
			var goodsLen = $('.nav-goods ul').length;
			console.log(goodsLen)
			for(var i=0; i<goodsLen; i++){
				var str = '';
				for(var j=i; j<len+i; j++){
					str += `
					<li><a href="">
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
		}
	});
};

export default {navGoods};