FROM alpine:3

RUN set -xe \
 && apk --no-cache add openvpn \
 && touch /etc/openvpn/client.ovpn \
 && chmod +x /init.sh

ENTRYPOINT ["/init.sh"]
