{% extends '//lib/python/3/10/mix.sh' %}

{% block lib_deps %}
{% endblock %}

{% block bld_libs %}
lib/c/mix.sh
lib/z/mix.sh
lib/ffi/mix.sh
{% if target.os == 'darwin' %}
lib/darwin/framework/SystemConfiguration/mix.sh
{% endif %}
{{super()}}
{% endblock %}

{% block std_box %}
box/boot/mix.sh
{% endblock %}

{% block extra_modules %}
{% endblock %}

{% block extra_tests %}
{% endblock %}

{% block setup %}
{% endblock %}

{% block env %}
{% endblock %}
