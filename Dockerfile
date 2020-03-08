FROM debian:buster
ARG ARCHIVE=monero-linux-x64-v0.15.0.1.tar.bz2

COPY $ARCHIVE /tmp
RUN apt-get update \
 && apt-get install -y bzip2 libpcsclite1 \
 && apt-get clean \
 && rm -r /var/lib/apt \
 && useradd -ms /bin/bash monero \
 && tar -C /usr/bin --strip-components 1 -xvf /tmp/$ARCHIVE


VOLUME /home/monero
EXPOSE 18080

USER monero
CMD /usr/bin/monerod --non-interactive
