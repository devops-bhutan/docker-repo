FROM centos:latest
MAINTAINER Nidup
RUN yum -y install httpd 
COPY . /var/www/html/
EXPOSE 80

ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]