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
                        {% for index, item in list %}
                            <tr>
                                <td>{{ index + 1 }}</td>
                                <td>{{ item.title }}</td>
                                <td>{{ item.createdAt | date('Y-m-d') }}</td>
                                <td>
                                    <a href="/{{ item.download }}" download="{{ item.title }}" target="_blank">
                                        <img class="download" src="/static/images/down.png" width="24" height="24">
                                    </a>
                                </td>
                            </tr>
                        {% endfor %}
                    </table>
                </div>
            </div>
        </div>
    </div>
{% endblock %}
