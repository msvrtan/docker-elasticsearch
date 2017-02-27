FROM elasticsearch:1.7

RUN echo script.inline: true >> /etc/elasticsearch/elasticsearch.yml
RUN echo script.stored: true >> /etc/elasticsearch/elasticsearch.yml


RUN cat /etc/elasticsearch/elasticsearch.yml

EXPOSE 9200 9300
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["elasticsearch"]
