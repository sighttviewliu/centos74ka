#CentOS with keepalived & LVS 
FROM centos:7.4

#RUN yum -y install net-tools redhat-lsb\
#    openssl openssl-devel popt popt-devel\
#    libnl-devel kenel-devel keepalived ipvsadm  

#COPY docker-entrypoint.sh /usr/local/bin/
#RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh \
#    && chmod 777 /usr/local/bin/docker-entrypoint.sh /entrypoint.sh

#ENTRYPOINT [ "/entrypoint.sh" ]

#CMD [ "/bin/bash" ]
CMD [ "sh", "-c", "/bin/bash" ] 
