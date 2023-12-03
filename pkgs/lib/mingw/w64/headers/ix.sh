{% extends '//lib/mingw/w64/t/ix.sh' %}

{% block unpack %}
{{super()}}
cd mingw-w64-headers
{% endblock %}

{% block configure_flags %}
{{super()}}
--enable-sdk=all
{% endblock %}

{% block env %}
export CPPFLAGS="-isystem${out}/include \${CPPFLAGS}"
{% endblock %}
