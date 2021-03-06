class memcached {
package { 'memcached':
   ensure => present,
}

service { 'memcached':
   enable => true,
   ensure => running,
   subscribe => File['/etc/sysconfig/memcached'],
}

file { '/etc/sysconfig/memcached':
   ensure => file,
   owner => 'root',
   group => 'root',
   mode => '0644',
   source => 'puppet:///modules/memcached/memcached',
   require => Package['memcached'],
}
}
