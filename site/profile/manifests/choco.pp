class mymodule::chocolatey {
  package { 'git':
    ensure   => 'latest',
    provider => chocolatey,
    }
  }
