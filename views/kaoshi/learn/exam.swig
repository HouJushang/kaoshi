{% extends '../layout/layout.swig' %}
{% block content %}
    <div class="h130"></div>

    <div class="wrap">
        <div class="w1200 clr">
            {{ learnLeft("exam") }}
            <div class="package">
                <div class="bread">
                    当前位置：<a href="#">学习频道 &gt; </a><a href="#">我的考试</a>
                </div>
                <div class="content">
                    <table>
                        <tr>
                            <th width="30%">标题</th>
                            <th width="15%">已考次数</th>
                            <th width="15%">考试成绩</th>
                            <th width="15%">考试时间</th>
                            <th width="25%">开放时间</th>
                            <th width="10%">状态</th>
                        </tr>
                        <tr>
                            <td colspan = "6">没有相关考试信息！</td>
                        </tr>

                    </table>
                    <div class="prompt">
                        <h2>温馨提醒</h2>
                        <p class="c3">1、正式考试所有试卷均按照系统设定的考试参数随机生成，满分为100分，60分及格；</p>
                        <p class="c3">2、进入考试后系统将开始计时，期间不得中途退出或刷新试卷页面，如果用户刷新，本次考试将被做交卷处理，并进行评分；</p>
                        <p class="c3">3、由于断线或其他原因可能导致考试失败，可以重新登录并重新考试，如果出现系统交卷情况无法重新考试，请与系统管理员联系或第二天进行补考；</p>
                        <p class="c3">4、考试不及格，可以在第二天进入课程补考页面。</p>
                        <p class="c3">5、考试完成后刷新课程考试页面即可查看考试成绩！</p>
                        <p class="c3">6、请使用IE浏览器进入考试，其他浏览器可能无法正常交卷或无法正确计分！</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
{% endblock %}
