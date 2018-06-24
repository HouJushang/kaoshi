{% macro learnLeft(current) %}
    <div class="navigation fl">
        <div class="tit">学习频道</div>
        <div class="con">
            <a href="/learn/course" class="a_1 {% if current == 'course' %} on {% endif %}">我的课程 &nbsp;&nbsp;&gt; </a>
            <a href="/learn/exam" class="a_2 {% if current == 'exam' %} on {% endif %}">我的考试 &nbsp;&nbsp;&gt; </a>
            <a href="/learn/account" class="a_3 {% if current == 'account' %} on {% endif %}">我的账户 &nbsp;&nbsp;&gt; </a>
            <a href="/learn/info" class="a_4 {% if current == 'info' %} on {% endif %}">我的资料 &nbsp;&nbsp;&gt; </a>
            <a href="/learn/train" class="a_5 {% if current == 'train' %} on {% endif %}">培训档案 &nbsp;&nbsp;&gt; </a>
        </div>
        {% include '../component/contact.swig' %}
    </div>
{% endmacro %}
