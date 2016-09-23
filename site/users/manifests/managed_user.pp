define users::managed_user (
   $group = $name,
   $homedir = /home/${name},
) {
   group { "group-${name}":
      ensure => present,
      name => $group,
    }
    
    file { "home-${name}":
       ensure => directory,
       path => $homedir,
       mode => '0750',
    }
    
    user { "user-${name}":
       ensure => present,
       name => $name,
    }
    
    file { "sshdir=${name}":
       ensure => directory,
       path => ${homedir}/.ssh,
       mode => '0700',
    }
}

