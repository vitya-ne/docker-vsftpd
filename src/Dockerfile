FROM debian:jessie
MAINTAINER megbeguk

RUN apt-get update && \
        apt-get install -y --no-install-recommends \
            vsftpd \
            db5.3-util && \
        apt-get clean && \
        rm -rf /var/lib/apt/lists/* && \
        cp /etc/vsftpd.conf /etc/vsftpd.original

COPY files /

EXPOSE 20-21 7000-7100

ENTRYPOINT ["/entrypoint"]
