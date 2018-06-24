{% macro helpLeft(current) %}
    <div class="navigation fl">
        <div class="tit">帮助中心</div>
        <div class="con">
            <a href="/help/peixun" class="a_16 {% if current == 'peixun' %}on{% endif %}">培训流程 &nbsp;&nbsp;&gt; </a>
            <a href="/help/register" class="a_17 {% if current == 'register' %}on{% endif %}">在线注册 &nbsp;&nbsp;&gt; </a>
            <a href="/help/xuanke" class="a_18 {% if current == 'xuanke' %}on{% endif %}">在线选课 &nbsp;&nbsp;&gt; </a>
            <a href="/help/jiaofei" class="a_19 {% if current == 'jiaofei' %}on{% endif %}">缴费充值 &nbsp;&nbsp;&gt; </a>
            <a href="/help/xuexi" class="a_20 {% if current == 'xuexi' %}on{% endif %}">在线学习 &nbsp;&nbsp;&gt; </a>
            <a href="/help/hege" class="a_21 {% if current == 'hege' %}on{% endif %}">合格证明 &nbsp;&nbsp;&gt; </a>
            <a href="/help/changjian" class="a_22 {% if current == 'changjian' %}on{% endif %}">常见问题 &nbsp;&nbsp;&gt; </a>
        </div>
        {% include '../component/contact.swig' %}
    </div>
{% endmacro %}
