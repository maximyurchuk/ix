{% extends '//die/proxy.sh' %}

{% block install %}
cd ${out}; mkdir -p etc/services/vt{{slot}}; cd etc/services/vt{{slot}}

cat << EOF > daemon
fixtty /dev/tty{{slot}}
reset
exec subreaper setsid openvt -c {{slot}} -f -e /bin/login
EOF

cat << EOF > run
#!/bin/sh
exec srv vt{{slot}} /bin/sh ${PWD}/daemon
EOF

chmod +x run daemon
{% endblock %}
