# mariadb
a new database will be installed if datadir is empty.
Define the root password using MYSQL_ROOT_PASSWORD
or define MYSQL_ALLOW_EMPTY_PASSWORD true
To create a database and a user define:
MYSQL_USER
MYSQL_PASSWORD
MYSQL_DATABASE
The config provided is based on my-small.cnf and has a low memory footprint still working well with my single user owncloud instance.
The socket is created in a VOLUME ["/var/run/mariadb/"] and this way is possible to access the database both from the docker host or from other containers launched with --volumes-from erm67/mariadb.
To use TCP/IP networking instead comment skip-networking in the .cnf file, port 3306 is exposed by default.
