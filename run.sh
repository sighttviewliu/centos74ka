## For testing
docker run -it --rm --name centoska74 centoska:7.4 /bin/bash

## For testing
docker run -it --rm --name centoska74 --privileged centoska:7.4 /usr/sbin/init

## For testing
docker -D run -it --rm --name centoska74 --privileged centoska:7.4 /usr/sbin/init

## For testing
docker -D run -it --rm --name centoska74 --privileged -p 18880:80 centoska:7.4 /usr/sbin/init

## For testing
docker -D run -it --rm --name centoska74 --privileged -p 18880:80 -v $(pwd)/keepalived.conf:/etc/keepalived/keepalived.conf centoska:7.4 /usr/sbin/init