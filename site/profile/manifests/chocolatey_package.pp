class profile::chocolatey {
  package { 'mypackage':
    ensure   => 'latest',
    provider => chocolatey,
  }
}
