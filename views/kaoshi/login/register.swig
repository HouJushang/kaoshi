{% include '../layout/htmlHead.swig' %}
<div class="popup popup_login">
    <div class="cont">
        <div class="tit">用户注册</div>
        <div class="popup_con">

            <div class="enlist enlist_cont">
                <table>
                    <tr>
                        <td width="20%"><span class="stars">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名</span></td>
                        <td width="80%" class="left_td">
                            <input type="text"/>
                            <span class="tet">（实名制，请用真实姓名）</span>
                        </td>
                    </tr>
                    <tr>
                        <td><span class="stars">身份证号</span></td>
                        <td class="left_td">
                            <input type="text" class="w5"/>
                        </td>
                    </tr>
                    <tr>
                        <td>性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别</td>
                        <td class="left_td">
                            <select>
                                <option>男</option>
                                <option>女</option>
                            </select>
                            <span class="tet data">出生日期</span>
                            <input type="text"/>
                        </td>
                    </tr>
                    <tr>
                        <td><span class="stars">登录密码</span></td>
                        <td class="left_td">
                            <input type="text"/>
                            <span class="tet red">（请输入六位以上数字、字符）</span>
                        </td>
                    </tr>
                    <tr>
                        <td><span class="stars">确认密码</span></td>
                        <td class="left_td">
                            <input type="text"/>
                        </td>
                    </tr>
                    <tr>
                        <td><span class="stars">专业类别</span></td>
                        <td class="left_td">
                            <select>
                                <option></option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><span class="stars">所在县区</span></td>
                        <td class="left_td">
                            <select>
                                <option></option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><span class="stars">工作单位</span></td>
                        <td class="left_td">
                            <input type="text" class="w5"/>
                            <span class="tet">（请输入单位全称，例：xx县(市、区)）</span>
                        </td>
                    </tr>
                    <tr>
                        <td><span class="stars">申报资格</span></td>
                        <td class="left_td">
                            <select>
                                <option></option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><span class="stars">手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机</span></td>
                        <td class="left_td">
                            <input type="text"/>
                        </td>
                    </tr>
                    <tr>
                        <td><span class="stars">文化程度</span></td>
                        <td class="left_td">
                            <input type="text"/>
                        </td>
                    </tr>
                </table>
                <p class="read on">我已阅读<a href="/agree" target="_blank">《XXX用户注册协议》</a></p>
            </div>
            <div class="h80"></div>
        </div>
        <div class="bot">
            <button class="push">提交</button>
            <button class="push return">返回</button>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(function () {
        var popup_con = $(".popup_login").find($(".popup_con"));
        var cont = $(".popup_login").find($(".popup .cont"));
        popup_con.css("max-height", cont.height() - 45).scrollTop(0);

        $(".return").click(function () {
            window.location.href = "login.html"
        });
    });
</script>
{% include '../layout/htmlFooter.swig' %}





