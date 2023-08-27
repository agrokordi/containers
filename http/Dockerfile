FROM nginx

ENV DEBIAN_FRONTEND noninteractive

RUN set -xe \
 && rm -r /etc/nginx \
 && mkdir -p /app/public

COPY config /etc/nginx

ENTRYPOINT ["/usr/sbin/nginx"]
CMD ["-p", "/etc/nginx", "-c", "/etc/nginx/web.conf"]
