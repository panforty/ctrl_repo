node default {
  environment => 'prod'
  
  file { '/root/README': 
    ensure => file,
  }
}
