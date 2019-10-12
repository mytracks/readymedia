FROM ubuntu:16.04
LABEL MAINTAINER "Dirk Stichling <mytracks@mytracks4mac.com>"

RUN apt-get update && apt-get install -y \
        software-properties-common \
        libexif12 \
        libjpeg62 \
        libid3tag0 \
        libflac8 \
        libvorbisfile3 \
        sqlite3 \
        libavformat53 \
        libuuid1 \
        curl \
        && rm -rf /var/lib/apt/lists/*

RUN cd /tmp \
    && curl -L -O https://sourceforge.net/projects/minidlna/files/minidlna/1.2.1/minidlna-1.2.1.tar.gz \
    && tar zxvf minidlna-1.2.1.tar.gz \
    && ./configure \
    && make \
    && make install \
    && rm -rf minidlna-1.2.1 \
    && rm minidlna-1.2.1.tar.gz

COPY minidlna.conf /etc/minidlna.conf

CMD /usr/sbin/minidlnad -d -R
