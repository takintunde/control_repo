class mymodule::chocolatey {
  package { 'notepadplusplus.settings':
  ensure   => '1.0.0.20141029',
  provider => 'chocolatey',
  source   => 'http://internal/odata/repo',
  }
}
