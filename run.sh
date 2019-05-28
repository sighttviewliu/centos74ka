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

## For testing
docker -D run -it --rm --name centoska74 --privileged -p 18880:80 -v $(pwd)/keepalived.conf:/etc/keepalived/keepalived.conf -v $(pwd)/sysctl.conf:/etc/sysctl.conf -v $(pwd)/ipvsadm:/etc/sysconfig/ipvsadm centoska:7.4 /usr/sbin/init

## For testing
docker -D run -it --rm --name centoska74 --privileged -p 18880:80 -v $(pwd)/keepalived.conf:/etc/keepalived/keepalived.conf -v $(pwd)/sysctl.conf:/etc/sysctl.conf -v $(pwd)/ipvsadm:/etc/sysconfig/ipvsadm -v $(pwd)/config:/etc/selinux/config centoska:7.4

## For testing
docker -D run -it --rm --name centoska74 --privileged -p 18880:80 -v $(pwd)/keepalived.conf:/etc/keepalived/keepalived.conf -v $(pwd)/sysctl.conf:/etc/sysctl.conf -v $(pwd)/ipvsadm:/etc/sysconfig/ipvsadm -v $(pwd)/ipvsadm:/etc/default/ipvsadm -v $(pwd)/config:/etc/selinux/config centoska:7.4

## For testing
docker -D run -it --rm --name centoska74 --privileged -p 18880:80 -v $(pwd)/keepalived.conf.master:/etc/keepalived/keepalived.conf -v $(pwd)/sysctl.conf:/etc/sysctl.conf -v $(pwd)/ipvsadm_master:/etc/sysconfig/ipvsadm -v $(pwd)/ipvsadm_master:/etc/default/ipvsadm -v $(pwd)/config:/etc/selinux/config centoska:7.4

## For testing
docker -D run -it --rm --name centoska74 --privileged -p 38080:80 -v $(pwd)/keepalived.conf.master:/etc/keepalived/keepalived.conf -v $(pwd)/sysctl.conf:/etc/sysctl.conf -v $(pwd)/ipvsadm_master:/etc/sysconfig/ipvsadm -v $(pwd)/config:/etc/selinux/config centoska:7.4
