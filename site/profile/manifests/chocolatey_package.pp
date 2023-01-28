class profile::chocolate_server { 
  package { [ 'Java', 'nginx', 'apache-httpd']:
    ensure => installed,
    provider => chocolatey,
  #$dockercompose_version,          # this is a way to pass a variable
 }
 }
