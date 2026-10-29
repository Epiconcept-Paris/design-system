FROM mariadb:lts

ENV TZ=Europe/Paris
RUN apt-get update \
    && apt-get install -y tzdata \
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone

COPY confdev.cnf /etc/mysql/conf.d/confdev.cnf
ADD *.sql /docker-entrypoint-initdb.d/

RUN mkdir -p /var/log/mysql \
	&& touch /var/log/mysql/error.log /var/log/mysql/mysql.log /var/log/mysql/mysql-slow.log \
	&& chown -R mysql:mysql /var/log/mysql \
	&& chmod 0755 /var/log/mysql \
	&& chmod 0644 /var/log/mysql/error.log /var/log/mysql/mysql.log /var/log/mysql/mysql-slow.log
