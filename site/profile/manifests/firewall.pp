class profile::firewall {
  
#  set firewall iptables
  
#  iptables::rule { 'always allow communication on localhost interface':
#    chain   => 'NIC_FILTER',
#    command => '-i lo -j ACCEPT',
#  }
#
#  # we want to respond to pings
#  iptables::rule { 'allow ICMP protocol all the time':
#    chain   => 'PROTO_FILTER',
#    command => '-p icmp -j ACCEPT',
#  }

  file{
    ensure  => file,
    content => template('.erb'),
  }

}
