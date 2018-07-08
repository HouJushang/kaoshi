{% extends '../layout/layout.swig' %}
    {% block content %}
        <div style="width: 800px; height: 500px; margin: 150px auto 50px auto">
            <video controls="controls" src="/{{ videoSrc }}" style="width: 100%; height: 100%;"></video>
        </div>
    {% endblock %}
