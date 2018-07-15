{% extends '../layout/layout.swig' %}
{% block content %}
    <div class="h130"></div>
    <div class="wrap">
        <div class="w1200 clr">
            <form id="parperForm">
                <input type="hidden" name="parperId" value="{{ parper.id }}">
                <div class="paper_left fl">
                    <div class="tit">{{ parper.title }}</div>
                    <h2 class="topic"><span>单选题</span>（一共{{ radioOption.length }}题，每题{{ parper.radio_rank }}分）</h2>
                    <div class="paper_list">
                        {% for index, item in radioOption %}
                            <div class="list radioOptionList">
                                <div class="title">{{ index + 1 }}.{{ item.title }}</div>
                                <div class="tit_list on clr">
                                    <label>
                                        <input type="radio" value="A" name="radioOption[radioOption{{ item.id }}]">
                                        <i class="fl">A</i>
                                        <p>{{ item.optionA }}</p>
                                    </label>
                                </div>
                                <div class="tit_list clr">
                                    <label>
                                        <input type="radio" value="B" name="radioOption[radioOption{{ item.id }}]">
                                        <i class="fl">B</i>
                                        <p>{{ item.optionB }}</p>
                                    </label>
                                </div>
                                <div class="tit_list clr">
                                    <label>
                                        <input type="radio" value="C" name="radioOption[radioOption{{ item.id }}]">
                                        <i class="fl">C</i>
                                        <p>{{ item.optionC }}</p>
                                    </label>
                                </div>
                                <div class="tit_list clr">
                                    <label>
                                        <input type="radio" value="D" name="radioOption[radioOption{{ item.id }}]">
                                        <i class="fl">D</i>
                                        <p>{{ item.optionD }}</p>
                                    </label>
                                </div>
                            </div>
                        {% endfor %}
                    </div>
                    <h2 class="topic"><span>多选题</span>（一共{{ multipleOption.length }}题，每题{{ parper.multiple_rank }}分）
                    </h2>
                    <div class="paper_list">
                        {% for index, item in multipleOption %}
                            <div class="list multipleOptionList">
                                <div class="title">{{ index+1 }}.{{ item.title }}</div>
                                <div class="tit_list on clr">
                                    <label>
                                        <input type="checkbox" value="A" name="multipleOption[multipleOption{{ item.id }}][]">
                                        <i class="fl">A</i>
                                        <p>{{ item.optionA }}</p>
                                    </label>
                                </div>
                                <div class="tit_list clr">
                                    <label>
                                        <input type="checkbox" value="B" name="multipleOption[multipleOption{{ item.id }}][]">
                                        <i class="fl">B</i>
                                        <p>{{ item.optionB }}</p>
                                    </label>
                                </div>
                                <div class="tit_list clr">
                                    <label>
                                        <input type="checkbox" value="C" name="multipleOption[multipleOption{{ item.id }}][]">
                                        <i class="fl">C</i>
                                        <p>{{ item.optionC }}</p>
                                    </label>
                                </div>
                                <div class="tit_list clr">
                                    <label>
                                        <input type="checkbox" value="D" name="multipleOption[multipleOption{{ item.id }}][]">
                                        <i class="fl">D</i>
                                        <p>{{ item.optionD }}</p>
                                    </label>
                                </div>
                            </div>
                        {% endfor %}
                    </div>
                </div>
            </form>

            <div class="hand">
                <div class="title">
                    <span>剩余时间：<i>60分00秒</i></span>
                </div>
                <div class="test">
                    <button class="want tijiao">我要交卷</button>
                </div>

                <div class="answer">
                    <div class="tit">答题卡</div>
                    <div class="list">
                        <p class="h2">单选题</p>
                        <div class="li_list">
                            <ul class="clr radioOptionUl">
                                {% for index, item in radioOption %}
                                    <li>{{ index + 1 }}</li>
                                {% endfor %}
                            </ul>
                        </div>
                    </div>
                    <div class="list">
                        <p class="h2">多选题</p>
                        <div class="li_list">
                            <ul class="clr multipleOptionUl">
                                {% for index, item in multipleOption %}
                                    <li>{{ index + 1 }}</li>
                                {% endfor %}
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(function () {
            $("button.want").click(function () {
                $(".popup_paper").show();
                $(".popup_paper .cue").text("提交后不能撤回，您确定要交卷吗？");
                $(".popup_paper .bot,.h80").show();
                $("button.continue").show();
            });
            setTimeout(function () {
                $(".popup_paper").show();
                $(".popup_paper .cue").text("考试时间已经到了，请提交试卷！");
                $(".popup_paper .bot,.h80").show();
                $("button.continue").hide();
            }, 50000);

            $(".submission").click(function () {
                $(".popup_paper .cue").html("<span class='sus'>试卷提交成功！</span>").css("padding-bottom", "30px");
                $(".popup_paper .bot,.h80").hide();
                $(".popup_con").append("<p class='grade'>您本次的考试的成绩为<i>85</i>分</p>")

            });

            $('.tijiao').click(function () {
                if(!confirm('是否确认提交试卷')){
                    return false
                }
                $.ajax({
                    url: '/kaoshi/submit',
                    type: "POST",
                    data: $("#parperForm").serialize(),
                    dataType: "json",
                    success: function (e) {
                        if (e.code == 'success') {
                            alert("总分:" + e.data.totalRank + '考试结果：' + e.data.rank);
                            window.location='/learn/exam'
                        } else {
                            alert(e.message)
                            return false;
                        }
                    }
                })
            })
        });
    </script>
{% endblock %}







