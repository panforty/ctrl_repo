class profile::web {
  include nginx

  nginx::resource::server { 'web.puppet.vm':
    listen_port => 80,
    proxy       => 'http://localhost:8080',
  }

  apache::vhost { 'local':
    ip      => '127.0.0.1',
    port    => '8080',
    docroot => '/var/www/local',
  }

}
