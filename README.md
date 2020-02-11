# docker-logstash-aws-es
Dockerfile to build logstash with amazon-es plugin installed
Disables Xpack config file

[![Docker Repository on Quay](https://quay.io/repository/lanefu/logstash-aws-es/status "Docker Repository on Quay")](https://quay.io/repository/lanefu/logstash-aws-es)

## Suggested Improvements
[ ] multiarch build based on official dockerfile
[ ] dockerfile entrypoint to support aws config within container?


## usage

map your `logstash.conf` to `/usr/share/logstash/pipeline/logstash.conf`



### example logstash.conf

```
input {
  beats {
    port => 5044
  }
  tcp {
      port => 5000
      codec => json
    }
  udp {
      port => 5000
      type => syslog
}
  
file {
    path => [ "/var/log/messages", "/usr/local/var/log/*.log" ]
    type => "syslog"
  }
}


output {
#  stdout {
#    codec => rubydebug
#  }


  amazon_es {
    hosts => ["search-mydomain-asdfjadsfasdfads.us-east-1.es.amazonaws.com"]
    region => "us-east-1"
        index => "ekslogs"
    aws_access_key_id => "AKIkey........"
    aws_secret_access_key => 'secret'
    }
}


```

