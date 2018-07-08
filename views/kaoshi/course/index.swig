{% extends '../layout/layout.swig' %}
{% block content %}
    <div class="h130"></div>
    <div class="wrap">
        <div class="w1200 clr">
            {% include '../left/courseLeft.swig' %}
            {{ courseLeft(category) }}
            <div class="package">
                <div class="bread">
                    当前位置：<a>课程中心 &gt; </a><a>{{ category }}</a>
                </div>
                <div class="content">
                    <p class="tit">请根据本人所属专业序列选择专业课！</p>
                    <table>
                        <tr>
                            <th width="10%">序号</th>
                            <th width="15%">课程类别</th>
                            <th width="30%">课程名称</th>
                            <th width="10%">课程学分</th>
                            <th width="10%">计入年份</th>

                            <th width="10%">收费标准</th>
                            <th width="15%">操作</th>
                        </tr>
                        {% for index, item in list %}
                        <tr>
                            <td>{{ index + 1 }}</td>
                            <td>{{ item.category }}</td>
                            <td class="left_td">{{ item.name }}</td>
                            <td>{{ item.rank }}</td>
                            <td>{{ item.year }}</td>
                            <td>{{ item.price/100 }}</td>
                            <td>
                                <button class="btn js_btn" index="{{ index }}">购买</button>
                            </td>
                        </tr>
                        {% endfor %}
                    </table>

                </div>
            </div>
        </div>
    </div>
    {% for index, item in list %}
    <div class="popup popup_choose{{ index }}">
        <div class="cont" style="height: 500px;">
            <div class="tit">选课 -- {{ item.name }}</div>
            <div class="popup_con">
                <div class="top course_top">
                    <p>课程名称：{{ item.name }}</p>
                    <p>学分：{{ item.rank }}</p>
                    <p>课程性质：必修</p>
                    <p>考试形式：考试</p>
                    <p>收费标准：{{ item.price/100 }}</p>
                    <button index="{{ index }}" class="button_course">确认选课</button>
                </div>
                <div class="end">
                    <div class="tit">
                        <a class="on">课程列表</a>
                        <a>学分组成</a>
                    </div>
                    <div class="switch{{ index }}">
                        <div class="cur">
                            <table>
                                <tr>
                                    <th width="10%">序号</th>
                                    <th width="90%" class="th">课程名称(含学历转岗)</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td class="left_td">01-工程与法律概述{{ index }}</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td class="left_td">02-工程与法律概述</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td class="left_td">03-工程与法律概述</td>
                                </tr>
                            </table>
                        </div>
                        <div class="cur">
                            <table>
                                <tr>
                                    <th width="10%">序号</th>
                                    <th width="80%" class="th">标题</th>
                                    <th width="10%">学分</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td class="left_td">01-工程与法律概述{{ index }}</td>
                                    <td>10</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td class="left_td">02-工程行政许可与监管</td>
                                    <td>10</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="del"></div>
        </div>
    </div>
    {% endfor %}

    {% for index, item in list %}
    <div class="popup popup_course{{ index }}">
        <div class="cont" style="height: 500px;">
            <div class="tit">选课缴费</div>
            <div class="popup_con">
                <div class="cur">
                    <table>
                        <tr>
                            <th colspan="2" class="title">缴费信息</th>
                        </tr>
                    </table>
                    <table style="border-top:0px;">
                        <tr>
                            <td width="100">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名</td>
                            <td>{{ session.userLoginName }}</td>
                        </tr>
                        <tr>
                            <td>课程名称</td>
                            <td>{{ item.name }} </td>
                        </tr>
                        <tr>
                            <td>应缴金额</td>
                            <td>{{ item.price/100 }}元 </td>
                        </tr>
                        <tr>
                            <td class="way">选择支付<br>方式</td>
                            <td class="way">
                                {#<div class="li" courseId = "{{ item.id }}">#}
                                    {#<img src="/static/images/zfb.jpg" width="218" height="88">#}
                                {#</div>#}
                                <div class="li courseBuyBtn" index="{{ index }}" courseId = "{{ item.id }}">
                                    <img src="/static/images/wx.jpg" width="218" height="88">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>扫描二维码</td>
                            <td id="code" style="padding: 20px"></td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="del"></div>
        </div>
    </div>
    {% endfor %}
    <script type="text/javascript" src="/static/js/jquery.qrcode.min.js"></script>
    <script type="text/javascript">
        $(function(){
            {% for index, item in list %}
            $(".popup_choose{{ index }} .tit a").click(function(){
                var index = $(this).index();
                $(this).addClass("on").siblings("a").removeClass("on");
                $(".switch{{ index }} .cur").eq(index).show().siblings(".cur").hide();
            }).eq(0).trigger('click');
            {% endfor %}

            $(".js_btn").click(function(){
                popup(".popup_choose" + $(this).attr("index"));
            });

            $(".button_course").click(function(){
                popup(".popup_course" + $(this).attr("index"));
            });

            $(".td_a").click(function(){
                popup(".popup_details");
            });

            $('.courseBuyBtn').click(function() {
                // todo 下单
                var clickIndex = $(this).attr('index')
                $.ajax({
                    url: "/order",
                    type: "POST",
                    dataType: "json",
                    data: {
                        courseId: $(this).attr('courseId')
                    },
                    success: function (e) {
                        if(e.code == 'success'){
                            $('.popup_course' + clickIndex + ' #code').html('');
                            $('.popup_course' + clickIndex + ' #code').qrcode(e.data.wxOrderResult.code_url);
                            setTimeout(function(){
                                alert('支付二维码生成，扫描支付')
                            })
                        } else {
                            alert(e.message)
                        }
                    }
                })
            })
        });
    </script>
{% endblock %}
