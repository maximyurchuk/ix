{% extends '//mix/template/make.sh' %}

{% block fetch %}
https://github.com/Novum/vkQuake/archive/refs/tags/1.12.1.tar.gz
7c090dd5e5e8bf3474addad4f1558d37
{% endblock %}

{% block unpack %}
{{super()}}
cd Quake
{% endblock %}

{% block bld_libs %}
lib/c/mix.sh
lib/mad/mix.sh
lib/sdl/2/mix.sh
lib/xiph/ogg/mix.sh
lib/xiph/flac/mix.sh
lib/xiph/vorbis/mix.sh
lib/vulkan/loader/mix.sh
lib/vulkan/driver/mix.sh
{% endblock %}
