docker rm -f nexus
docker rmi qianchun27/nexus:3.2.0
docker build -t qianchun27/nexus:3.2.0 -f Dockerfile .
docker run --privileged -t -d -p 8081:8080 --name nexus qianchun27/nexus:3.2.0 /usr/sbin/init;
docker network connect wind_net nexus
docker exec -it nexus /bin/bash
