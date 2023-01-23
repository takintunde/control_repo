class chocolatey_package {
  package { 'git':
    ensure   => 'latest',
    provider => chocolatey,
    }
  }
