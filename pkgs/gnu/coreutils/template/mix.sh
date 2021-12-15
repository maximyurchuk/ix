{% extends '//mix/template/autohell.sh' %}

{% block bld_libs %}
lib/c/mix.sh
lib/intl/mix.sh
lib/iconv/mix.sh
lib/sigsegv/mix.sh
{% endblock %}

{% block bld_tool %}
gnu/patch/mix.sh
{% endblock %}

{% block std_box %}
box/boot/mix.sh
{% endblock %}

{% block configure_flags %}
--libexecdir="${out}/bin"
--enable-no-install-program=stdbuf
--enable-single-binary=symlinks
{% endblock %}

{% block patch %}
(cd src && patch) << EOF
{% include 'uname.patch' %}
EOF
{% endblock %}
