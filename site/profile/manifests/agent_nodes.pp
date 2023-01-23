class profile::agent_nodes {
  include dockeragent
  include chocolatey
  dockeragent::node { 'web.puppet.vm': }
  dockeragent::node { 'db.puppet.vm': }
  dockeragent::node { 'minetest.puppet.vm': }
  dockeragent::node { 'taiwo.puppet.vm': }
  dockeragent::node { 'chocolate.puppet.vm': }
  host { 'web.puppet.vm':
    ensure => present,
    ip => '172.18.0.2',
  }
  host { 'db.puppet.vm':
    ensure => present,
    ip => '172.18.0.3',
  }
}
