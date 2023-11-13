{% extends 't/ix.sh' %}

{% block configure_flags %}
{{super()}}
# conflict with macos sdk
--without-readline
--enable-libgdbm-compat
{% endblock %}

{% block install %}
{{super()}}
cd ${out}/lib
ln -s libgdbm_compat.a libdbm.a
{% endblock %}

{% block env %}
export COFLAGS="--with-gdbm=${out} \${COFLAGS}"
{% endblock %}
