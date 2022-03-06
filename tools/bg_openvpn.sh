#!/bin/sh

OVPN=${1:-client.ovpn}

exec nohup openvpn ${OVPN} > debug_vpn.log 2>&1 &
