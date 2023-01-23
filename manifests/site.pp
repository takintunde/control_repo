node default {
  file { '/root/README':
    ensure => file,
    content => 'This is a readme',
    owner   => 'root',
  }
}
node 'master.puppet.vm' {
  include role::master_server
  file {'/root/README':
    ensure => file,
    content => $fqdn,
    owner => 'root',
  }
}
node 'taiwo.puppet.vm' {
include role::chocolatey_server
}
node 'minetest.puppet.vm' {
  include role::minecraft_server
}
node /^web/ { 
  include role::app_server
}
node /^db/ {
  include role::db_server
}
