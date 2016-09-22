class { 
   package { 'nginx':
       ensure => present,
   }

   service { 'nginx':
       ensure => running,
       enable => true,
       require => File['/etc/nginx/nginx.conf','/etc/nginx/conf.d/default.conf'],
   }


   file { '/etc/nginx/nginx.conf':
       source => 'puppet:///modules/nginx/nginx/nxginx.conf', 
       owner => 'root',
       group => 'root',
       mode => '0444',
   }

   file { '/etc/nginx/conf.d/default.conf':
       source => 'puppet:///modules/nginx/conf.d/default.conf',
       owner => 'root',
       group => 'root',
       mode => '0444',
   }

}   
