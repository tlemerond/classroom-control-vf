class memcached {
package { 'memcached':
   ensure => present
}

service { 'memcached':
   enable => true,
   ensure => running,
   subscribe => File['/etc/sysconfig/memcached']
}

file { '/etc/sysconfig/memcached':
   ensure => present,
   owner => 'root',
   group => 'root',
   mode => '0644',
   source => 'puppet:///modules/site/memcached',
   require => Package['memcached']
}
}
