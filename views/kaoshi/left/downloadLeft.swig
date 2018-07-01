{% macro downloadLeft(current) %}
    <div class="navigation fl">
        <div class="tit">下载中心</div>
        <div class="con">
            <a href="/download/培训资料" class="a_13 {% if current == '培训资料' %} on {% endif %}">培训资料 &nbsp;&nbsp;&gt; </a>
            <a href="/download/学习工具" class="a_14 {% if current == '学习工具' %} on {% endif %}">学习工具 &nbsp;&nbsp;&gt; </a>
        </div>
        {% include '../component/contact.swig' %}
    </div>
{% endmacro %}
