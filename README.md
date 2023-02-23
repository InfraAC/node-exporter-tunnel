# node-exporter-tunnel

* [github](https://github.com/InfraAC/node-exporter-tunnel)
* [dockerhub](https://hub.docker.com/r/infraac/node-exporter-tunnel)

## Application Scenario
    Prometheus server pull indicators of nodes that do not have public IP in the cluster through the tunnel

## Quick start
    docker run -it -e TUNNEL_SERVER=192.168.0.52:9312 -e TUNNEL_FORWARD=11199 -e TUNNEL_PWD=xxx infraac/node-exporter-tunnel:1.0.1
