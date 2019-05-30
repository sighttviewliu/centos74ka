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

## For testing
docker -D run -it --rm --name centoska74 --privileged --network=backend -p 38080:80 -v $(pwd)/keepalived.conf.master:/etc/keepalived/keepalived.conf -v $(pwd)/sysctl.conf:/etc/sysctl.conf -v $(pwd)/ipvsadm_master:/etc/sysconfig/ipvsadm -v $(pwd)/config:/etc/selinux/config centoska:7.4

## For testing
docker network create --driver=bridge --subnet=10.48.80.0/24 backend
docker -D run -it --rm --name centoska74_0 --privileged --network=backend -p 38080:80 -v $(pwd)/keepalived.conf.master:/etc/keepalived/keepalived.conf -v $(pwd)/sysctl.conf:/etc/sysctl.conf -v $(pwd)/ipvsadm_master:/etc/sysconfig/ipvsadm -v $(pwd)/config:/etc/selinux/config centoska:7.4
docker -D run -it --rm --name centoska74_1 --privileged --network=backend -p 38081:80 -v $(pwd)/keepalived.conf.backup:/etc/keepalived/keepalived.conf -v $(pwd)/sysctl.conf:/etc/sysctl.conf -v $(pwd)/ipvsadm_backup:/etc/sysconfig/ipvsadm -v $(pwd)/config:/etc/selinux/config centoska:7.4

## For testing
docker network create --driver=bridge --subnet=10.48.80.0/24 backend
docker network create --driver=bridge --subnet=192.168.100.0/24 frontend
#### Option 1
docker -D run -it --rm --name centoska74 --privileged --network=backend -p 38080:80 -v $(pwd)/keepalived.conf.master:/etc/keepalived/keepalived.conf -v $(pwd)/sysctl.conf:/etc/sysctl.conf -v $(pwd)/ipvsadm_master:/etc/sysconfig/ipvsadm -v $(pwd)/config:/etc/selinux/config centoska:7.4
docker network connect frontend centoska74
#### Option 2
docker -D create -it --rm --name centoska74 --privileged --network=backend -p 38080:80 -v $(pwd)/keepalived.conf.master:/etc/keepalived/keepalived.conf -v $(pwd)/sysctl.conf:/etc/sysctl.conf -v $(pwd)/ipvsadm_master:/etc/sysconfig/ipvsadm -v $(pwd)/config:/etc/selinux/config centoska:7.4
docker network connect frontend centoska74
docker start centoska74

## For testing
docker network create --driver=bridge --subnet=10.48.80.0/24 backend
docker network create --driver=bridge --subnet=192.168.100.0/24 frontend
#### Option 1
docker -D run -it --rm --name centoska74 --privileged --network=backend --ip 10.48.80.11 -p 38080:80 -v $(pwd)/keepalived.conf.master:/etc/keepalived/keepalived.conf -v $(pwd)/sysctl.conf:/etc/sysctl.conf -v $(pwd)/ipvsadm_master:/etc/sysconfig/ipvsadm -v $(pwd)/config:/etc/selinux/config centoska:7.4
docker network connect --ip 192.168.100.222 frontend centoska74
#### Option 2
docker -D create -it --rm --name centoska74 --privileged --network=backend --ip 10.48.80.11 -p 38080:80 -v $(pwd)/keepalived.conf.master:/etc/keepalived/keepalived.conf -v $(pwd)/sysctl.conf:/etc/sysctl.conf -v $(pwd)/ipvsadm_master:/etc/sysconfig/ipvsadm -v $(pwd)/config:/etc/selinux/config centoska:7.4
docker network connect --ip 192.168.100.222 frontend centoska74
docker start centoska74

## For testing
docker network create --driver=bridge --subnet=10.48.80.0/24 us
docker network create --driver=bridge --subnet=192.168.100.0/24 is
## halb 0
docker -D create -it --rm --name centoska74_0 --privileged --network=us --ip 10.48.80.30 -p 38080:80 -v $(pwd)/keepalived.conf.master:/etc/keepalived/keepalived.conf -v $(pwd)/sysctl.conf:/etc/sysctl.conf -v $(pwd)/ipvsadm_master:/etc/sysconfig/ipvsadm -v $(pwd)/config:/etc/selinux/config centoska:7.4
docker network connect --ip 192.168.100.130 is centoska74_0
docker start centoska74_0
## halb 1 
docker -D create -it --rm --name centoska74_1 --privileged --network=us --ip 10.48.80.31 -p 38081:80 -v $(pwd)/keepalived.conf.backup:/etc/keepalived/keepalived.conf -v $(pwd)/sysctl.conf:/etc/sysctl.conf -v $(pwd)/ipvsadm_backup:/etc/sysconfig/ipvsadm -v $(pwd)/config:/etc/selinux/config centoska:7.4
docker network connect --ip 192.168.100.131 is centoska74_1
docker start centoska74_1
