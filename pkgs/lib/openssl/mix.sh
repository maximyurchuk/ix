{% extends '//mix/template/make.sh' %}

{% block fetch %}
https://www.openssl.org/source/old/1.1.1/openssl-1.1.1j.tar.gz
cccaa064ed860a2b4d1303811bf5c682
{% endblock %}

{% block bld_deps %}
{{'lib/linux/mix.sh' | linux}}
dev/build/make/mix.sh
dev/lang/perl5/mix.sh
env/std/mix.sh
{% endblock %}

{% block setup %}
export AR=ar
export RANLIB=ranlib
{% endblock %}

{% block configure %}
PLATFORM_darwin_arm64="darwin64-arm64-cc"
PLATFORM_darwin_x86_64="darwin64-x86_64-cc"
PLATFORM_linux_x86_64="linux-x86_64-clang"

PLATFORM=$PLATFORM_{{mix.platform.target.os}}_{{mix.platform.target.arch}}

perl ./Configure \
    ${PLATFORM}       \
    no-asm            \
    threads           \
    no-shared         \
    no-dso            \
    no-hw             \
    no-tests          \
    --prefix="${out}" \
    --openssldir="${out}"
{% endblock %}

{% block env %}
export COFLAGS="--with-ssl=${out} --with-openssl=${out} --with-openssldir=${out} --with-ssl-dir=$out \${COFLAGS}"
{% endblock %}
