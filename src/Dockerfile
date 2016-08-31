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

ENV PASV_MIN_PORT="7000"
ENV PASV_MAX_PORT="7050"

ENTRYPOINT ["/entrypoint"]
