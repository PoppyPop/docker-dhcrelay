#!/bin/sh
#

DHCRELAY_OPTS=""

if [ ! -z ${DHCRELAY_IFACE+x} ]; then
  DHCRELAY_OPTS="${DHCRELAY_OPTS} -i ${DHCRELAY_IFACE}"
fi

if [ ! -z ${DHCRELAY_CIRCUIT+x} ]; then
  DHCRELAY_OPTS="${DHCRELAY_OPTS} -a"
fi

if [ ! -z ${DHCRELAY_DROP+x} ]; then
  DHCRELAY_OPTS="${DHCRELAY_OPTS} -D"
fi

/usr/sbin/dhcrelay -d ${DHCRELAY_OPTS} ${DHCRELAY_SERVERS}
