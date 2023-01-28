class role::chocolatey_server {
  include profile::agent_nodes
  include profile::chocolatey_packages
}
