{% include '../layout/htmlHead.swig' %}
<div class="popup popup_login">
    <div class="login">
        <h2>鹏程教育在线学习系统</h2>
        <div class="from">
            <div class="tit">用户登录 | LOGIN</div>
            <div class="lists clr">
                <i class="fl">身份证号</i>
                <div class="input">
                    <input type="text" placeholder="请输入身份证号码" />
                </div>
            </div>
            <div class="lists clr">
                <i class="fl">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</i>
                <div class="input">
                    <input type="text" placeholder="请输入密码" />
                </div>
            </div>
            <div class="lists clr">
                <i class="fl">验&nbsp;证&nbsp;码</i>
                <div class="input yzm">
                    <input type="text" placeholder="请输入验证码" />
                    <div class="svgBox" style="position: absolute; right: 0px; top: 0px;">
                    </div>
                </div>
            </div>
            <div class="password clr">
                <div class="fl remember on">记住密码</div>
                <a href="/forget" class="fr forget">忘记密码</a>
            </div>
            <div class="button">
                <button class="btn" id="loginBtn">登录</button>
            </div>
            <p class="accounts">新用户账号<a href="/register">注册</a></p>
        </div>
    </div>
</div>
<script>
    function getSvg(idTag){
        $.ajax({
            url: "/captcha",
            type: "GET",
            dataType: "json",
            success: function (e) {
                $(idTag).html('<?xml version="1.0"?>' + e.data.captcha)
                    .attr({
                        'height': '100%',
                        'width': '100%'
                    });
            }
        })
    }
    $('.svgBox').click(function () {
        getSvg('.svgBox')
    })
    getSvg('.svgBox')


    $('#loginBtn').click(function(){
        // todo ajax
        location.href = "/forget"
    })
</script>
{% include '../layout/htmlFooter.swig' %}
    