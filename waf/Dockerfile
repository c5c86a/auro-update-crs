FROM owasp/modsecurity:v2-ubuntu-apache

RUN apt-get update && \
    apt-get -y install python git ca-certificates iproute2

ENV PARANOIA=1
ENV ANOMALYIN=5
ENV ANOMALYOUT=4
ENV PORT=8001
ENV BACKEND=http://jira:8080

COPY httpd.conf /etc/apache2/conf/httpd.conf
COPY 403.html /var/www/html/error/
COPY CRS-logo-full_size-512x257.png /var/www/html/error/
COPY docker-entrypoint.sh /

RUN mkdir -p /var/log/apache2 \
      && touch /var/log/apache2/error.log \
      && touch /var/log/apache2/access.log \
      && ln -sf /dev/stdout /var/log/apache2/access.log \
	    && ln -sf /dev/stderr /var/log/apache2/error.log 

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["apachectl", "-f", "/etc/apache2/conf/httpd.conf", "-D", "FOREGROUND"]

EXPOSE 80
