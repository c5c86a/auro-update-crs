FROM docker:dind

COPY entrypoint.sh /
COPY cron.sh /

RUN chmod +x /entrypoint.sh
RUN chmod +x /cron.sh

WORKDIR /
ENTRYPOINT ["sh", "entrypoint.sh"]
