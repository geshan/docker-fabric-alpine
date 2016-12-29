FROM alpine:3.4

MAINTAINER Geshan Manandhar (http://geshan.com.np)

RUN apk --update add curl &&\
    apk add fabric --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted &&\
    rm /var/cache/apk/*

WORKDIR /app

VOLUME /app

