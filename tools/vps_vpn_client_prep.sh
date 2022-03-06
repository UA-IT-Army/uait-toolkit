#!/bin/sh -x

# https://gist.github.com/Shourai/1088f78b5e3696190a8ce6a6045c477b
GATEWAY_IF=${GATEWAY_IF:-"eth0"}
GATEWAY_IP=${GATEWAY_IP:-$(ip route show | awk '/^default/ { print $3;}')}
FWMARK=${FWMARK:-"65"}
IP_RULE_TABLE=${IP_RULE_TABLE:-"novpn"}
IP_RULE_TABLE_NUM=${IP_RULE_TABLE_NUM:-"201"}
RT_TABLES=${RT_TABLES:-/etc/iproute2/rt_tables}

[ -z "${GATEWAY_IP}" ] && exit
table_str="${IP_RULE_TABLE_NUM} ${IP_RULE_TABLE}"
grep -qF ${table_str} ${RT_TABLES} || echo "${table_str}" >> ${RT_TABLES}
ip rule show | grep fwmark && exit
ip rule add fwmark ${FWMARK} table ${IP_RULE_TABLE}
ip route add default via ${GATEWAY_IP} dev ${GATEWAY_IF} table ${IP_RULE_TABLE}
ip route flush cache
iptables -t mangle -A OUTPUT -p tcp --sport 22 -j MARK --set-mark ${FWMARK}
[ -n "${TUNNEL_IF}" ] \
    && iptables -A INPUT -i ${TUNNEL_IF} -p tcp -m tcp --dport 22 -j DROP
