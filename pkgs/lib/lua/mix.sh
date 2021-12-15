{% extends '//mix/template/make.sh' %}

{% block fetch %}
https://www.lua.org/ftp/lua-5.4.3.tar.gz
ef63ed2ecfb713646a7fcc583cf5f352
{% endblock %}

{% block bld_libs %}
lib/c/mix.sh
lib/readline/mix.sh
{% endblock %}

{% block make_flags %}
INSTALL_TOP=${out}
{% endblock %}

{% block test %}
make test
{% endblock %}
