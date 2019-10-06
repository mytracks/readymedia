FROM ubuntu:16.04
LABEL MAINTAINER "Dirk Stichling <mytracks@mytracks4mac.com>"

RUN apt-get update && apt-get install -y software-properties-common
RUN apt-get install -y minidlna

COPY minidlna.conf /etc/minidlna.conf

CMD /usr/sbin/minidlnad -d -R
