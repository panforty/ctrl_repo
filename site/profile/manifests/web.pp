class profile::web (
  $web_dir => '/srv/www/local',
){
  include nginx

  nginx::resource::server { 'web.puppet.vm':
    listen_port => 80,
    proxy       => 'http://localhost:8080',
  }

  class { 'apache':
    default_vhost => false,
  }

  apache::vhost { 'local':
    default_vhost => true,
    ip      => '127.0.0.1',
    port    => '8080',
    docroot => "${web_dir}",
    ip_based => true,
    suphp_engine => 'off',
  }

  file { "${web_dir}":
    ensure => directory,
  }

  file { "${web_dir}/index.html":
    ensure => file,
    content => "<html><body><h1>Ahoj</h1></body></html>",
  }
}
