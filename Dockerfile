FROM ubuntu:18.04

RUN apt-get update && \
    apt install -y tacacs+ && \
    apt-get clean

EXPOSE 49
ENV DEBUGLEVEL=32

ENTRYPOINT /usr/sbin/tac_plus -G -t -d ${DEBUGLEVEL} -C /etc/tacacs+/tac_plus.conf
