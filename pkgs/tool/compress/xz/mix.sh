{% extends '//mix/template/proxy.sh' %}

{% block bld_deps %}
lib/xz/mix.sh
env/tools/mix.sh
{% endblock %}

{% block install %}
cd ${out} && cp -R $(dirname $(command -v xz)) ./
{% endblock %}
