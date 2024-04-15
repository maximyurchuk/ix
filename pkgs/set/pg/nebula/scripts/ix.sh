{% extends '//die/proxy.sh' %}

{% block install %}
mkdir -p ${out}/etc/nebula

base64 -d << EOF > ${out}/etc/nebula/ca
{{nebula_ca}}
EOF

base64 -d << EOF > ${out}/etc/nebula/crt
{{nebula_crt}}
EOF

base64 -d << EOF > ${out}/etc/nebula/key
{{nebula_key}}
EOF

base64 -d << EOF > ${out}/etc/nebula/config.yaml
{{nebula_config}}
EOF
{% endblock %}
