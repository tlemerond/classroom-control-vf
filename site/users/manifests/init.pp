class users {
     user { 'fundamentals':
       ensure => present,
       gid => '100',
       managehome => 'true',
       home => '/home/fundamentals'
       }
     user { 'cartman':
       ensure => present,
       gid => '100',
       managehome => 'true',
       home => '/home/cartman'
       }
     user { 'finch':
       ensure => present,
       gid => '100',
       home => '/home/finch',
       managehome => 'true'
       }
}
