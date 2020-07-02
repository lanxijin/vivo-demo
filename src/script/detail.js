/* 数据传入 */
function detailGoods(){
    var params = window.location.search;
    var rag = /id=(\d+)/;
    var id = params.match(rag)[1];
    
    $.ajax({
        url:'http://localhost/vivo-demo/src/php/detail.php',
        type:'post',
        data:{
            id
        },
        dataType:'json',
        success(res){
            if(res.status == 200){
                var data = res.data;
                $('.base-right h1').text(data.name);
                $('.base-right .price .p1').html('<dfn>￥</dfn>'+data.price);
                $('.base-right .price .p2').html('<dfn>￥</dfn>'+data.delprice);
                $('.settle .price-num').html('<dfn>￥</dfn>'+data.price);

                var arr = data.smallImg.split('====');
                var bigImg = '';
                for(var i=0,len=arr.length; i<len; i++){
                    bigImg += `
                    <li class="big-img">
                        <img src="${arr[i]}">
                    </li> 
                    `;
                }
                $('.base-left .lis').html(bigImg);
                var smImg = '';
                for(var i=0,len=arr.length; i<len; i++){
                    smImg += `
                    <li>
                        <img src="${arr[i]}">
                    </li>
                    `;
                }
                $('.base-left .img-small ul').html(smImg);

            }
        }
    });

    /* 鼠标移入切换大图 */ 
    $('.img-small ul').on('mouseenter','li',function(){
        var index = $(this).index();
        $('.base-left .lis .big-img').eq(index).siblings().css('opacity',0);
        $('.base-left .lis .big-img').eq(index).css('opacity',1);
    });

    /* 商品颜色 */
    $('.goods-color ul li').click(function(){
        var index = $(this).index();
        $(this).addClass('checked');
        $(this).siblings().removeClass('checked');
        $('.base-left .lis .big-img').eq(index).siblings().css('opacity',0);
        $('.base-left .lis .big-img').eq(index).css('opacity',1);
    })

    /* 加减 */
    $(".add").click(function(){
        var n=$(this).prev().html();
        if(n>=5){
            $(".add").css('cursor','not-allowed');
            $(".add").css('color','#ddd');
            $(".reduce").css('cursor','pointer');
            $(".reduce").css('color','#777');
            return;
        }
        var num=parseInt(n)+1;
        if(num==0){ return;}
        $(this).prev().html(num);
    });
    //减的效果
    $(".reduce").click(function(){
        var n=$(this).next().html();
        if(n<=1){
            $(".reduce").css('cursor','not-allowed');
            $(".reduce").css('color','#ddd');
            $(".add").css('cursor','pointer');
            $(".add").css('color','#777');
            return;
        }
        var num=parseInt(n)-1;
        if(num==0){ return}
        $(this).next().html(num);
    });
}
detailGoods();

