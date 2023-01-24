class profile::chocolatey_package {
  package { 'Java':
    ensure   => 'latest',
    provider => chocolatey,
  }
}
