class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCxSAMiRbnZ9l2Fn+EXSxxJw9alBxulD7mdaS8YLJM4qNNIB/j4Q5mZ8iraj2U93VtpWxJ/tYV2pEXTmMJf8i6eLn7U1amZebObj6VK3k2Vy9S6KfKd81+trBkhMZD2jAL63fi85V6kP0WMtOMIffself1Qi0AdPcpe7/rRyOCBFU+hu8FVAf2Lzf5KgU4eWPw54bJ9mC43x4cpg7sqBOlKV2z83Cay4sEBjshb96MsKnZAvQP9iVCMJAfO8qCqEIn6C6H9oysjTu5l5wfUXBiEhP/TT0G84eSqgdni4v3CLyn0MEnrQ2t1NlQtXnKQonpcpT+0ZlCJStnxcTuOQX61',
	}  
}
