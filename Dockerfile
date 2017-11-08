FROM mongo:3.4
MAINTAINER Artem Kurbatov <mail@tenorok.ru>

RUN apt-get update && \
    apt-get install -y cron ftp --no-install-recommends && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

ADD backup.sh /backup.sh
RUN chmod +x /backup.sh

ADD start.sh /start.sh
RUN chmod +x /start.sh

ADD push.sh /

VOLUME /backup

ENTRYPOINT ["/start.sh"]
