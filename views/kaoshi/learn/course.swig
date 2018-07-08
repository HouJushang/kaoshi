{% extends '../layout/layout.swig' %}
{% block content %}
    <div class="h130"></div>

    <div class="wrap">
        <div class="w1200 clr">
            {{ learnLeft("course") }}
            <div class="package">
                <div class="bread">
                    当前位置：<a href="#">学习频道 &gt; </a><a href="#">我的课程</a>
                </div>
                <div class="content">
                    <table>
                        <tr>
                            <th width="10%">序号</th>
                            <th width="10%">计入</th>
                            <th width="12%">课程类别</th>
                            <th width="20%">课程名称</th>
                            <th width="10%">学分</th>
                            <th width="10%">进度</th>
                            <th width="10%">成绩</th>
                            <th width="18%">操作</th>
                        </tr>
                        {% for index, item in list %}
                            <tr>
                                <td>{{ index + 1 }}</td>
                                <td>{{ item.course.year }}</td>
                                <td>{{ item.course.category }}</td>
                                <td>{{ item.course.name }}</td>
                                <td>{{ item.course.rank }}</td>
                                <td>57%</td>
                                <td>--</td>
                                <td>
                                    <button class="btn js_btn" index="{{ index }}">学习</button>
                                    <button class="btn kaoshi">考试</button>
                                </td>
                            </tr>
                        {% endfor %}
                    </table>
                    <div class="prompt">
                        <h2>温馨提醒</h2>
                        <p>1、点击课程列表中的“学习”按钮进入该课程学习页面，学习结束后点击“刷新”获取最新学习进度</p>
                        <p>3、学习完成后，打印成绩证明并上交进行学时验证</p>
                        <p>4、请使用IE浏览器兼容模式进入学习，其他浏览器可能无法正确记录学习进度！</p>
                        <p><a href="#">5、在学习过程中如无法播放视频，请点击这里查看帮助</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    {% for index, item in list %}
        <div class="popup popup_buy{{ index }}">
            <div class="cont" style="height: 500px;">
                <div class="tit">{{ item.course.name }}</div>
                <div class="popup_con">
                    <div class="top">
                        <p>课程名称：{{ item.course.name }}</p>
                        <p>学分：{{ item.course.rank }}</p>
                        <p>课程性质：必修</p>
                        <p>考试形式： 考试</p>
                        <p>收费标准：{{ item.course.price/100 }}元</p>
                        <p>{{ item.courseItem }}</p>
                    </div>
                    <div class="end">
                        {#<div class="refresh"></div>#}
                        <div class="tit">
                            <a class="on">课程列表</a>
                            <a>学分组成</a>
                        </div>
                        <div class="switch">
                            <div class="cur">
                                <table>
                                    <tr>
                                        <th width="5%">序号</th>
                                        <th width="40%" class="th">课程名称</th>
                                        <th width="40%" class="th">学习进度</th>
                                        <th width="15%">操作</th>
                                    </tr>
                                    {% for index2, item2 in courseItem[index] %}
                                        <tr>
                                            <td>{{ index2 + 1 }}</td>
                                            <td class="th">{{ index2 + 1 }}-{{ item2.name }}</td>
                                            <td class="th_num">
                                                <div class="long" data-num="100">
                                                    <div class="short" data-num="80"></div>
                                                </div>
                                                <div class="num">100%</div>
                                            </td>
                                            <td>
                                                <button vodeoSrc="{{ item2.video }}"  class="btn videoBtn">点播</button>
                                            </td>
                                        </tr>
                                    {% endfor %}
                                </table>
                            </div>
                            <div class="cur">
                                <table>
                                    <tr>
                                        <th width="5%">序号</th>
                                        <th width="80%" class="th">标题</th>
                                        <th width="15%">学分</th>
                                    </tr>
                                    {% for index3, item3 in courseItem[index] %}
                                        <tr>
                                            <td>{{ index3 + 1 }}</td>
                                            <td class="th">{{ index3 + 1 }}-{{ item3.name }}</td>
                                            <td>{{ item3.rank }}</td>
                                        </tr>
                                    {% endfor %}
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="del"></div>
            </div>
        </div>
    {% endfor %}
    <script type="text/javascript">
        $(function () {
            $(".th_num .short").each(function () {
                var num1 = $(this).data("num");
                var num2 = $(this).parents(".long").data("num");
                var num = parseFloat(num1 / num2) * 100 + "%";
                $(this).width(num).parents(".long").siblings(".num").text(num);
            });

            $(".tit a").click(function () {
                var index = $(this).index();
                $(this).addClass("on").siblings("a").removeClass("on");
                $(".switch .cur").eq(index).show().siblings(".cur").hide();
            }).eq(0).trigger('click');

            $(".js_btn").click(function () {
                popup(".popup_buy" + $(this).attr('index'));
            });

            $(".td_a").click(function () {
                popup(".popup_details");
            });

            $('.kaoshi').click(function () {
                location.href = '/paper/index'
            })

            $('.videoBtn').click(function () {

                window.open('/video/' + encodeURIComponent($(this).attr('vodeoSrc')))
            })

        });
    </script>
{% endblock %}
