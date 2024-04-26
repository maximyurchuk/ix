{% extends '//die/c/kconfig.sh' %}

{% block fetch %}
https://github.com/landley/toybox/archive/refs/tags/0.8.11.tar.gz
sha:83a3a88cbe1fa30f099c2f58295baef4637aaf988085aaea56e03aa29168175d
{% endblock %}

{% block bld_libs %}
lib/c
lib/kernel
{% endblock %}

{% block bld_tool %}
bld/bash
bin/gzip
{% endblock %}

{% block setup_target_flags %}
export NOSTRIP=yes
{% endblock %}

{% block make_flags %}
PREFIX=${out}/bin
{% endblock %}

{% block make_install_target %}
install_flat
{% endblock %}

{% block patch %}
find . -type f | while read l; do
    sed -e 's|#!/bin/bash|#!/usr/bin/env bash|' -i ${l}
done
{{super()}}
{% endblock %}
