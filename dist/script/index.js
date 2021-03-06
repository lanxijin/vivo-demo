"use strict";

/* 顶部通栏 */
(function () {
  var headBtm = $('.head-btm');
  $(window).scroll(function () {
    var t = $(document).scrollTop();

    if (t > 34) {
      headBtm.css({
        'position': 'fixed',
        'top': 0,
        'width': '100%',
        'background': '#fff',
        'opacity': 0.97
      });
    } else {
      headBtm.css({
        'position': 'relative',
        'top': 0,
        'background': 'transparent',
        'opacity': 1
      });
    }

    if (t > 500) {
      $('.backTop').css('display', 'block');
    } else {
      $('.backTop').css('display', 'none');
    }

    if (t <= 0) {
      clearInterval(timer);
    }
  });
  /* 回到顶部 */

  var timer;
  $('.backTop').click(function () {
    timer = setInterval(function () {
      var t = $(document).scrollTop();
      var t1 = t - 10;
      $(document).scrollTop(t1);
    });
  });
  /* 数据展示 */

  $.ajax({
    url: 'http://localhost/vivo-demo/src/php/Mall.php',
    type: 'get',
    dataType: 'json',
    success: function success(res) {
      var rowStr = '';

      for (var i = 51; i < 55; i++) {
        rowStr += "\n                <a class=\"small-list col-md-6\" href=\"./detail.html?id=".concat(res[i].id, "\">\n                    <div class=\"small-img\">\n                        <img src=\"").concat(res[i].imgpath, "\">\n                    </div>\n                    <div class=\"small-content\">\n                        <h2>").concat(res[i].name, "</h2>\n                        <p>\u65B0\u54C1\u9996\u53D1</p>\n                    </div>\n                </a>\n                ");
      }

      $('.banner-small .row').html(rowStr);
    }
  });
})();
/* 导航栏商品下拉 */


var navGoods = $('.nav-goods');
var h;
var index;
$('.nav ul li').hover(function () {
  index = $(this).index();
  $('.nav-goods ul').eq(index).css('display', 'block');
  h = navGoods.height();
  navGoods.css({
    'top': -h + 'px'
  });
  navGoods.stop().animate({
    top: 0
  }, 400);
}, function () {
  $('.nav-goods ul').eq(index).css('display', 'none');
  navGoods.stop().animate({
    top: -h + 'px'
  }, 400);
});
navGoods.hover(function () {
  $('.nav-goods ul').eq(index).css('display', 'block');
  navGoods.stop().animate({
    top: 0
  }, 400);
}, function () {
  $('.nav-goods ul').eq(index).css('display', 'none');
  navGoods.stop().animate({
    top: -h + 'px'
  }, 400);
});