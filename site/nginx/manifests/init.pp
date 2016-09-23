class nginx {
  package { 'nginx':
    ensure => present,
}
  File {
    owner => 'root',
    group => 'root',
  }

  file { '/var/www/index.html':
    ensure => file,
    source => 'puppet:///modules/nginx/index.html',
    mode => '0664',
  }
  file { '/etc/nginx/nginx.conf':
    ensure => file,
    source => 'puppet:///modules/nginx/nginx.conf',
    require => Package['nginx'],
    notify => Service['nginx'],
    mode => '0664',
  }
  file { ['/etc/nginx/conf.d', '/var/www'] :
    ensure => directory,
    mode => '0775',
  }
  file { '/etc/nginx/conf.d/default.conf':
    ensure => file,
    mode => '0664',
    source => 'puppet:///modules/nginx/default.conf',
    require => Package['nginx'],
    notify => Service['nginx'],
  }
  service { 'nginx':
    ensure => running,
    enable => true,
  }
}
