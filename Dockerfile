FROM ubuntu:24.04
RUN apt-get update && apt-get install -y apache2
RUN date -u > /var/www/html/buildtime.txt
COPY html/ /var/www/html/
RUN date -u > /var/www/html/buildtime.txt
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
