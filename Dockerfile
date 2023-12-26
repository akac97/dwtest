FROM alpine:latest

RUN apk add nginx \
&& touch /var/www/index.html

ADD nginx.conf /etc/nginx/nginx.conf
ADD nginx.default /etc/nginx/conf.d/default.conf

ENTRYPOINT nginx
