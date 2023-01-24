class profile::chocolatey_package {
  package { 'git':
    ensure   => 'latest',
    provider => chocolatey,
  }
}
