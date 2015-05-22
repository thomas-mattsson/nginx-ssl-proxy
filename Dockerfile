# nginx-ssl-proxy
#
# VERSION   0.0.1

FROM nginx

MAINTAINER Evan Brown <evanbrown@google.com>

RUN rm /etc/nginx/conf.d/*.conf

WORKDIR /usr/src

ADD start.sh /usr/src/
ADD nginx/nginx.conf /etc/nginx/
ADD nginx/proxy*.conf /usr/src/

ENTRYPOINT ./start.sh
