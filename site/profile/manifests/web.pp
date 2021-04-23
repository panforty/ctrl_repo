class profile::web {
  include nginx

  nginx::resource::server { 'web.puppet.vm':
    listen_port => 80,
    proxy       => 'http://localhost:8080',
  }

  class { 'apache':
    default_vhost => true,
  }

  apache::vhost { 'local':
    default_vhost => true,
    ip      => '127.0.0.1',
    port    => '8080',
    docroot => '/var/www/local',
    ip_based => true,
  }

}
