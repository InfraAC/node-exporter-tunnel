#!/bin/sh

nohup /bin/node_exporter >> /tmp/node_exporter_tunnel.log 2>&1 &
nohup /bin/chisel client -v --auth=admin:$TUNNEL_PWD $TUNNEL_SERVER R:$TUNNEL_FORWARD:127.0.0.1:9100 >> /tmp/node_exporter_tunnel.log 2>&1 &
tail -f /tmp/node_exporter_tunnel.log
# while true;do echo 'hello';sleep 3s;done