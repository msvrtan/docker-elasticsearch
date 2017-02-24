FROM elasticsearch:1.7

RUN echo script.groovy.sandbox.enabled: true >> /etc/elasticsearch/elasticsearch.yml
RUN echo script.engine.groovy.inline.aggs: on >> /etc/elasticsearch/elasticsearch.yml
RUN echo script.engine.groovy.inline.search: on >> /etc/elasticsearch/elasticsearch.yml
RUN echo script.engine.groovy.inline.update: on >> /etc/elasticsearch/elasticsearch.yml
RUN echo script.disable_dynamic: false  >> /etc/elasticsearch/elasticsearch.yml

RUN cat /etc/elasticsearch/elasticsearch.yml

EXPOSE 9200 9300
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["elasticsearch"]
