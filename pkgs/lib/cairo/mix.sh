{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
https://cairographics.org/snapshots/cairo-1.17.4.tar.xz
bf9d0d324ecbd350d0e9308125fa4ce0
{% endblock %}

{% block lib_deps %}
lib/c/mix.sh
{% if target.os == 'darwin' %}
lib/darwin/framework/ApplicationServices/mix.sh
lib/darwin/framework/CoreGraphics/mix.sh
{% endif %}
lib/png/mix.sh
lib/lzo/mix.sh
lib/pixman/mix.sh
lib/opengl/mix.sh
lib/freetype/mix.sh
lib/fontconfig/mix.sh
{% endblock %}

{% block bld_tool %}
dev/build/auto/conf/2/69/mix.sh
dev/build/auto/make/1/16/mix.sh
{% endblock %}

{% block configure_flags %}
--enable-ft=yes
--enable-fc=yes
--enable-trace=no
--enable-egl=auto
--enable-glesv2=auto
{% endblock %}

{% block setup %}
export ax_cv_c_float_words_bigendian=no
{% endblock %}
