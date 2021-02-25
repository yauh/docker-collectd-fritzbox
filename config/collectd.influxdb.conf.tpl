FQDNLookup true
Interval 10
Timeout 2
ReadThreads 5

LoadPlugin python
LoadPlugin network
LoadPlugin logfile

<Plugin network>
  Server "{{ INFLUXDB_HOST }}" "{{ INFLUXDB_COLLECTD_PORT | default("25826") }}"
</Plugin>

<Plugin python>
  Import "fritzcollectd"

  <Module fritzcollectd>
    Address "{{ FRITZBOX_IP | default("fritz.box") }}"
    Port 49000
    User "{{ FRITZBOX_USERNAME | default("collectd") }}"
    Password "{{ FRITZBOX_PASSWORD }}"
    Hostname "{{ FRITZBOX_HOSTNAME | default("FritzBox") }}"
    Instance "1"
    Verbose "False"
  </Module>
</Plugin>

<Plugin logfile>
  LogLevel {{ COLLECTD_LOGLEVEL | default("notice") }}
  File {{ COLLECTD_LOGFILE | default("stdout") }}
</Plugin>
