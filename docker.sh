docker rm -f nexus_lastest
docker rmi qianchun27/nexus:lastest
docker build -t qianchun27/nexus:lastest -f Dockerfile .
docker run --privileged -t -d -p 8084:8084 --name nexus_lastest qianchun27/nexus:lastest /usr/sbin/init;
docker network connect wind_net nexus_lastest
docker exec -it nexus_lastest /bin/bash
