FROM elasticsearch:1.7

RUN cat /etc/elasticsearch/elasticsearch.yml

WORKDIR /var/www
