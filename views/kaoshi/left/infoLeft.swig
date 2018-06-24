{% macro infoLeft(current) %}
    <div class="navigation fl">
        <div class="tit">信息频道</div>
        <div class="con">
            <a href="/info/tongzhi" class="a_11 {% if current == 'tongzhi' %} on {% endif %}">通知公告 > </a>
            <a href="/info/zhengce" class="a_12 {% if current == 'zhengce' %} on {% endif %}">政策法规 &nbsp;&nbsp;&gt; </a>
        </div>
        {% include '../component/contact.swig' %}
    </div>
{% endmacro %}
