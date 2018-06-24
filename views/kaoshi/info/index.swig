{% extends '../layout/layout.swig' %}
{% block content %}
    <div class="h130"></div>
    <div class="wrap">
        <div class="w1200 clr">
            {% include '../left/infoLeft.swig' %}
            {{ infoLeft(category) }}
            <div class="package">
                <div class="bread">
                    当前位置：<a>信息频道 &gt; </a><a>{{ {'tongzhi': '通知公告', 'zhengce': '政策法规'}[category] }}</a>
                </div>
                <div class="content">
                    <table>
                        <tr>
                            <th width="10%">序号</th>
                            <th width="50%">标题</th>
                            <th width="15%">浏览次数</th>
                            <th width="20%">发布时间</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td class="left_td">
                                <a href="#" class="td_a">关于开展2016年度宿松县水产系列专业技术人员 继续教育培训的通知</a>
                            </td>
                            <td>36</td>
                            <td>2018-5-26  15:30</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td class="left_td">
                                <a href="#" class="td_a">关于开展2016年度宿松县</a>
                            </td>
                            <td>36</td>
                            <td>2018-5-26  15:30</td>
                        </tr>
                    </table>

                </div>
            </div>
        </div>
    </div>
{% endblock %}
