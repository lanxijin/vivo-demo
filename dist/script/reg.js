"use strict";

function userReg() {
  var bool = false;
  $('.check-box').click(function () {
    if (!bool) {
      var str = "\n            <img src=\"https://accountstatic.vivo.com.cn/accountstatic.vivo.com.cn/static/img/selected-icon.a90d513.png.webp\">\n            ";
      $(this).html(str);
      bool = true;
    } else {
      $(this).html('');
      bool = false;
    }
  });
  $('.reg-btn').click(function () {
    if (!bool) {
      alert('请勾选协议');
      return;
    }

    var username = $("[type='username']").val().trim();
    var password = $("[type='password']").val().trim();

    if (username == '' || password == '') {
      alert('用户名和密码不能为空');
      return;
    }

    $.ajax({
      url: 'http://localhost/vivo-demo/src/php/register.php',
      type: 'post',
      data: {
        username: username,
        password: password
      },
      dataType: 'json',
      success: function success(res) {
        if (res.status == 3) {
          alert(res.msg);
          return;
        } else if (res.status == 200) {
          alert(res.msg);
          location.href = './login.html';
        } else {
          alert(res.msg);
        }
      }
    });
  });
}

userReg();