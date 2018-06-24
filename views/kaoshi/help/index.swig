{% extends '../layout/layout.swig' %}
{% block content %}
    <div class="h130"></div>
    <div class="wrap">
        <div class="w1200 clr">
            {% include '../left/helpLeft.swig' %}
            {{ helpLeft(category) }}
            <div class="package">
                <div class="bread">
                    当前位置：<a>帮主中心 &gt; </a><a>
                        {{ {'peixun': '培训流程', 'register': '在线注册', 'xuanke': '在线选课', 'jiaofei': '交费充值', 'xuexi': '在线学习', 'hege': '合格证明', 'changjian': '常见问题'}[category] }}
                    </a>
                </div>
                <div class="content">
                    <h2 class="title">常见问题解答</h2>
                    <dl>
                        <dd>
                            <p class="title">1、专业技术人员参加网上继续教育注册的用户名或密码忘记了，该如何找回？</p>
                            <p class="text">
                                答：密码忘记可以在用户登录页面点击【“找回密码”】，在输入框中输入注册时的真实姓名及身份证号及新密码进行重新设置。
                            </p>
                        </dd>
                        <dd>
                            <p class="title">2、专业技术人员参加网上继续教育注册的用户名或密码忘记了，该如何找回？</p>
                            <p class="text">
                                答：密码忘记可以在用户登录页面点击【“找回密码”】，在输入框中输入注册时的真实姓名及身份证号及新密码进行重新设置。
                            </p>
                        </dd>
                        <dd>
                            <p class="title">3、专业技术人员参加网上继续教育注册的用户名或密码忘记了，该如何找回？</p>
                            <p class="text">
                                答：密码忘记可以在用户登录页面点击【“找回密码”】，在输入框中输入注册时的真实姓名及身份证号及新密码进行重新设置。
                            </p>
                        </dd>
                        <dd>
                            <p class="title">4、专业技术人员参加网上继续教育注册的用户名或密码忘记了，该如何找回？</p>
                            <p class="text">
                                答：密码忘记可以在用户登录页面点击【“找回密码”】，在输入框中输入注册时的真实姓名及身份证号及新密码进行重新设置。
                            </p>
                        </dd>
                        <dd>
                            <p class="title">5、专业技术人员参加网上继续教育注册的用户名或密码忘记了，该如何找回？</p>
                            <p class="text">
                                答：密码忘记可以在用户登录页面点击【“找回密码”】，在输入框中输入注册时的真实姓名及身份证号及新密码进行重新设置。
                            </p>
                        </dd>
                    </dl>
                </div>
            </div>
        </div>
    </div>
{% endblock %}
