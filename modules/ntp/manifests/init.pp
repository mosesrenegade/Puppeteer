class ntp {

  package { "ntp": }

  file { "/etc/ntp.conf":
    mode 	=> "644",
    content	=> template("ntp/client-ntp.conf.erb"),
    notify	=> Service["ntpd"],
    require	=> Package["ntp"],
  }

  service { "ntpd":
    ensure 	=> running,
    enable 	=> true,
    require 	=> Package["ntp"],
  }

}
