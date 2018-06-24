{% extends '../layout/layout.swig' %}
{% block content %}
    <div class="h130"></div>

    <div class="wrap">
        <div class="w1200 clr">
            {{ learnLeft("account") }}
            <div class="package">
                <div class="bread">
                    当前位置：<a href="#">学习频道 &gt; </a><a href="#">我的账户</a>
                </div>
                <div class="content">
                    <div class="balance">账户余额：120元</div>
                    <h2 class="title pt10">充值记录</h2>
                    <table>
                        <tr>
                            <th width="25%">充值时间</th>
                            <th width="25%">充值方式</th>
                            <th width="30%">订单号/卡号</th>
                            <th width="20%">充值金额（元）</th>
                        </tr>
                        <tr>
                            <td>2018/4/23 19:01:00</td>
                            <td>网银缴费</td>
                            <td>AZ201800006323010091A</td>
                            <td>600</td>
                        </tr>
                        <tr>
                            <td colspan = "3" class="right_td">充值合计</td>
                            <td>600</td>
                        </tr>
                    </table>
                    <h2 class="title pt10">选课缴费记录</h2>
                    <table>
                        <tr>
                            <th rowspan = "2" width="25%">扣费时间</th>
                            <th rowspan = "2" width="25%">所选课程</th>
                            <th colspan = "2" width="30%">扣款金额</th>
                            <th rowspan = "2" width="20%">合计</th>
                        </tr>
                        <tr>
                            <th>培训费</th>
                            <th>重修费</th>
                        </tr>
                        <tr>
                            <td>2018/4/23 19:01:00</td>
                            <td>2018年建设类专业课</td>
                            <td>320</td>
                            <td>0</td>
                            <td>320</td>
                        </tr>
                        <tr>
                            <td colspan = "2" class="right_td">合计</td>
                            <td>320</td>
                            <td>0</td>
                            <td>320</td>
                        </tr>
                    </table>
                    <div class="print"><button class="push">打印</button></div>
                </div>
            </div>
        </div>
    </div>
{% endblock %}
