{% include '../layout/htmlHead.swig' %}
<div class="popup popup_login">
    <div class="cont">
        <div class="tit">用户注册</div>
        <div class="popup_con">

            <div class="enlist enlist_cont">
                <form id="registerForm">
                <table>
                    <tr>
                        <td width="20%"><span class="stars">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名</span></td>
                        <td width="80%" class="left_td">
                            <input name="name" type="text"/>
                            <span class="tet">（实名制，请用真实姓名）</span>
                        </td>
                    </tr>
                    <tr>
                        <td><span class="stars">身份证号</span></td>
                        <td class="left_td">
                            <input name="card" type="text" class="w5"/>
                        </td>
                    </tr>
                    <tr>
                        <td>性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别</td>
                        <td class="left_td">
                            <select name="sex">
                                <option value="男">男</option>
                                <option value="女">女</option>
                            </select>
                            <span class="tet data">出生日期</span>
                            <input name="birthday" type="text"/>
                        </td>
                    </tr>
                    <tr>
                        <td><span class="stars">登录密码</span></td>
                        <td class="left_td">
                            <input name="password" type="text"/>
                            <span class="tet red">（请输入六位以上数字、字符）</span>
                        </td>
                    </tr>
                    <tr>
                        <td><span class="stars">确认密码</span></td>
                        <td class="left_td">
                            <input name="password2" type="text"/>
                        </td>
                    </tr>
                    <tr>
                        <td><span class="stars">专业类别</span></td>
                        <td class="left_td">
                            <input name="leibie" type="text"/>
                        </td>
                    </tr>
                    <tr>
                        <td><span class="stars">所在县区</span></td>
                        <td class="left_td">
                            <input name="address" type="text"/>
                        </td>
                    </tr>
                    <tr>
                        <td><span class="stars">工作单位</span></td>
                        <td class="left_td">
                            <input type="text" name="company" class="w5"/>
                            <span class="tet">（请输入单位全称，例：xx县(市、区)）</span>
                        </td>
                    </tr>
                    <tr>
                        <td><span class="stars">申报资格</span></td>
                        <td class="left_td">
                            <input type="text" name="zige" class="w5"/>
                        </td>
                    </tr>
                    <tr>
                        <td><span class="stars">手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机</span></td>
                        <td class="left_td">
                            <input type="text" name="phone"/>
                        </td>
                    </tr>
                    <tr>
                        <td><span class="stars">文化程度</span></td>
                        <td class="left_td">
                            <input name="wenhua" type="text"/>
                        </td>
                    </tr>
                </table>
                </form>
                {#<p class="read on">我已阅读<a href="/agree" target="_blank">《XXX用户注册协议》</a></p>#}
            </div>
            <div class="h80"></div>
        </div>
        <div class="bot">
            <button class="push submit">提交</button>
            <button class="push return">返回</button>
        </div>
    </div>
</div>
<script type="text/javascript">
    $('.return').click(function() {
        window.location.href="/login"
    })
    $('.submit').click(function() {
        if(!$("input[name=name]").val()){
            alert('姓名必填')
            return;
        }
        if(!$("input[name=card]").val()){
            alert('身份证必填')
            return;
        }
        if(!$("input[name=password]").val() || $("input[name=password]").val() != $("input[name=password2]").val()){
            alert('密码必填,且两次必须一致')
            return;
        }
        if(!$("input[name=leibie]").val()){
            alert('类别必填')
            return;
        }
        if(!$("input[name=address]").val()){
            alert('地址区域必填')
            return;
        }
        if(!$("input[name=company]").val()){
            alert('工作单位必填')
            return;
        }
        if(!$("input[name=zige]").val()){
            alert('资格必填')
            return;
        }
        if(!$("input[name= phone]").val()){
            alert('电话必填')
            return;
        }
        if(!$("input[name=wenhua]").val()){
            alert(' 文化必填')
            return;
        }
        $.ajax({
            url: '/user/add',
            type: "POST",
            data: $("#registerForm").serialize(),
            dataType: "json",
            error: function () {
            },
            complete: function () {
            },
            success: function (e) {
                if(e.code == 'success'){
                    $('.return').trigger('click')
                }else{
                    alert(e.message)
                }
                // $('.return').trigger('click')
            }
        })
    })

    // $(function () {
    //     var popup_con = $(".popup_login").find($(".popup_con"));
    //     var cont = $(".popup_login").find($(".popup .cont"));
    //     popup_con.css("max-height", cont.height() - 45).scrollTop(0);
    //
    //     $(".return").click(function () {
    //         window.location.href = "login.html"
    //     });
    // });
</script>
{% include '../layout/htmlFooter.swig' %}





