{% include './htmlHead.swig' %}
<header class="header">
    <div class="top">
        <div class="w1200 clr">
            <a href="/" class="logo fl" style="background: url(/static/images/logo.png) left center no-repeat;">鹏程教育在线学习系统</a>
            <div class="operation fr">
                <div class="fl name">你好！<span>XXX</span></div>
                <div class="fl"><a href="/login">登录账号</a></div>
                <div class="fl"><a href="/login">退出</a></div>
            </div>
        </div>
    </div>
    <div class="end">
        <div class="w1200 clr">
            <div class="nav fr">
                <a href="/learn/course" {% if topCategory == 'learn' %} class="on" {% endif %}>学习频道</a>
                <a href="/course/jianshe" {% if topCategory == 'course' %} class="on" {% endif %}>课程中心</a>
                <a href="/info/tongzhi" {% if topCategory == 'info' %} class="on" {% endif %}>信息频道</a>
                <a href="/download/peixun" {% if topCategory == 'download' %} class="on" {% endif %}>下载中心</a>
                <a href="/rank/niandu" {% if topCategory == 'rank' %} class="on" {% endif %}>成绩证明</a>
                <a href="/help/peixun" {% if topCategory == 'help' %} class="on" {% endif %}>帮助中心</a>
            </div>
        </div>
    </div>
</header>