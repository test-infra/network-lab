#!/bin/sh

ip addr add 10.234.78.68/27 dev eth0
ip addr add 10.234.78.100/27 dev eth1
ip addr add 172.31.0.2/30 dev eth3

. ./quagga.sh
. ./keepalived.sh
. ./pimd.sh

exec /bin/bash