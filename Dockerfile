FROM mysql:5.7

RUN apt-get update -qq && apt-get install -y locales -qq && locale-gen ja_JP.UTF-8 ja_JP && dpkg-reconfigure locales && dpkg-reconfigure locales && locale-gen C.UTF-8 && /usr/sbin/update-locale LANG=C.UTF-8

COPY mysqld_charset.cnf /etc/mysql/conf.d/mysqld_charset.cnf
