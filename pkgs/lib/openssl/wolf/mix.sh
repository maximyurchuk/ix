{% extends '//mix/template/c_std.sh' %}

{% block lib_deps %}
lib/c/mix.sh
lib/wolfssl/mix.sh
{% endblock %}

{% block build %}
>empty.c
clang -c empty.c -o empty.o
ar q libempty.a empty.o
{% endblock %}

{% block install %}
mkdir -p ${out}/lib/pkgconfig

cp libempty.a ${out}/lib/libcrypto.a
cp libempty.a ${out}/lib/libssl.a
cp -R ${lib_wolfssl}/include/wolfssl ${out}/include

cat << EOF > ${out}/lib/pkgconfig/openssl.pc
prefix=${out}
exec_prefix=\${prefix}
libdir=\${exec_prefix}/lib
includedir=\${prefix}/include

Name: openssl
Description: wrapper for wolfssl C library.
Version: 1.1.1
Libs: -L\${libdir}
Cflags: -I\${includedir}
EOF
{% endblock %}

{% block env %}
export COFLAGS="--with-ssl=${out} --with-openssl=${out} --with-openssldir=${out} --with-ssl-dir=${out} \${COFLAGS}"
{% endblock %}
