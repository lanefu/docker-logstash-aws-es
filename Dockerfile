FROM logstash:7.5.2

RUN mv /usr/share/logstash/config/logstash.yml /usr/share/logstash/config/logstash.yml.disabled

USER 1000

RUN logstash-plugin install logstash-output-amazon_es

