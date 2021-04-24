FROM alpine:3.13
LABEL maintainer "Levent SAGIROGLU <LSagiroglu@gmail.com>"
RUN apk update && apk add --no-cache ca-certificates bash && update-ca-certificates 
WORKDIR /tmp
RUN wget https://releases.rancher.com/cli/v0.6.14/rancher-linux-amd64-v0.6.14.tar.gz
RUN tar -xvf rancher-linux-amd64-v0.6.14.tar.gz --strip 2 -C /bin
RUN rm -r /tmp/*
VOLUME /shared
CMD ["/shared/backup.sh"]

