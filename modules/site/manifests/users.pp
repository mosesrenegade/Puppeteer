class site::users {
  Class[site::groups] -> Class[site::users]

  User{
    password_min_age	=> '-1',
    password_max_age	=> '-1',
    shell		=> '/bin/bash',
  }
  
  # This the standard user template. The password should be the encrypted string. 
  #
  #user {'user':
  #  ensure		=> 'present',
  #  comment		=> 'User Name',
  #  home		=> $operatingsystem? {
  #    'windows'		=> undef,
  #    default		=> '/home/user',
  #  },
  #  managehome		=> true,
  #  shell               => $operatingsystem? {
  #    'windows'         => undef,
  #    default		=> '/bin/zsh',
  #  },
  #  groups		=> $operatingsystem? {
  #    'windows'		=> undef,
  #    'redhat'		=> ['wheel'],
  #    default		=> undef,
  #  },
  #  password		=> '',        
  #}


  # Some notes. The directory .ssh needs to be created for the key. I haven't gotten this to work yet. I need to run this a few time to make it work...Disappointing.
  # 
  # 
  #file { [ '/home/user' , '/home/user/.ssh' ]:
  #  ensure		=> 'directory',
  #  owner		=> 'user',
  #  group		=> 'user',
  #  mode		=> '0700',
  #}

  # This is for the SSH Key, Note that the SSH-DSS portion of the key is placed in its own definition. It is not in the key portion.
  #
  #ssh_authorized_key { 'user':
  #  ensure 		=> present,
  #  type		=> 'ssh-dss',
  #  user		=> 'user',
  #  key			=> '',
  # }

}
