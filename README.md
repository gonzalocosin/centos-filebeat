# Centos-filebeat


#### Build the project

```bash
docker-compose build
```


#### Config File
filebeat.yml is the example file. Modify as you wish.


#### Start Filebeat:

```
$ docker-compose run -e LOGSTASH_HOST=monitoring.xyz -e LOGSTASH_PORT=5044 -e SHIPPER_NAME=$(hostname) filebeat
```
