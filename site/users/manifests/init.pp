class users {
     user { 'fundamentals':
       ensure => present
       uid => '5002',
       gid => '100',
       home => '/home/fundamentals'
       }
     user { 'cartman':
       ensure => present,
       gid => '100',
       uid => '5000'
       home => '/home/cartman'
       }
     user { 'finch':
       ensure => present,
       gid => '100',
       uid => '5001'
       home => 'home/finch'
       }
}
