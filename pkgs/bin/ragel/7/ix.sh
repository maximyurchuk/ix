{% extends '//die/c/autorehell.sh' %}

{% block fetch %}
https://github.com/adrian-thurston/ragel/archive/refs/tags/7.0.4.tar.gz
sha:0f7c3866f82ba2552f1ae1f03b94170121a0ff8bac92c8e22c531d732fd20581
{% endblock %}

{% block bld_libs %}
lib/c
lib/c++
{% endblock %}
