"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

/* 展示商品 */
function navGoods() {
  $.ajax({
    url: 'http://localhost/vivo-demo/src/php/Mall.php',
    type: 'get',
    dataType: 'json',
    success: function success(res) {
      var len = 5;
      var goodsLen = $('.nav-goods ul').length;
      console.log(goodsLen);

      for (var i = 0; i < goodsLen; i++) {
        var str = '';

        for (var j = i; j < len + i; j++) {
          str += "\n\t\t\t\t\t<li><a href=\"\">\n\t\t\t\t\t\t<div class=\"goods-img\">\n\t\t\t\t\t\t\t<img src=\"".concat(res[j].imgpath, "\" alt=\"\">\n\t\t\t\t\t\t</div>\n\t\t\t\t\t\t<p class=\"goods-name\">").concat(res[j].name, "</p>\n\t\t\t\t\t\t<p class=\"goods-icon\">").concat(res[j].xin, "</p>\n\t\t\t\t\t</a></li>\n\t\t\t\t\t");
        }

        str += "\n\t\t\t\t<li class=\"phone-li\">\n\t\t\t\t<div>\n\t\t\t\t\t<div>\n\t\t\t\t\t\t<b class=\"iconfont icon-caidan\"></b>\n\t\t\t\t\t\t<span>\u5168\u90E8NEX\u673A\u578B</span>\n\t\t\t\t\t</div>\n\t\t\t\t\t<div>\n\t\t\t\t\t\t<b class=\"iconfont icon-ai-phone\"></b>\n\t\t\t\t\t\t<span>\u5BF9\u6BD4NEX\u673A\u578B</span>\n\t\t\t\t\t</div>\n\t\t\t\t\t</div>\n\t\t\t\t</li>\n\t\t\t\t";
        $('.nav-goods ul').eq(i).children().append(str);
      }
    }
  });
}

;
var _default = {
  navGoods: navGoods
};
exports["default"] = _default;