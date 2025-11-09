# Dockerfile for ubuntu os

FROM ubuntu

WORKDIR /app

RUN apt update -y

RUN apt install apache2 -y

COPY index.html  /var/www/html

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]

#=========================================

# Dockerfile for amazon linux os

#FROM amazonlinux

#WORKDIR /app

#RUN yum update -y

#RUN yum install httpd -y

#COPY .  /var/www/html

#EXPOSE 80

#CMD ["apachectl", "-D", "FOREGROUND"]