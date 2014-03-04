FROM ubuntu:12.04
MAINTAINER Jose Carbonell "robe5.agf@gmail.com"
 
RUN apt-get update -qq
RUN apt-get install -y mysql-server-5.5

RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD my.cnf /etc/mysql/conf.d/my.cnf
RUN chmod 644 /etc/mysql/conf.d/my.cnf
ADD run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run

VOLUME ["/var/lib/mysql"]

EXPOSE 3306

CMD ["/usr/local/bin/run"]