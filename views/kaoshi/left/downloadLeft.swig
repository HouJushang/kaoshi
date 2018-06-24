{% macro downloadLeft(current) %}
    <div class="navigation fl">
        <div class="tit">下载中心</div>
        <div class="con">
            <a href="/download/peixun" class="a_13 {% if current == 'peixun' %} on {% endif %}">培训资料 &nbsp;&nbsp;&gt; </a>
            <a href="/download/learn" class="a_14 {% if current == 'learn' %} on {% endif %}">学习工具 &nbsp;&nbsp;&gt; </a>
        </div>
        {% include '../component/contact.swig' %}
    </div>
{% endmacro %}
