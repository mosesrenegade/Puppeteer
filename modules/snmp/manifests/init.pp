class snmp{

  package { "net-snmp": }

  file { "/etc/snmp/snmpd.conf":
    content 	=> template("snmp/snmpd.conf.erb"),
    notify 	=> Service["snmpd"],
    require	=> [ Package["net-snmp"] ],
  }

  service { "snmpd":
    enable	=> true,
    ensure	=> running,
    require	=> Package["net-snmp"],
  }

}
