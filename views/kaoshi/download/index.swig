{% extends '../layout/layout.swig' %}
{% block content %}
    <div class="h130"></div>
    <div class="wrap">
        <div class="w1200 clr">
            {% include '../left/downloadLeft.swig' %}
            {{ downloadLeft(category) }}
            <div class="package">
                <div class="bread">
                    当前位置：<a>课程中心 &gt; </a><a>建设类</a>
                </div>
                <div class="content">
                    <table>
                        <tr>
                            <th width="10%">序号</th>
                            <th width="55%">标题</th>
                            <th width="20%">发布时间</th>
                            <th width="15%">下载</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td class="left_td">
                                <a href="#" class="td_a">关于开展2016年度宿松县水产系列专业技术人员 继续教育培训的通知</a>
                            </td>
                            <td>2018-5-26 15:30</td>
                            <td>
                                <a href="#" target="_blank">
                                    <img class="download" src="/static/images/down.png" width="24" height="24">
                                </a>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
{% endblock %}
