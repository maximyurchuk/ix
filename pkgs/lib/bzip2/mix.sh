{% extends '//mix/template/make.sh' %}

{% block fetch %}
https://sourceware.org/pub/bzip2/bzip2-1.0.8.tar.gz
67e051268d0c475ea773822f7500d0e5
{% endblock %}

{% block std_box %}
box/boot/mix.sh
{% endblock %}

{% block lib_deps %}lib/c/mix.sh{% endblock %}
