FROM logstash:7.5.2

RUN mv /usr/share/logstash/config/logstash.yml /usr/share/logstash/config/logstash-xpack.yml.disable
USER 1000
RUN touch /uisr/share/logstash/logstash.yml
RUN logstash-plugin install logstash-output-amazon_es

