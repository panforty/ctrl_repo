class role::master_server {
  include profile::base
#  include profile::firewall
  include profile::agent_nodes
}
