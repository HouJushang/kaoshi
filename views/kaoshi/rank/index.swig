{% extends '../layout/layout.swig' %}
{% block content %}
<div class="h130"></div>
<div class="wrap">
    <div class="w1200 clr">
        {% include '../left/rankLeft.swig' %}
        {{ rankLeft(category) }}
        <div class="package">
            <div class="bread">
                当前位置：<a href="#">成绩证明 &gt; </a><a href="#">年度课程</a>
            </div>
            <div class="content">
                <h2 class="title">继续教育汇总表</h2>
                <table>
                    <tr>
                        <td>姓名</td>
                        <td width="30%">徐骆林</td>
                        <td>性别</td>
                        <td>男</td>
                        <td>身份证号</td>
                        <td  width="20%">34082619802170035</td>
                    </tr>
                    <tr>
                        <td>工作单位</td>
                        <td colspan = "3" class="left_td">安徽驰宇建设工程有限公司</td>
                        <td>联系电话</td>
                        <td>183561526352</td>
                    </tr>
                </table>
                <table style="border-top: 0px;">
                    <tr>
                        <th width="20%">序号</th>
                        <th width="20%">年份</th>
                        <th width="20%">学分</th>
                        <th width="40%">打印</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>2017</td>
                        <td>60</td>
                        <td>
                            <button class="blue">打印</button>
                            <button class="blue">打印（含学历转岗）</button>
                        </td>
                    </tr>
                </table>
                <p class="center">如有学历转岗的学员,请打印成绩证明时选择《含学历转岗》打印按钮。</p>
                <p class="rt">安庆市建筑技能培训学校</p>
                <p class="rt">二O一八年六月五日</p>
            </div>
        </div>
    </div>
</div>
{% endblock %}