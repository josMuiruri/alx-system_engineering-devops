# Modify client config file
$file = '/tmp/school'

#create doc root directory
file { '/tmp/school':
   ensure => file,
   mode => '0744',
   owner => 'www-data',
   group => 'www-data',
   content => "I love Puppet\n",
}
