FROM ubuntu:latest
LABEL "AUTHOR"="HARSH"
LABEL "PROJECT"="nano"
ENV DEBIAN_FRONTEND =noninteractive
RUN apt update && apt install git -y
RUN apt install apache2 -y
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
EXPOSE 80
WORKDIR /var/www/html
VOLUME /var/log/apache2
ADD nano.tar.gz /var/www/html
