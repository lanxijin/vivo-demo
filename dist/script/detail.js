"use strict";

/* 数据传入 */
function detailGoods() {
  var params = window.location.search;
  var rag = /id=(\d+)/;
  var id = params.match(rag)[1];
  $.ajax({
    url: 'http://localhost/vivo-demo/src/php/detail.php',
    type: 'post',
    data: {
      id: id
    },
    dataType: 'json',
    success: function success(res) {
      if (res.status == 200) {
        var data = res.data;
        $('.base-right h1').text(data.name);
        $('.base-right .price .p1').html('<dfn>￥</dfn>' + data.price);
        $('.base-right .price .p2').html('<dfn>￥</dfn>' + data.delprice);
        $('.settle .price-num').html('<dfn>￥</dfn>' + data.price);
        var arr = data.smallImg.split('====');
        var bigImg = '';

        for (var i = 0, len = arr.length; i < len; i++) {
          bigImg += "\n                    <li class=\"big-img\">\n                        <img src=\"".concat(arr[i], "\">\n                    </li> \n                    ");
        }

        $('.base-left .lis').html(bigImg);
        var smImg = '';

        for (var i = 0, len = arr.length; i < len; i++) {
          smImg += "\n                    <li>\n                        <img src=\"".concat(arr[i], "\">\n                    </li>\n                    ");
        }

        $('.base-left .img-small ul').html(smImg);
      }
    }
  });
  /* 鼠标移入切换大图 */

  $('.img-small ul').on('mouseenter', 'li', function () {
    var index = $(this).index();
    $('.base-left .lis .big-img').eq(index).siblings().css('opacity', 0);
    $('.base-left .lis .big-img').eq(index).css('opacity', 1);
  });
  /* 商品颜色 */

  $('.goods-color ul li').click(function () {
    var index = $(this).index();
    $(this).addClass('checked');
    $(this).siblings().removeClass('checked');
    $('.base-left .lis .big-img').eq(index).siblings().css('opacity', 0);
    $('.base-left .lis .big-img').eq(index).css('opacity', 1);
  });
}

detailGoods();