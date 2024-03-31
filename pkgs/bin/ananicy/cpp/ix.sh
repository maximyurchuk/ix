{% extends '//die/c/cmake.sh' %}

{% block git_repo %}
https://gitlab.com/ananicy-cpp/ananicy-cpp
{% endblock %}

{% block git_branch %}
v1.0.2
{% endblock %}

{% block git_sha %}
647783ec95e2fcd78bc55fb679b1e9c3ea62824c4690e3df238e8913af9fc8ca
{% endblock %}

{% block bld_libs %}
lib/c
lib/c++
lib/kernel
lib/spdlog
lib/execinfo
lib/fmt/polyfill
lib/json/nlohmann
lib/jthread/polyfill
{% endblock %}

{% block patch %}
sed -e 's|std::formatter|fmt::formatter|' -i include/utility/argument_parser.hpp
{% endblock %}

{% block cmake_flags %}
ENABLE_SYSTEMD=OFF
USE_EXTERNAL_JSON=ON
USE_EXTERNAL_SPDLOG=ON
USE_EXTERNAL_FMTLIB=ON
{% endblock %}

{% block cpp_missing %}
unistd.h
sys/time.h
{% endblock %}

{% block setup_target_flags %}
export CXXFLAGS="-include sstream ${CXXFLAGS}"
{% endblock %}

{% block cpp_defines %}
SCHED_ISO=4
__priority_which_t=int
{% endblock %}

{% block build_flags %}
shut_up
{% endblock %}

{% block git_version %}
v3
{% endblock %}
