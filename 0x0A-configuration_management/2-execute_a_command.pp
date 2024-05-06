# $whereis pkill
# pkill: /usr/bin/pkill

exec { 'killmenow':
   # location of pkill in ubuntu distros
   path => '/usr/bin/',
   command => 'pkill -f killmenow'
}
