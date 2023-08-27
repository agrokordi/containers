FROM nginx

ENV DEBIAN_FRONTEND noninteractive

RUN set -xe \
 && rm -r /etc/nginx \
 && mkdir -p /app/public \
 && touch /app/public/index.php \
 && chmod -R u=rwX,g=rX,o=rX /app

COPY config /etc/nginx

ENTRYPOINT ["/usr/sbin/nginx"]
CMD ["-p", "/etc/nginx", "-c", "/etc/nginx/web.conf"]
