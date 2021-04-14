class profile::ssh_server {
  package { 'openssh-server':
    ensure => present,
  }->

  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }->

  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCjCUUyCFg51xy6qsIP2a5IetK5r30KUUmrzHVORtYkJKRFgBfOEEM42zt1HO8ytl9+BHDe2k/cNO5hKdv+yLfzoZa0sgDNn3gfqmg5Op3OePnqLFDTUJ49uzUI3V8cPX0j/+5c4pNf8WAD8+E4v2XUFuH2bP00TcPAW2pigdwsG/riIougV3Z+XcJzpDag8KnHBeoyBOm0LDM4BSvh+0rLN0mnK+GI263u7jwzXBso+PdmO0eiRQcqZy+WKqtmlbBpcalmA+DmhsImBexQq5WiRDrhmtzDgsmC7MBXOHead4buj/XfwfBpFDM8pSQPGxZzmaZsH6Ax/WebmXgGtpoj',
  }

}
