# automated puppet fix(to find out why Apache is returing a 500 error)

exec { 'Fix wordpress site':
   command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
   path    => '/usr/local/bin/:/bin/'
}
