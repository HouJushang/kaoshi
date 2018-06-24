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
                        <tr>
                            <td>1</td>
                            <td>2018</td>
                            <td>建设类</td>
                            <td><a href="#" class="td_a">2018建设类专业课</a></td>
                            <td>60</td>
                            <td>57%</td>
                            <td>--</td>
                            <td>
                                <button class="btn js_btn" id="xuexi">学习</button>
                                <button class="btn kaoshi">考试</button>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>2018</td>
                            <td>建设类</td>
                            <td><a href="#" class="td_a">2018建设类专业课</a></td>
                            <td>60</td>
                            <td>57%</td>
                            <td>--</td>
                            <td>
                                <button class="btn js_btn" id="xuexi">学习</button>
                                <button class="btn no kaoshi">考试</button>
                            </td>
                        </tr>
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
    <div class="popup popup_buy">
        <div class="cont" style="height: 500px;">
            <div class="tit">2018年建设类专业课</div>
            <div class="popup_con">
                <div class="top">
                    <p>课程名称：2018建设类专业课</p>
                    <p>学分：60</p>
                    <p>课程性质：必修</p>
                    <p>考试形式：不考试</p>
                    <p>收费标准：320元</p>
                </div>
                <div class="end">
                    <div class="refresh"></div>
                    <div class="tit">
                        <a class="on">课程列表</a>
                        <a>学分组成</a>
                    </div>
                    <div class="switch">
                        <div class="cur">
                            <table>
                                <tr>
                                    <th width="5%">序号</th>
                                    <th width="40%" class="th">课程名称(含学历转岗)</th>
                                    <th width="40%" class="th">学习进度</th>
                                    <th width="15%">操作</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td class="th">01-工程与法律概述</td>
                                    <td class="th_num">
                                        <div class="long" data-num = "100">
                                            <div class="short" data-num = "80"></div>
                                        </div>
                                        <div class="num">100%</div>
                                    </td>
                                    <td><button class="btn">点播</button></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td class="th">02-工程行政许可与监管</td>
                                    <td class="th_num">
                                        <div class="long" data-num = "5">
                                            <div class="short" data-num = "2.5"></div>
                                        </div>
                                        <div class="num">100%</div>
                                    </td>
                                    <td><button class="btn no dianBo">点播</button></td>
                                </tr>
                            </table>
                        </div>
                        <div class="cur">
                            <table>
                                <tr>
                                    <th width="5%">序号</th>
                                    <th width="80%" class="th">标题</th>
                                    <th width="15%">学分</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td class="th">01-工程与法律概述</td>
                                    <td>10</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td class="th">02-工程行政许可与监管</td>
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

    <div class="popup popup_details">
        <div class="cont">
            <div class="tit">通知公告</div>
            <div class="popup_con">
                <div class="details">
                    <div class="top">
                        <h2>关于开展2016年度宿松县林业系列专业技术人员 继续教育培训的通知</h2>
                        <div class="explain">
                            <span>发布时间：2018-03-20</span>
                            <span>浏览次数：26</span>
                        </div>
                    </div>
                    <div class="content">
                        <p style="line-height: 1.5em;">
                            <span style="font-size: 14px; color: rgb(89, 89, 89);">各有关单位：</span>
                        </p>
                        <p style="line-height: 1.5em;">
                            <span style="font-size: 14px; color: rgb(89, 89, 89);">为贯彻落实《安徽省专业技术人员继续教育实施意见》，提高专业技术人员的专业水平和综合素质，根据市人社局《关于转发省人社厅《关于贯彻实施&lt;专业技术人员继续教育规定&gt;的通知》的通知》（宜人社秘〔2016〕124号）文件通知精神，经市、县人社部门备案，我基地定于2016年9月13日开始举办宿松县2016年度林业系列专业技术人员继续教育培训。现将有关事项通知如下：</span>
                        </p>
                        <p style="line-height: 1.5em;">
                            <span style="font-size: 14px; color: rgb(89, 89, 89);">一、培训对象</span>
                        </p>
                        <p style="line-height: 1.5em;">
                            <span style="font-size: 14px; color: rgb(89, 89, 89);">宿松县林业系列专业技术人员。</span>
                        </p>
                        <p style="line-height: 1.5em;">
                            <span style="font-size: 14px; color: rgb(89, 89, 89);">&nbsp;二、培训内容</span>
                        </p>
                        <p style="line-height: 1.5em;">
                            <span style="font-size: 14px; color: rgb(89, 89, 89);">全面深化改革实现文明发展；湿地保护；生态林业；林下产业；互联网+；薄壳山核桃育林技术；海绵城市建设；网络安全</span>
                        </p>
                        <p style="line-height: 1.5em;">
                            <span style="font-size: 14px; color: rgb(89, 89, 89);">三、培训方式及学时登记</span>
                        </p>
                        <p style="line-height: 1.5em;">
                            <span style="font-size: 14px; color: rgb(89, 89, 89);">此次培训班采取专家面授和网络学习相结合模式。结业考试合格后，登记继续教育学时。</span>
                        </p>
                        <p style="line-height: 1.5em;">
                            <span style="font-size: 14px; color: rgb(89, 89, 89);">四、具体事项</span>
                        </p>
                        <p style="line-height: 1.5em;">
                            <span style="font-size: 14px; color: rgb(89, 89, 89);">1、培训时间：2016年9月13日报到，14日—19日面授；网课学习由学员登录“安徽省教育培训网”听课。</span>
                        </p>
                        <p style="line-height: 1.5em;">
                            <span style="font-size: 14px; color: rgb(89, 89, 89);">2、面授地点：孚玉山宾馆三号楼三楼</span>
                        </p>
                        <p style="line-height: 1.5em;">
                            <span style="font-size: 14px; color: rgb(89, 89, 89);">3、培训费用：本次培训收取面授费、网课费、资料费每人共计350元；往返交通费及食宿费用学员自理。</span>
                        </p>
                        <p style="line-height: 1.5em;">
                            <span style="font-size: 14px; color: rgb(89, 89, 89);">4、报名方式：各单位请于2016年9月11日前将汇总的《专业技术人员继续教育报名汇总表》及报名费报到安徽宿松鹏程职业专修学校。</span>
                        </p>
                        <p style="line-height: 1.5em;">
                            <span style="font-size: 14px; color: rgb(89, 89, 89);">5、培训要求:根据人社部《专业技术人员继续教育规定》，专业技术人员每年的继续教育学习时间不得少于90学时，其中公需课30学时，专业课60学时。请各单位按照《规定》要求，为本单位专业技术人员参加培训提供便利；各参训人员须提前安排好自己的工作，学习期间不得请假。</span>
                        </p>
                        <p style="line-height: 1.5em;">
                            <span style="font-size: 14px; color: rgb(89, 89, 89);">6、报名材料：报名时请携带继续教育证书，新办人员需提供身份证复印件及2张二寸蓝底照片。</span>
                        </p>
                        <p style="line-height: 1.5em;">
                            <span style="font-size: 14px; color: rgb(89, 89, 89);">为贯彻落实《安徽省专业技术人员继续教育实施意见》，提高专业技术人员的专业水平和综合素质，根据市人社局《关于转发省人社厅《关于贯彻实施&lt;专</span>
                        </p>
                        <p style="line-height: 1.5em;">
                            <span style="font-size: 14px; color: rgb(89, 89, 89);">宿松县林业系列专业技术人员。</span>
                        </p>
                        <p style="line-height: 1.5em;">
                            <span style="font-size: 14px; color: rgb(89, 89, 89);">7、联系方式：</span>
                        </p>
                        <p style="line-height: 1.5em;">
                            <span style="font-size: 14px; color: rgb(89, 89, 89);">联系地址：民主东路365号宿松鹏程职业专修学校</span>
                        </p>
                        <p style="line-height: 1.5em;">
                            <span style="font-size: 14px; color: rgb(89, 89, 89);">联系电话： 0556-7817550 &nbsp;</span>
                        </p>
                        <p style="line-height: 1.5em;">
                            <span style="font-size: 14px; color: rgb(89, 89, 89);">联 系 人：刘倩15178612015 余谦：18075381550</span>
                        </p>
                        <p style="line-height: 1.5em;">
                            <span style="font-size: 14px; color: rgb(89, 89, 89);">&nbsp;E-Mail ：411033022@qq.com</span>
                        </p>
                        <p style="line-height: 1.5em;">
                            <span style="font-size: 14px; color: rgb(89, 89, 89);">在线教育平台：www.ahsjypxw.com(安徽省教育培训网）</span>
                        </p>
                        <p>
                            <br/>
                        </p>
                        <p style="line-height: 1.5em;">
                            <span style="font-size: 14px; color: rgb(89, 89, 89);">二〇一六年八月二十六日</span>
                        </p>
                        <p>
                            <br/>
                        </p>

                    </div>
                </div>
            </div>
            <div class="del"></div>
        </div>
    </div>
    <script type="text/javascript">
        $(function(){
            $(".th_num .short").each(function(){
                var num1 = $(this).data("num");
                var num2 = $(this).parents(".long").data("num");
                var num = parseFloat(num1/num2)*100+"%";
                $(this).width(num).parents(".long").siblings(".num").text(num);
            });

            $(".tit a").click(function(){
                var index = $(this).index();
                $(this).addClass("on").siblings("a").removeClass("on");
                $(".switch .cur").eq(index).show().siblings(".cur").hide();
            }).eq(0).trigger('click');

            $(".js_btn").click(function(){
                popup(".popup_buy");
            });

            $(".td_a").click(function(){
                popup(".popup_details");
            });

            $('.kaoshi').click(function() {
                location.href = '/paper/index'
            })

            $('.dianBo').click(function() {

            })

        });
    </script>
{% endblock %}
