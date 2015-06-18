FROM fedora:22
MAINTAINER Ermanno Scaglione <erm67@yahoo.it>
RUN dnf -y update && dnf -y install mariadb-server && dnf clean all
ADD mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf
ADD scripts /scripts
RUN chmod 755 /scripts/*
VOLUME=["/var/lib/mysql/mysql.sock"]
EXPOSE 3306
CMD ["/bin/bash", "/scripts/start.sh"]
