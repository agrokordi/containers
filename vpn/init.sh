#!/bin/sh

mkdir -p /dev/net
mknod /dev/net/tun c 10 200
chmod 600 /dev/net/tun

exec /usr/sbin/openvpn --config /etc/openvpn/client.ovpn
