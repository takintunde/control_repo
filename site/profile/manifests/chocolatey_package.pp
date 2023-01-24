class profile::chocolatey {
  package { 'git':
    ensure   => 'latest',
    provider => chocolatey,
  }
}
