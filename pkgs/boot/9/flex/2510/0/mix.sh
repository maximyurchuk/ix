{% extends '//mix/template/template.sh' %}

{% block fetch %}
# url https://github.com/westes/flex/archive/refs/tags/flex-2-5-10.tar.gz
# md5 4e57770c7dfc2b1d113729f62d6ae3b6
{% block flex_extra_fetch %}
# url https://gitlab.com/giomasce/flex/-/raw/506e9605baf4638ba47d37133c348df1385ef06c/scan.lex.l
# md5 3a8bef1b4d0b0823aff29ff0dc76d8c3
{% endblock %}
{% endblock %}

{% block bld_deps %}
boot/9/lex/mix.sh
boot/4/byacc/mix.sh
boot/8/env/std/mix.sh
{% endblock %}

{% block unpack %}
${untar} ${src}/flex* && cd flex*
{% endblock %}

{% block build %}
cat << EOF > config.h
#define HAVE_DCGETTEXT 1
#define HAVE_GETTEXT 1
#define HAVE_INTTYPES_H 1
#define HAVE_MALLOC_H 1
#define HAVE_MEMORY_H 1
#define HAVE_STDBOOL_H 1
#define HAVE_STDINT_H 1
#define HAVE_STDLIB_H 1
#define HAVE_STRINGS_H 1
#define HAVE_STRING_H 1
#define HAVE_SYS_STAT_H 1
#define HAVE_SYS_TYPES_H 1
#define HAVE_UNISTD_H 1
#define PACKAGE "flex"
#define PACKAGE_BUGREPORT "help-flex@gnu.org"
#define PACKAGE_NAME "flex"
#define PACKAGE_STRING "flex 2.5.10"
#define PACKAGE_TARNAME "flex"
#define PACKAGE_URL ""
#define PACKAGE_VERSION "2.5.10"
#define STDC_HEADERS 1
#define VERSION "2.5.11"
#define YYTEXT_POINTER 1
EOF

byacc -d parse.y
cp y.tab.h parse.h
cp y.tab.c parse.c

{% block invoke_lex %}
lex ${src}/scan.lex.l
sed -e 's|yylex|flexscan|g' < lex.yy.c > scan.c
{% endblock %}

dash ./mkskel.sh ./flex.skl > skel.c

for x in ccl dfa ecs gen main misc nfa parse scan skel sym tblcmp yylex options scanopt buf; do
    clang -c -o ${x}.o ${x}.c
done

clang -o flex *.o
{% endblock %}

{% block install %}
mkdir ${out}/bin && cp flex ${out}/bin/
{% endblock %}
