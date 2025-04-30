#!/bin/sh

mkdir -p /dev/net
mknod /dev/net/tun c 10 200
chmod 600 /dev/net/tun

iptables -t nat -A PREROUTING -p tcp --dport 31433 -j DNAT --to-destination 10.21.0.205:1433
iptables -t nat -A PREROUTING -p tcp --dport 31434 -j DNAT --to-destination 10.21.0.222:1433
iptables -t nat -A PREROUTING -p tcp --dport 31435 -j DNAT --to-destination 10.21.0.222:1433
iptables -t nat -A POSTROUTING -p tcp -o tun0 -j MASQUERADE --to-ports 11000-21000

exec /usr/sbin/openvpn --config /etc/openvpn/client.ovpn
