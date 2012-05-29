# Class: hosts
#
# This module manages /etc/hosts
#
# Requires:
#   class generic which provides $pop
#
class hosts {

    file { "/etc/hosts":
      owner     => root,
      group     => root,
      mode      => '0644',
      content   => template ("hosts/hosts.erb"),
      }
}