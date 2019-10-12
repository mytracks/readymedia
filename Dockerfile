FROM alpine:3.10
LABEL MAINTAINER "Dirk Stichling <mytracks@mytracks4mac.com>"

RUN apk add --no-cache minidlna

ENV FRIENDLY_NAME "My ReadyMedia Server"
ENV TCP_PORT "8200"
ENV SERIAL "1234567890"

COPY minidlna.conf /etc/minidlna.conf
COPY start.sh /

CMD /start.sh
