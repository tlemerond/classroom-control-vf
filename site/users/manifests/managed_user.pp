define users::manged_user (
   $name = $title,
   $group = $name,
   $homedir = /home/${name},
) {
   group { "group-${title}":
      ensure => present,
      name => $group,
    }
    
    file { "home-${title}":
       ensure => directory,
       path => $homedir,
       mode => '0750',
    }
    
    user { "user-${title}":
       ensure => present,
       name => $name,
    }
    
    file { "sshdir=${title}":
       ensure => directory,
       path => ${homedir}/.ssh,
       mode => '0700',
    }
}

