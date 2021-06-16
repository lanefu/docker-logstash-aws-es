FROM logstash:7.3.12

RUN mv /usr/share/logstash/config/logstash.yml /usr/share/logstash/config/logstash-xpack.yml.disable
USER 1000
RUN touch /usr/share/logstash/config/logstash.yml
RUN logstash-plugin install logstash-output-amazon_es
RUN logstash-plugin install logstash-output-loki

