{% macro infoLeft(current) %}
    <div class="navigation fl">
        <div class="tit">信息频道</div>
        <div class="con">
            <a href="/info/通知公告" class="a_11 {% if current == '通知公告' %} on {% endif %}">通知公告 > </a>
            <a href="/info/政策法规" class="a_12 {% if current == '政策法规' %} on {% endif %}">政策法规 &nbsp;&nbsp;&gt; </a>
        </div>
        {% include '../component/contact.swig' %}
    </div>
{% endmacro %}
