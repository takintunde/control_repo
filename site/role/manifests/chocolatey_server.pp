class role::chocolatey_server.pp {
  include profile::agent_nodes
  include profile::choco
}
