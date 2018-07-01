{% extends '../layout/layout.swig' %}
{% block content %}
    <div class="h130"></div>

    <div class="wrap">
        <div class="w1200 clr">
            {{ learnLeft("info") }}
            <div class="package">
                <div class="bread">
                    当前位置：<a href="#">学习频道 &gt; </a><a href="#">我的资料</a>
                </div>
                <div class="content">
                    <h2 class="title">报名信息</h2>
                    <table>
                        {#<tr>#}
                            {#<td width="25%">用&nbsp;户&nbsp;名</td>#}
                            {#<td width="75%" class="left_td">AZ2018000063</td>#}
                        {#</tr>#}
                        <tr>
                            <td width="25%">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名</td>
                            <td width="75%" class="left_td">{{ userInfo.name }}</td>
                        </tr>
                        <tr>
                            <td>身份证号</td>
                            <td class="left_td">{{ userInfo.card }}</td>
                        </tr>
                        <tr>
                            <td>性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别</td>
                            <td class="left_td">{{ userInfo.sex }}</td>
                        </tr>
                        <tr>
                            <td>专业类别</td>
                            <td class="left_td">{{ userInfo.leibie }}</td>
                        </tr>
                        {#<tr>#}
                            {#<td>报&nbsp;名&nbsp;点</td>#}
                            {#<td class="left_td">桐城县鹏程教育培训学校</td>#}
                        {#</tr>#}
                        <tr>
                            <td>所在单位</td>
                            <td class="left_td">{{ userInfo.company }}</td>
                        </tr>
                        <tr>
                            <td>申报资格</td>
                            <td class="left_td">{{ userInfo.zige }}</td>
                        </tr>
                        {#<tr>#}
                            {#<td>职务级别</td>#}
                            {#<td class="left_td">职称初级</td>#}
                        {#</tr>#}
                        <tr>
                            <td>手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机</td>
                            <td class="left_td">{{ userInfo.wenhua }}</td>
                        </tr>
                        <tr>
                            <td>文化程度</td>
                            <td class="left_td">{{ userInfo.wenhua }}</td>
                        </tr>
                        <tr>
                            <td>用户状态</td>
                            <td class="left_td">已开通</td>
                        </tr>
                        <tr>
                            <td>注册时间</td>
                            <td class="left_td">{{ userInfo.createdAt | date('Y-m-d')  }}</td>
                        </tr>
                    </table>

                    <div class="bot">
                        <button class="push">打印</button>
                        {#<button class="push edit">编辑</button>#}
                    </div>

                </div>
            </div>
        </div>
    </div>
{% endblock %}
