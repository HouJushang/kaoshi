{% include '../layout/htmlHead.swig' %}
<div class="popup popup_login">
    <div class="cont" style="width: 500px; height: 400px">
        <div class="tit">找回密码</div>
        <div class="popup_con popup_lists">
            <div class="lists clr">
                <i class="fl">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名</i>
                <div class="input">
                    <input type="text" placeholder="请输入姓名" />
                </div>
            </div>
            <div class="lists clr">
                <i class="fl">身份证号</i>
                <div class="input">
                    <input type="text" placeholder="请输入身份证号" />
                </div>
            </div>
            <div class="lists clr">
                <i class="fl">重置密码</i>
                <div class="input">
                    <input type="text" placeholder="请输入重置密码" />
                </div>
            </div>
            <div class="lists clr">
                <i class="fl">确认密码</i>
                <div class="input">
                    <input type="text" placeholder="请输入确认密码" />
                </div>
            </div>
            <div class="h80"></div>
        </div>
        <div class="bot">
            <button class="push">确认</button>
            <button class="push return">返回</button>
        </div>
        <!-- <div class="del"></div> -->
    </div>
</div>
{% include '../layout/htmlFooter.swig' %}