#!/bin/bash
set -e

wait-for-it.sh -t 120 elasticsearch:9200

logstash -f /etc/logstash/conf.d/
