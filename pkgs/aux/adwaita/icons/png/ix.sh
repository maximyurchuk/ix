{% extends '//die/proxy.sh' %}

{% block bld_data %}
aux/adwaita/icons
{% endblock %}

{% block bld_tool %}
bin/inkscape
{% endblock %}

{% block build %}
fr=${aux_adwaita_icons}/share/icons/default/scalable
export HOME=${TMPDIR}
(cd ${fr}; find . -type f -name '*.svg') | while read l; do
    for n in 16 24 32 48; do
        p=${n}x${n}/${l}
        p=$(echo ${p} | sed -e 's|.svg|.png|')

        mkdir -p ${out}/share/icons/default/$(dirname ${p})

cat << EOF
file-open:${fr}/${l}
export-type:png
export-filename:${out}/share/icons/default/${p}
export-width:${n}
export-do
EOF
    done
done | inkscape --shell

mkdir ${out}/fix

cat << EOF > ${out}/fix/fix-adwaita.sh
cd share/icons
rm -f Adwaita
ln -s default Adwaita
EOF
{% endblock %}
