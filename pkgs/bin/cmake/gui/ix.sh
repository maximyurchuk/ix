{% extends '//bin/cmake/ix.sh' %}

{% block bld_libs %}
lib/uv
lib/qt/6/base
lib/qt/6/deps
{{super()}}
{% endblock %}

{% block bld_tool %}
bld/qt/6
{{super()}}
{% endblock %}

{% block cmake_flags %}
{{super()}}
BUILD_QtDialog=ON
{% endblock %}
