function userLogin(){
    var eye = true;
    $('.eye').click(function(){
        if(eye){
            $('.eye1').css('display','none');
            $('.eye2').css('display','block');
            $('.ipt-pwd').prop('type','text');
            eye = false;
        }else{
            $('.eye1').css('display','block');
            $('.eye2').css('display','none');
            $('.ipt-pwd').prop('type','password');
            eye = true;
        }
    });

    var bool = false;
    $('.auto-login .check').click(function(){
        if(!bool){
            var str = `
            <img src="https://accountstatic.vivo.com.cn/accountstatic.vivo.com.cn/static/img/selected-icon.a90d513.png">
            `;
            $(this).html(str);
            bool = true;
        }else{
            $(this).html('');
            bool = false;
        }
    });

    /* 记住密码 */
    var user = $("[type='username']");
    var pass = $("[type='password']");
    var cookieUser = getCookie('username');
    var cookiePass = getCookie('password');
    if(cookieUser && cookiePass){
        user.val(cookieUser);
        pass.val(cookiePass);
        
    }else{
        user = '';
        pass = '';
    }

    $('.login-btn').click(function(){
        var username = $("[type='username']").val();
        var password = $("[type='password']").val();
        if(username == '' || password == ''){
            alert('用户名和密码不能为空');
            return;
        }
        $.ajax({
            url:'http://localhost/vivo-demo/src/php/login.php',
            type:'post',
            data:{
                username,
                password,
            },
            dataType:'json',
            success(res){
                console.log(res);
                if(res.status == 3){
                    alert(res.msg);
                    return;
                }else if(res.status == 200){
                    if(bool){
                        setCookie('username',username,3600*24*14);
                        setCookie('password',password,3600*24*14);
                    }
                    alert(res.msg);
                    location.href = './Mall.html';
                }else{
                    alert(res.msg);
                }
            }
        })
    })
}
userLogin();