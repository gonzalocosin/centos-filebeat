FROM centos:7

RUN rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch

COPY ./elastic.repo /etc/yum.repos.d/elastic.repo

RUN yum install filebeat -y

RUN chkconfig --add filebeat

COPY ./filebeat.yml /etc/filebeat/filebeat.yml

RUN chmod go-w /etc/filebeat/filebeat.yml

COPY ./entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
