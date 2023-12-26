FROM ubuntu:latest
LABEL "Author"="Luis"
LABEL "Project"="finance"
#Variable para q no sea interactiva la consola
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install apache2 git -y
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
RUN service apache2 restart
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
WORKDIR /var/www/html
VOLUME /var/log/apache2
ADD finance.tar.gz /var/www/html
