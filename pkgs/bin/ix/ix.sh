{% extends '//die/hub.sh' %}

{% block run_deps %}
bin/ix/bsdtar
bin/ix/fetcher
bin/ix/assemble
bin/python/frozen
{% endblock %}
