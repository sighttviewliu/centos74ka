#CentOS with keepalived & LVS 
FROM centos:7.4

RUN yum -y install keepalived ipvsadm  

COPY gosu /usr/local/bin/
RUN set -x \
    && chmod +x /usr/local/bin/gosu \
    && gosu nobody true

COPY docker-entrypoint.sh /usr/local/bin/
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh \
    && chmod 777 /usr/local/bin/docker-entrypoint.sh /entrypoint.sh

#ENTRYPOINT [ "sh", "-c", "/entrypoint.sh" ]
#CMD [ "sh", "-c", "/bin/bash" ]

ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "/bin/bash" ]
