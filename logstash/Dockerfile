FROM logstash:5.2

ENV REFRESHED_AT 2017-12-18

WORKDIR /usr/share/logstash
RUN ./bin/logstash-plugin install logstash-filter-translate
RUN ./bin/logstash-plugin install logstash-input-beats

COPY ./docker-entrypoint.sh /docker-entrypoint.sh
COPY ./wait-for-it.sh /bin/wait-for-it.sh
RUN chmod +x /bin/wait-for-it.sh
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
