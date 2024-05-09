# configurating ssh_config using Puppet
# configuration to use the private key ~/.ssh/school

include stdlib

file_line {'Declare identity file':
   path => '/etc/ssh/ssh_config',
   line => '	IdentifyFile ~/.ssh/school',
   match => '^#?(\s*IdentityFile\s+~/.ssh/school)',
   after => '# This is the ssh client system-wide configuration file. See',
}

# configuration of ssh client to refuse to authenticate using a password
file_line { 'Turn off passwd auth':
   path	=> '/etc/ssh/ssh_config',
   line => '	PasswordAuthentication no',
   match => '^#?(\s*PasswordAuthentication\s+yes)',
   after => '# This is the ssh client system-wide configuration file. See',
}
