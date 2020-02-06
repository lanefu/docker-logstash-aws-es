FROM logstash:7.5.2

USER 1000

RUN logstash-plugin install logstash-output-amazon_es
