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
                        {% for index, item in list %}
                        <tr>
                            <td>{{ index + 1 }}</td>
                            <td class="left_td">
                                <a href="#" class="td_a">{{ item.title }}</a>
                            </td>
                            <td>{{ item.click }}</td>
                            <td>{{ item.createdAt | date('Y-m-d') }}</td>
                        </tr>
                        {% endfor %}
                    </table>

                </div>
            </div>
        </div>
    </div>
{% endblock %}
