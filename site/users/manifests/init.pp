class users {
     user { 'fundamentals':
       ensure => present
       }
     user { 'cartman':
       ensure => present,
       gid => '10',
       uid => '5000'
       }
     user { 'finch':
       ensure => present,
       gid => '10',
       uid => '5001'
       }
}
