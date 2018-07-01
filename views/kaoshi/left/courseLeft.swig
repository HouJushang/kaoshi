{% macro courseLeft(current) %}
    <div class="navigation fl">
        <div class="tit">课程中心</div>
        <div class="con">
            <a href="/course/建设类" class="a_6 {% if current == '建设类'  %} on {% endif %}">建设类 &nbsp;&nbsp;&gt; </a>
            <a href="/course/市政工程类" class="a_7 {% if current == '市政工程类'  %} on {% endif %}">市政工程类 > </a>
            <a href="/course/水利类" class="a_8 {% if current == '水利类'  %} on {% endif %}">水利类 &nbsp;&nbsp;&gt; </a>
            <a href="/course/工业类" class="a_9 {% if current == '工业类'  %} on {% endif %}">工业类 &nbsp;&nbsp;&gt; </a>
            <a href="/course/交通类" class="a_10 {% if current == '交通类'  %} on {% endif %}">交通类 &nbsp;&nbsp;&gt; </a>
        </div>
        {% include '../component/contact.swig' %}
    </div>
{% endmacro %}
