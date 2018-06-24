{% macro courseLeft(current) %}
    <div class="navigation fl">
        <div class="tit">课程中心</div>
        <div class="con">
            <a href="/course/jianshe" class="a_6 {% if current == 'jianshe'  %} on {% endif %}">建设类 &nbsp;&nbsp;&gt; </a>
            <a href="/course/shizheng" class="a_7 {% if current == 'shizheng'  %} on {% endif %}">市政工程类 > </a>
            <a href="/course/shuili" class="a_8 {% if current == 'shuili'  %} on {% endif %}">水利类 &nbsp;&nbsp;&gt; </a>
            <a href="/course/gongye" class="a_9 {% if current == 'gongye'  %} on {% endif %}">工业类 &nbsp;&nbsp;&gt; </a>
            <a href="/course/jiaotong" class="a_10 {% if current == 'jiaotong'  %} on {% endif %}">交通类 &nbsp;&nbsp;&gt; </a>
        </div>
        {% include '../component/contact.swig' %}
    </div>
{% endmacro %}
