FROM elasticsearch:1.7

COPY elasticsearch.yml /etc/elasticsearch/elasticsearch.yml
RUN cat /etc/elasticsearch/elasticsearch.yml

EXPOSE 9200 9300
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["elasticsearch"]
