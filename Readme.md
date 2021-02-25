# docker-collectd-fritzbox

A docker image to get data from a fritzbox and write it into an InfluxDB

## Environment Variables

Configuration takes place by using environment variables:

- `INFLUXDB_HOST` Host address for InfluxDB
- `INFLUXDB_COLLECTD_PORT` Port address for Graphite API in InfluxDB (defaults to 25826)
- `FRITZBOX_IP` Local address for the fritzbox (defaults to fritz.box)
- `FRITZBOX_USERNAME` Username for collectd user on FritzBox (defaults to collectd)
- `FRITZBOX_PASSWORD` Password for collectd user on FritzBox
- `FRITZBOX_HOSTNAME` Hostname to display for FritzBox (defaults to FritzBox)

## Caveats

If you are running InfluxDB as a Docker container ensure that the collectd API is enabled by on default port 25826 and setting the environment variable. See [https://github.com/mwaeckerlin/collectd](https://github.com/mwaeckerlin/collectd).
