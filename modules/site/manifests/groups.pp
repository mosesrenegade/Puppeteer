# Example group
#
class site::groups{
  Group { ensure => present, }
  group {'admin' :
    gid		=> '3000',
  }
}
