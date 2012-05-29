class base {
  include sudo, ssh, site::users, site::groups
}

class perf {
  include snmp, ntp
}

node 'node' {
  include perf
}

