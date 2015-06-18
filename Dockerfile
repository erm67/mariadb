FROM fedora:22
MAINTAINER Ermanno Scaglione <erm67@yahoo.it>
RUN dnf -y update && dnf -y install mariadb-server && dnf clean all
ADD mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf
USER mysql
CMD ["/usr/bin/mysqld_safe", "--basedir=/usr", "--datadir='/var/lib/mysql'"]
EXPOSE 3306
